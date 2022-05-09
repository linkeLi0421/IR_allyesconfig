; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wcd938x.c_pt.bc'
source_filename = "../sound/soc/codecs/wcd938x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.component_master_ops = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.96, i32 }
%union.anon.96 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.wcd_mbhc_cb = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wcd_mbhc_field = type { i16, i8 }
%struct.wcd938x_mbhc_zdet_param = type { i16, i16, i16, i16, i16, i16 }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.wcd938x_priv = type { ptr, [2 x ptr], ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, %struct.wcd_mbhc_config, %struct.wcd_mbhc_intr, ptr, ptr, ptr, ptr, [4 x %struct.regulator_bulk_data], ptr, i32, [4 x i32], [4 x i32], i32, [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.wcd_mbhc_config = type { [8 x i32], [8 x i32], i32, i32, i8, ptr, i8, i8, i32, i8, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32 }
%struct.wcd_mbhc_intr = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.wcd938x_sdw_priv = type { ptr, %struct.sdw_stream_config, ptr, [5 x %struct.sdw_port_config], ptr, [15 x i8], i32, i32, i8, ptr, ptr }
%struct.sdw_stream_config = type { i32, i32, i32, i32, i32 }
%struct.sdw_port_config = type { i32, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.95, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.95 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.90, [128 x i8] }
%union.anon.90 = type { %union.anon.92 }
%union.anon.92 = type { [64 x i64] }
%struct.wcd938x_sdw_ch_info = type { i32, i32 }
%struct.snd_soc_dapm_widget = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i16, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }

@__initcall__kmod_snd_soc_wcd938x__307_4529_wcd938x_codec_driver_init6 = internal global ptr @wcd938x_codec_driver_init, section ".initcall6.init", align 4
@wcd938x_codec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @wcd938x_probe, ptr @wcd938x_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @wcd938x_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_wcd938x_codec_driver_exit = internal global ptr @wcd938x_codec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description308 = internal constant [49 x i8] c"snd_soc_wcd938x.description=WCD938X Codec driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [54 x i8] c"snd_soc_wcd938x.file=sound/soc/codecs/snd-soc-wcd938x\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [28 x i8] c"snd_soc_wcd938x.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wcd938x_codec\00", [18 x i8] zeroinitializer }, align 32
@wcd938x_dt_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcd9380-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,wcd9385-codec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@wcd938x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&wcd938x->micb_lock\00", [44 x i8] zeroinitializer }, align 32
@wcd938x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 4479, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Fail to obtain platform data\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wcd938x_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/soc/codecs/wcd938x.c\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wcd938x_probe._entry_ptr = internal global ptr @wcd938x_probe._entry, section ".printk_index", align 4
@wcd938x_comp_ops = internal constant { %struct.component_master_ops, [24 x i8] } { %struct.component_master_ops { ptr @wcd938x_bind, ptr @wcd938x_unbind }, [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reset-gpios\00", [20 x i8] zeroinitializer }, align 32
@wcd938x_populate_dt_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.4, i32 4210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to get reset gpio: err = %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wcd938x_populate_dt_data\00", [39 x i8] zeroinitializer }, align 32
@wcd938x_populate_dt_data._entry_ptr = internal global ptr @wcd938x_populate_dt_data._entry, section ".printk_index", align 4
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdd-rxtx\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"vdd-io\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdd-buck\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdd-mic-bias\00", [19 x i8] zeroinitializer }, align 32
@wcd938x_populate_dt_data._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.9, ptr @.str.4, i32 4221, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get supplies: err = %d\0A\00", [62 x i8] zeroinitializer }, align 32
@wcd938x_populate_dt_data._entry_ptr.16 = internal global ptr @wcd938x_populate_dt_data._entry.14, section ".printk_index", align 4
@wcd938x_populate_dt_data._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.4, i32 4227, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to enable supplies: err = %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wcd938x_populate_dt_data._entry_ptr.19 = internal global ptr @wcd938x_populate_dt_data._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom,micbias1-microvolt\00", [40 x i8] zeroinitializer }, align 32
@wcd938x_dt_parse_micbias_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 4181, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Micbias1 DT property not found\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"wcd938x_dt_parse_micbias_info\00", [34 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wcd938x_dt_parse_micbias_info._entry_ptr = internal global ptr @wcd938x_dt_parse_micbias_info._entry, section ".printk_index", align 4
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom,micbias2-microvolt\00", [40 x i8] zeroinitializer }, align 32
@wcd938x_dt_parse_micbias_info._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.4, i32 4187, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Micbias2 DT property not found\0A\00", [60 x i8] zeroinitializer }, align 32
@wcd938x_dt_parse_micbias_info._entry_ptr.27 = internal global ptr @wcd938x_dt_parse_micbias_info._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom,micbias3-microvolt\00", [40 x i8] zeroinitializer }, align 32
@wcd938x_dt_parse_micbias_info._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.4, i32 4193, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Micbias3 DT property not found\0A\00", [60 x i8] zeroinitializer }, align 32
@wcd938x_dt_parse_micbias_info._entry_ptr.31 = internal global ptr @wcd938x_dt_parse_micbias_info._entry.29, section ".printk_index", align 4
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"qcom,micbias4-microvolt\00", [40 x i8] zeroinitializer }, align 32
@wcd938x_dt_parse_micbias_info._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.22, ptr @.str.4, i32 4199, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: Micbias4 DT property not found\0A\00", [60 x i8] zeroinitializer }, align 32
@wcd938x_dt_parse_micbias_info._entry_ptr.35 = internal global ptr @wcd938x_dt_parse_micbias_info._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom,rx-device\00", [17 x i8] zeroinitializer }, align 32
@wcd938x_add_slave_components._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.4, i32 4443, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Rx-device node not defined\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wcd938x_add_slave_components\00", [35 x i8] zeroinitializer }, align 32
@wcd938x_add_slave_components._entry_ptr = internal global ptr @wcd938x_add_slave_components._entry, section ".printk_index", align 4
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"qcom,tx-device\00", [17 x i8] zeroinitializer }, align 32
@wcd938x_add_slave_components._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.38, ptr @.str.4, i32 4453, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Tx-device node not defined\0A\00", [32 x i8] zeroinitializer }, align 32
@wcd938x_add_slave_components._entry_ptr.42 = internal global ptr @wcd938x_add_slave_components._entry.40, section ".printk_index", align 4
@wcd938x_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.4, i32 4331, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Slave bind failed, ret = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wcd938x_bind\00", [19 x i8] zeroinitializer }, align 32
@wcd938x_bind._entry_ptr = internal global ptr @wcd938x_bind._entry, section ".printk_index", align 4
@wcd938x_bind._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.4, i32 4337, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"could not find slave with matching of node\0A\00", [52 x i8] zeroinitializer }, align 32
@wcd938x_bind._entry_ptr.47 = internal global ptr @wcd938x_bind._entry.45, section ".printk_index", align 4
@wcd938x_bind._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.4, i32 4345, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"could not find txslave with matching of node\0A\00", [50 x i8] zeroinitializer }, align 32
@wcd938x_bind._entry_ptr.50 = internal global ptr @wcd938x_bind._entry.48, section ".printk_index", align 4
@wcd938x_bind._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.4, i32 4352, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"could not get txslave with matching of dev\0A\00", [52 x i8] zeroinitializer }, align 32
@wcd938x_bind._entry_ptr.53 = internal global ptr @wcd938x_bind._entry.51, section ".printk_index", align 4
@wcd938x_bind._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.44, ptr @.str.4, i32 4360, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not devlink tx and rx\0A\00", [35 x i8] zeroinitializer }, align 32
@wcd938x_bind._entry_ptr.56 = internal global ptr @wcd938x_bind._entry.54, section ".printk_index", align 4
@wcd938x_bind._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.44, ptr @.str.4, i32 4366, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not devlink wcd and tx\0A\00", [34 x i8] zeroinitializer }, align 32
@wcd938x_bind._entry_ptr.59 = internal global ptr @wcd938x_bind._entry.57, section ".printk_index", align 4
@wcd938x_bind._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.44, ptr @.str.4, i32 4372, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"could not devlink wcd and rx\0A\00", [34 x i8] zeroinitializer }, align 32
@wcd938x_bind._entry_ptr.62 = internal global ptr @wcd938x_bind._entry.60, section ".printk_index", align 4
@wcd938x_bind._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@wcd938x_regmap_config = internal global { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.76, i32 32, i32 0, i32 0, i32 8, ptr @wcd938x_writeable_register, ptr @wcd938x_readable_register, ptr @wcd938x_volatile_register, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 13528, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wcd938x_defaults, i32 464, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 1, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"wcd938x:4376:(&wcd938x_regmap_config)->lock\00", [52 x i8] zeroinitializer }, align 32
@wcd938x_bind._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.44, ptr @.str.4, i32 4378, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: tx csr regmap not found\0A\00", [35 x i8] zeroinitializer }, align 32
@wcd938x_bind._entry_ptr.66 = internal global ptr @wcd938x_bind._entry.64, section ".printk_index", align 4
@wcd938x_bind._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.44, ptr @.str.4, i32 4384, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: IRQ init failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@wcd938x_bind._entry_ptr.69 = internal global ptr @wcd938x_bind._entry.67, section ".printk_index", align 4
@wcd938x_bind._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.44, ptr @.str.4, i32 4393, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: bad micbias pdata\0A\00", [41 x i8] zeroinitializer }, align 32
@wcd938x_bind._entry_ptr.72 = internal global ptr @wcd938x_bind._entry.70, section ".printk_index", align 4
@soc_codec_dev_wcd938x = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr @.str, ptr @wcd938x_snd_controls, i32 30, ptr @wcd938x_dapm_widgets, i32 91, ptr @wcd938x_audio_map, i32 72, ptr @wcd938x_soc_codec_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wcd938x_codec_set_jack, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 0, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wcd938x_dais = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.347, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wcd938x_sdw_dai_ops, ptr null, %struct.snd_soc_pcm_stream zeroinitializer, %struct.snd_soc_pcm_stream { ptr @.str.348, i64 68, i32 7914, i32 8000, i32 192000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.349, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wcd938x_sdw_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.350, i64 4, i32 5290, i32 8000, i32 192000, i32 1, i32 4, i32 0 }, %struct.snd_soc_pcm_stream zeroinitializer, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@wcd938x_bind._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.44, ptr @.str.4, i32 4401, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Codec registration failed\0A\00", [33 x i8] zeroinitializer }, align 32
@wcd938x_bind._entry_ptr.75 = internal global ptr @wcd938x_bind._entry.73, section ".printk_index", align 4
@.str.76 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wcd938x_csr\00", [20 x i8] zeroinitializer }, align 32
@wcd938x_defaults = internal constant { [464 x %struct.reg_default], [928 x i8] } { [464 x %struct.reg_default] [%struct.reg_default { i32 12288, i32 0 }, %struct.reg_default { i32 12289, i32 0 }, %struct.reg_default { i32 12296, i32 0 }, %struct.reg_default { i32 12297, i32 12 }, %struct.reg_default { i32 12298, i32 0 }, %struct.reg_default { i32 12299, i32 2 }, %struct.reg_default { i32 12302, i32 32 }, %struct.reg_default { i32 12303, i32 0 }, %struct.reg_default { i32 12304, i32 32 }, %struct.reg_default { i32 12305, i32 0 }, %struct.reg_default { i32 12306, i32 0 }, %struct.reg_default { i32 12307, i32 0 }, %struct.reg_default { i32 12308, i32 57 }, %struct.reg_default { i32 12309, i32 8 }, %struct.reg_default { i32 12310, i32 0 }, %struct.reg_default { i32 12311, i32 0 }, %struct.reg_default { i32 12312, i32 0 }, %struct.reg_default { i32 12313, i32 0 }, %struct.reg_default { i32 12314, i32 0 }, %struct.reg_default { i32 12315, i32 16 }, %struct.reg_default { i32 12316, i32 32 }, %struct.reg_default { i32 12317, i32 48 }, %struct.reg_default { i32 12318, i32 64 }, %struct.reg_default { i32 12319, i32 80 }, %struct.reg_default { i32 12320, i32 96 }, %struct.reg_default { i32 12321, i32 112 }, %struct.reg_default { i32 12322, i32 16 }, %struct.reg_default { i32 12323, i32 16 }, %struct.reg_default { i32 12324, i32 0 }, %struct.reg_default { i32 12325, i32 16 }, %struct.reg_default { i32 12326, i32 16 }, %struct.reg_default { i32 12328, i32 42 }, %struct.reg_default { i32 12329, i32 85 }, %struct.reg_default { i32 12352, i32 1 }, %struct.reg_default { i32 12353, i32 0 }, %struct.reg_default { i32 12374, i32 0 }, %struct.reg_default { i32 12375, i32 0 }, %struct.reg_default { i32 12376, i32 0 }, %struct.reg_default { i32 12377, i32 0 }, %struct.reg_default { i32 12378, i32 0 }, %struct.reg_default { i32 12379, i32 0 }, %struct.reg_default { i32 12380, i32 0 }, %struct.reg_default { i32 12391, i32 43 }, %struct.reg_default { i32 12392, i32 104 }, %struct.reg_default { i32 12393, i32 0 }, %struct.reg_default { i32 12394, i32 80 }, %struct.reg_default { i32 12395, i32 26 }, %struct.reg_default { i32 12396, i32 0 }, %struct.reg_default { i32 12397, i32 164 }, %struct.reg_default { i32 12398, i32 26 }, %struct.reg_default { i32 12399, i32 0 }, %struct.reg_default { i32 12400, i32 36 }, %struct.reg_default { i32 12401, i32 26 }, %struct.reg_default { i32 12402, i32 0 }, %struct.reg_default { i32 12403, i32 164 }, %struct.reg_default { i32 12404, i32 26 }, %struct.reg_default { i32 12405, i32 0 }, %struct.reg_default { i32 12406, i32 164 }, %struct.reg_default { i32 12407, i32 57 }, %struct.reg_default { i32 12408, i32 224 }, %struct.reg_default { i32 12409, i32 0 }, %struct.reg_default { i32 12410, i32 0 }, %struct.reg_default { i32 12411, i32 34 }, %struct.reg_default { i32 12412, i32 0 }, %struct.reg_default { i32 12413, i32 0 }, %struct.reg_default { i32 12414, i32 0 }, %struct.reg_default { i32 12415, i32 204 }, %struct.reg_default { i32 12416, i32 233 }, %struct.reg_default { i32 12417, i32 10 }, %struct.reg_default { i32 12418, i32 56 }, %struct.reg_default { i32 12419, i32 255 }, %struct.reg_default { i32 12420, i32 0 }, %struct.reg_default { i32 12421, i32 0 }, %struct.reg_default { i32 12422, i32 0 }, %struct.reg_default { i32 12423, i32 204 }, %struct.reg_default { i32 12424, i32 233 }, %struct.reg_default { i32 12425, i32 10 }, %struct.reg_default { i32 12426, i32 56 }, %struct.reg_default { i32 12427, i32 255 }, %struct.reg_default { i32 12428, i32 0 }, %struct.reg_default { i32 12429, i32 0 }, %struct.reg_default { i32 12430, i32 0 }, %struct.reg_default { i32 12431, i32 251 }, %struct.reg_default { i32 12432, i32 0 }, %struct.reg_default { i32 12433, i32 0 }, %struct.reg_default { i32 12434, i32 251 }, %struct.reg_default { i32 12435, i32 0 }, %struct.reg_default { i32 12436, i32 0 }, %struct.reg_default { i32 12439, i32 64 }, %struct.reg_default { i32 12440, i32 58 }, %struct.reg_default { i32 12441, i32 0 }, %struct.reg_default { i32 12442, i32 112 }, %struct.reg_default { i32 12443, i32 130 }, %struct.reg_default { i32 12444, i32 49 }, %struct.reg_default { i32 12445, i32 128 }, %struct.reg_default { i32 12446, i32 128 }, %struct.reg_default { i32 12447, i32 81 }, %struct.reg_default { i32 12448, i32 0 }, %struct.reg_default { i32 12449, i32 0 }, %struct.reg_default { i32 12450, i32 119 }, %struct.reg_default { i32 12451, i32 0 }, %struct.reg_default { i32 12452, i32 78 }, %struct.reg_default { i32 12453, i32 11 }, %struct.reg_default { i32 12454, i32 69 }, %struct.reg_default { i32 12455, i32 116 }, %struct.reg_default { i32 12456, i32 127 }, %struct.reg_default { i32 12457, i32 131 }, %struct.reg_default { i32 12458, i32 152 }, %struct.reg_default { i32 12459, i32 169 }, %struct.reg_default { i32 12460, i32 104 }, %struct.reg_default { i32 12461, i32 100 }, %struct.reg_default { i32 12462, i32 237 }, %struct.reg_default { i32 12463, i32 240 }, %struct.reg_default { i32 12464, i32 166 }, %struct.reg_default { i32 12465, i32 101 }, %struct.reg_default { i32 12466, i32 0 }, %struct.reg_default { i32 12467, i32 0 }, %struct.reg_default { i32 12468, i32 1 }, %struct.reg_default { i32 12469, i32 50 }, %struct.reg_default { i32 12470, i32 31 }, %struct.reg_default { i32 12471, i32 119 }, %struct.reg_default { i32 12472, i32 160 }, %struct.reg_default { i32 12473, i32 170 }, %struct.reg_default { i32 12474, i32 169 }, %struct.reg_default { i32 12475, i32 170 }, %struct.reg_default { i32 12476, i32 138 }, %struct.reg_default { i32 12477, i32 136 }, %struct.reg_default { i32 12478, i32 130 }, %struct.reg_default { i32 12479, i32 130 }, %struct.reg_default { i32 12480, i32 160 }, %struct.reg_default { i32 12481, i32 170 }, %struct.reg_default { i32 12482, i32 80 }, %struct.reg_default { i32 12483, i32 0 }, %struct.reg_default { i32 12484, i32 8 }, %struct.reg_default { i32 12485, i32 68 }, %struct.reg_default { i32 12486, i32 64 }, %struct.reg_default { i32 12487, i32 170 }, %struct.reg_default { i32 12488, i32 20 }, %struct.reg_default { i32 12489, i32 4 }, %struct.reg_default { i32 12490, i32 4 }, %struct.reg_default { i32 12491, i32 128 }, %struct.reg_default { i32 12492, i32 154 }, %struct.reg_default { i32 12493, i32 20 }, %struct.reg_default { i32 12494, i32 40 }, %struct.reg_default { i32 12495, i32 22 }, %struct.reg_default { i32 12496, i32 131 }, %struct.reg_default { i32 12497, i32 70 }, %struct.reg_default { i32 12498, i32 80 }, %struct.reg_default { i32 12499, i32 128 }, %struct.reg_default { i32 12500, i32 224 }, %struct.reg_default { i32 12501, i32 80 }, %struct.reg_default { i32 12502, i32 128 }, %struct.reg_default { i32 12503, i32 224 }, %struct.reg_default { i32 12504, i32 84 }, %struct.reg_default { i32 12505, i32 153 }, %struct.reg_default { i32 12506, i32 155 }, %struct.reg_default { i32 12507, i32 51 }, %struct.reg_default { i32 12508, i32 0 }, %struct.reg_default { i32 12509, i32 104 }, %struct.reg_default { i32 12510, i32 14 }, %struct.reg_default { i32 12511, i32 32 }, %struct.reg_default { i32 12512, i32 32 }, %struct.reg_default { i32 12513, i32 85 }, %struct.reg_default { i32 12514, i32 25 }, %struct.reg_default { i32 12515, i32 160 }, %struct.reg_default { i32 12516, i32 0 }, %struct.reg_default { i32 12521, i32 34 }, %struct.reg_default { i32 12522, i32 68 }, %struct.reg_default { i32 12523, i32 219 }, %struct.reg_default { i32 12524, i32 128 }, %struct.reg_default { i32 12525, i32 178 }, %struct.reg_default { i32 12526, i32 0 }, %struct.reg_default { i32 12527, i32 0 }, %struct.reg_default { i32 12528, i32 8 }, %struct.reg_default { i32 12544, i32 0 }, %struct.reg_default { i32 12545, i32 0 }, %struct.reg_default { i32 12546, i32 0 }, %struct.reg_default { i32 12547, i32 22 }, %struct.reg_default { i32 12548, i32 0 }, %struct.reg_default { i32 12575, i32 0 }, %struct.reg_default { i32 12576, i32 2 }, %struct.reg_default { i32 12577, i32 5 }, %struct.reg_default { i32 12578, i32 233 }, %struct.reg_default { i32 12579, i32 15 }, %struct.reg_default { i32 12580, i32 0 }, %struct.reg_default { i32 12581, i32 0 }, %struct.reg_default { i32 12582, i32 0 }, %struct.reg_default { i32 12583, i32 0 }, %struct.reg_default { i32 12584, i32 0 }, %struct.reg_default { i32 12585, i32 12 }, %struct.reg_default { i32 12586, i32 16 }, %struct.reg_default { i32 12588, i32 0 }, %struct.reg_default { i32 12589, i32 0 }, %struct.reg_default { i32 12594, i32 64 }, %struct.reg_default { i32 12595, i32 129 }, %struct.reg_default { i32 12596, i32 16 }, %struct.reg_default { i32 12597, i32 0 }, %struct.reg_default { i32 12598, i32 129 }, %struct.reg_default { i32 12599, i32 34 }, %struct.reg_default { i32 12600, i32 0 }, %struct.reg_default { i32 12601, i32 0 }, %struct.reg_default { i32 12602, i32 254 }, %struct.reg_default { i32 12603, i32 2 }, %struct.reg_default { i32 12604, i32 78 }, %struct.reg_default { i32 12605, i32 84 }, %struct.reg_default { i32 12606, i32 0 }, %struct.reg_default { i32 12607, i32 0 }, %struct.reg_default { i32 12608, i32 144 }, %struct.reg_default { i32 12609, i32 144 }, %struct.reg_default { i32 12613, i32 98 }, %struct.reg_default { i32 12614, i32 1 }, %struct.reg_default { i32 12615, i32 17 }, %struct.reg_default { i32 12719, i32 87 }, %struct.reg_default { i32 12720, i32 1 }, %struct.reg_default { i32 12721, i32 0 }, %struct.reg_default { i32 12722, i32 0 }, %struct.reg_default { i32 12727, i32 168 }, %struct.reg_default { i32 12728, i32 66 }, %struct.reg_default { i32 12729, i32 34 }, %struct.reg_default { i32 12730, i32 0 }, %struct.reg_default { i32 12733, i32 0 }, %struct.reg_default { i32 12734, i32 6 }, %struct.reg_default { i32 12735, i32 210 }, %struct.reg_default { i32 12736, i32 128 }, %struct.reg_default { i32 12737, i32 80 }, %struct.reg_default { i32 12738, i32 0 }, %struct.reg_default { i32 12739, i32 0 }, %struct.reg_default { i32 12740, i32 0 }, %struct.reg_default { i32 12741, i32 110 }, %struct.reg_default { i32 12742, i32 80 }, %struct.reg_default { i32 12743, i32 28 }, %struct.reg_default { i32 12744, i32 255 }, %struct.reg_default { i32 12745, i32 31 }, %struct.reg_default { i32 12746, i32 0 }, %struct.reg_default { i32 12752, i32 10 }, %struct.reg_default { i32 12753, i32 10 }, %struct.reg_default { i32 12755, i32 2 }, %struct.reg_default { i32 12756, i32 96 }, %struct.reg_default { i32 12757, i32 255 }, %struct.reg_default { i32 12758, i32 127 }, %struct.reg_default { i32 12759, i32 63 }, %struct.reg_default { i32 12760, i32 31 }, %struct.reg_default { i32 12761, i32 15 }, %struct.reg_default { i32 12762, i32 215 }, %struct.reg_default { i32 12763, i32 200 }, %struct.reg_default { i32 12764, i32 198 }, %struct.reg_default { i32 12765, i32 213 }, %struct.reg_default { i32 12766, i32 202 }, %struct.reg_default { i32 12767, i32 5 }, %struct.reg_default { i32 12768, i32 165 }, %struct.reg_default { i32 12769, i32 19 }, %struct.reg_default { i32 12770, i32 136 }, %struct.reg_default { i32 12771, i32 66 }, %struct.reg_default { i32 12772, i32 255 }, %struct.reg_default { i32 12773, i32 100 }, %struct.reg_default { i32 12774, i32 100 }, %struct.reg_default { i32 12775, i32 119 }, %struct.reg_default { i32 13312, i32 0 }, %struct.reg_default { i32 13313, i32 0 }, %struct.reg_default { i32 13314, i32 0 }, %struct.reg_default { i32 13315, i32 13 }, %struct.reg_default { i32 13316, i32 1 }, %struct.reg_default { i32 13317, i32 0 }, %struct.reg_default { i32 13318, i32 3 }, %struct.reg_default { i32 13319, i32 0 }, %struct.reg_default { i32 13320, i32 0 }, %struct.reg_default { i32 13321, i32 240 }, %struct.reg_default { i32 13322, i32 0 }, %struct.reg_default { i32 13323, i32 85 }, %struct.reg_default { i32 13324, i32 0 }, %struct.reg_default { i32 13325, i32 252 }, %struct.reg_default { i32 13326, i32 252 }, %struct.reg_default { i32 13327, i32 252 }, %struct.reg_default { i32 13328, i32 0 }, %struct.reg_default { i32 13329, i32 0 }, %struct.reg_default { i32 13332, i32 0 }, %struct.reg_default { i32 13335, i32 30 }, %struct.reg_default { i32 13336, i32 0 }, %struct.reg_default { i32 13337, i32 1 }, %struct.reg_default { i32 13338, i32 99 }, %struct.reg_default { i32 13339, i32 4 }, %struct.reg_default { i32 13340, i32 172 }, %struct.reg_default { i32 13341, i32 4 }, %struct.reg_default { i32 13342, i32 26 }, %struct.reg_default { i32 13343, i32 3 }, %struct.reg_default { i32 13344, i32 188 }, %struct.reg_default { i32 13345, i32 2 }, %struct.reg_default { i32 13346, i32 199 }, %struct.reg_default { i32 13347, i32 248 }, %struct.reg_default { i32 13348, i32 71 }, %struct.reg_default { i32 13349, i32 67 }, %struct.reg_default { i32 13350, i32 177 }, %struct.reg_default { i32 13351, i32 23 }, %struct.reg_default { i32 13352, i32 77 }, %struct.reg_default { i32 13353, i32 41 }, %struct.reg_default { i32 13354, i32 52 }, %struct.reg_default { i32 13355, i32 89 }, %struct.reg_default { i32 13356, i32 102 }, %struct.reg_default { i32 13357, i32 135 }, %struct.reg_default { i32 13358, i32 100 }, %struct.reg_default { i32 13359, i32 0 }, %struct.reg_default { i32 13360, i32 1 }, %struct.reg_default { i32 13361, i32 150 }, %struct.reg_default { i32 13362, i32 9 }, %struct.reg_default { i32 13363, i32 171 }, %struct.reg_default { i32 13364, i32 5 }, %struct.reg_default { i32 13365, i32 28 }, %struct.reg_default { i32 13366, i32 2 }, %struct.reg_default { i32 13367, i32 23 }, %struct.reg_default { i32 13368, i32 2 }, %struct.reg_default { i32 13369, i32 170 }, %struct.reg_default { i32 13370, i32 227 }, %struct.reg_default { i32 13371, i32 105 }, %struct.reg_default { i32 13372, i32 84 }, %struct.reg_default { i32 13373, i32 2 }, %struct.reg_default { i32 13374, i32 21 }, %struct.reg_default { i32 13375, i32 164 }, %struct.reg_default { i32 13376, i32 181 }, %struct.reg_default { i32 13377, i32 134 }, %struct.reg_default { i32 13378, i32 133 }, %struct.reg_default { i32 13379, i32 170 }, %struct.reg_default { i32 13380, i32 226 }, %struct.reg_default { i32 13381, i32 98 }, %struct.reg_default { i32 13382, i32 85 }, %struct.reg_default { i32 13383, i32 169 }, %struct.reg_default { i32 13384, i32 61 }, %struct.reg_default { i32 13385, i32 46 }, %struct.reg_default { i32 13386, i32 1 }, %struct.reg_default { i32 13387, i32 0 }, %struct.reg_default { i32 13388, i32 252 }, %struct.reg_default { i32 13389, i32 1 }, %struct.reg_default { i32 13390, i32 0 }, %struct.reg_default { i32 13391, i32 0 }, %struct.reg_default { i32 13392, i32 0 }, %struct.reg_default { i32 13393, i32 0 }, %struct.reg_default { i32 13394, i32 0 }, %struct.reg_default { i32 13395, i32 104 }, %struct.reg_default { i32 13396, i32 104 }, %struct.reg_default { i32 13397, i32 104 }, %struct.reg_default { i32 13398, i32 0 }, %struct.reg_default { i32 13399, i32 1 }, %struct.reg_default { i32 13400, i32 0 }, %struct.reg_default { i32 13402, i32 15 }, %struct.reg_default { i32 13403, i32 4 }, %struct.reg_default { i32 13404, i32 1 }, %struct.reg_default { i32 13405, i32 1 }, %struct.reg_default { i32 13406, i32 1 }, %struct.reg_default { i32 13407, i32 1 }, %struct.reg_default { i32 13408, i32 0 }, %struct.reg_default { i32 13409, i32 43 }, %struct.reg_default { i32 13410, i32 17 }, %struct.reg_default { i32 13411, i32 17 }, %struct.reg_default { i32 13413, i32 0 }, %struct.reg_default { i32 13414, i32 0 }, %struct.reg_default { i32 13415, i32 0 }, %struct.reg_default { i32 13418, i32 0 }, %struct.reg_default { i32 13419, i32 255 }, %struct.reg_default { i32 13420, i32 255 }, %struct.reg_default { i32 13421, i32 63 }, %struct.reg_default { i32 13422, i32 0 }, %struct.reg_default { i32 13423, i32 0 }, %struct.reg_default { i32 13424, i32 0 }, %struct.reg_default { i32 13425, i32 0 }, %struct.reg_default { i32 13426, i32 0 }, %struct.reg_default { i32 13427, i32 0 }, %struct.reg_default { i32 13428, i32 0 }, %struct.reg_default { i32 13429, i32 0 }, %struct.reg_default { i32 13430, i32 0 }, %struct.reg_default { i32 13431, i32 0 }, %struct.reg_default { i32 13432, i32 0 }, %struct.reg_default { i32 13433, i32 0 }, %struct.reg_default { i32 13434, i32 0 }, %struct.reg_default { i32 13435, i32 0 }, %struct.reg_default { i32 13436, i32 0 }, %struct.reg_default { i32 13439, i32 0 }, %struct.reg_default { i32 13440, i32 0 }, %struct.reg_default { i32 13441, i32 0 }, %struct.reg_default { i32 13442, i32 0 }, %struct.reg_default { i32 13443, i32 0 }, %struct.reg_default { i32 13444, i32 0 }, %struct.reg_default { i32 13445, i32 64 }, %struct.reg_default { i32 13446, i32 64 }, %struct.reg_default { i32 13447, i32 0 }, %struct.reg_default { i32 13448, i32 0 }, %struct.reg_default { i32 13449, i32 0 }, %struct.reg_default { i32 13450, i32 0 }, %struct.reg_default { i32 13451, i32 0 }, %struct.reg_default { i32 13452, i32 143 }, %struct.reg_default { i32 13453, i32 6 }, %struct.reg_default { i32 13454, i32 0 }, %struct.reg_default { i32 13455, i32 0 }, %struct.reg_default { i32 13456, i32 0 }, %struct.reg_default { i32 13457, i32 0 }, %struct.reg_default { i32 13458, i32 0 }, %struct.reg_default { i32 13459, i32 0 }, %struct.reg_default { i32 13460, i32 241 }, %struct.reg_default { i32 13461, i32 241 }, %struct.reg_default { i32 13462, i32 241 }, %struct.reg_default { i32 13463, i32 241 }, %struct.reg_default { i32 13464, i32 241 }, %struct.reg_default { i32 13465, i32 0 }, %struct.reg_default { i32 13466, i32 0 }, %struct.reg_default { i32 13467, i32 0 }, %struct.reg_default { i32 13468, i32 0 }, %struct.reg_default { i32 13469, i32 0 }, %struct.reg_default { i32 13470, i32 31 }, %struct.reg_default { i32 13471, i32 128 }, %struct.reg_default { i32 13472, i32 0 }, %struct.reg_default { i32 13473, i32 0 }, %struct.reg_default { i32 13474, i32 0 }, %struct.reg_default { i32 13475, i32 0 }, %struct.reg_default { i32 13476, i32 0 }, %struct.reg_default { i32 13477, i32 0 }, %struct.reg_default { i32 13478, i32 0 }, %struct.reg_default { i32 13479, i32 0 }, %struct.reg_default { i32 13480, i32 0 }, %struct.reg_default { i32 13481, i32 72 }, %struct.reg_default { i32 13482, i32 0 }, %struct.reg_default { i32 13483, i32 0 }, %struct.reg_default { i32 13484, i32 0 }, %struct.reg_default { i32 13485, i32 0 }, %struct.reg_default { i32 13486, i32 0 }, %struct.reg_default { i32 13487, i32 0 }, %struct.reg_default { i32 13488, i32 0 }, %struct.reg_default { i32 13489, i32 255 }, %struct.reg_default { i32 13490, i32 255 }, %struct.reg_default { i32 13491, i32 255 }, %struct.reg_default { i32 13492, i32 255 }, %struct.reg_default { i32 13493, i32 255 }, %struct.reg_default { i32 13494, i32 255 }, %struct.reg_default { i32 13495, i32 255 }, %struct.reg_default { i32 13496, i32 255 }, %struct.reg_default { i32 13497, i32 255 }, %struct.reg_default { i32 13498, i32 255 }, %struct.reg_default { i32 13499, i32 255 }, %struct.reg_default { i32 13500, i32 255 }, %struct.reg_default { i32 13501, i32 255 }, %struct.reg_default { i32 13502, i32 255 }, %struct.reg_default { i32 13503, i32 255 }, %struct.reg_default { i32 13504, i32 255 }, %struct.reg_default { i32 13505, i32 255 }, %struct.reg_default { i32 13506, i32 255 }, %struct.reg_default { i32 13507, i32 255 }, %struct.reg_default { i32 13508, i32 14 }, %struct.reg_default { i32 13509, i32 0 }, %struct.reg_default { i32 13510, i32 0 }, %struct.reg_default { i32 13511, i32 248 }, %struct.reg_default { i32 13512, i32 22 }, %struct.reg_default { i32 13513, i32 0 }, %struct.reg_default { i32 13514, i32 0 }, %struct.reg_default { i32 13515, i32 0 }, %struct.reg_default { i32 13516, i32 0 }, %struct.reg_default { i32 13517, i32 0 }, %struct.reg_default { i32 13518, i32 0 }, %struct.reg_default { i32 13519, i32 0 }, %struct.reg_default { i32 13520, i32 136 }, %struct.reg_default { i32 13521, i32 136 }, %struct.reg_default { i32 13522, i32 136 }, %struct.reg_default { i32 13523, i32 136 }, %struct.reg_default { i32 13524, i32 136 }, %struct.reg_default { i32 13525, i32 85 }, %struct.reg_default { i32 13526, i32 85 }, %struct.reg_default { i32 13527, i32 85 }, %struct.reg_default { i32 13528, i32 1 }], [928 x i8] zeroinitializer }, align 32
@wcd_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @wcd_irq_chip_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@wcd938x_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.78, ptr @.str.4, i32 4052, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Failed to add IRQ domain\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wcd938x_irq_init\00", [47 x i8] zeroinitializer }, align 32
@wcd938x_irq_init._entry_ptr = internal global ptr @wcd938x_irq_init._entry, section ".printk_index", align 4
@wcd_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.79, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"WCD938x\00", [24 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"wcd938x\00", [24 x i8] zeroinitializer }, align 32
@wcd938x_irqs = internal constant { [20 x %struct.regmap_irq], [176 x i8] } { [20 x %struct.regmap_irq] [%struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 2, i32 8, %struct.regmap_irq_type zeroinitializer }], [176 x i8] zeroinitializer }, align 32
@wcd938x_regmap_irq_chip = internal global { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.80, i32 0, i32 0, ptr null, i32 0, i32 13422, i32 13419, i32 0, i32 13425, i32 0, i32 13428, ptr null, i32 0, i8 17, i8 0, i32 3, ptr @wcd938x_irqs, i32 20, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@wcd938x_snd_controls = internal constant { [30 x %struct.snd_kcontrol_new], [352 x i8] } { [30 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.82, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_compander, ptr @wcd938x_set_compander, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_compander, ptr @wcd938x_set_compander, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @line_gain }, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @line_gain }, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @wcd938x_ear_pa_put_gain, %union.anon.96 { ptr @ear_pa_gain }, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.103, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.104 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.105, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.106 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.107, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.108 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.109, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.110 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.112 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.114 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.116 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.117, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.118 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.119, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.120 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.121, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.122 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.123, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.124 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.125, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.126 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.127, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_swr_port, ptr @wcd938x_set_swr_port, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.128 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.129, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_ldoh_get, ptr @wcd938x_ldoh_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.130 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.131, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_bcs_get, ptr @wcd938x_bcs_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.132 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.133, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @analog_gain }, i32 ptrtoint (ptr @.compoundliteral.134 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.135, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @analog_gain }, i32 ptrtoint (ptr @.compoundliteral.136 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.137, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @analog_gain }, i32 ptrtoint (ptr @.compoundliteral.138 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.139, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.96 { ptr @analog_gain }, i32 ptrtoint (ptr @.compoundliteral.140 to i32) }], [352 x i8] zeroinitializer }, align 32
@wcd938x_audio_map = internal constant { [72 x %struct.snd_soc_dapm_route], [928 x i8] } { [72 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.196, ptr null, ptr @.str.176, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.176, ptr @.str.255, ptr @.str.167, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.167, ptr null, ptr @.str.155, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.155, ptr null, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.197, ptr null, ptr @.str.177, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.177, ptr @.str.255, ptr @.str.168, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.168, ptr null, ptr @.str.156, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.156, ptr null, ptr @.str.174, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.249, ptr @.str.171, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.174, ptr @.str.250, ptr @.str.143, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.241, ptr @.str.145, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.171, ptr @.str.240, ptr @.str.144, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.198, ptr null, ptr @.str.178, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.178, ptr @.str.255, ptr @.str.169, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.169, ptr null, ptr @.str.157, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.157, ptr null, ptr @.str.175, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.252, ptr @.str.172, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.175, ptr @.str.253, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.243, ptr @.str.146, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.172, ptr @.str.244, ptr @.str.148, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.199, ptr null, ptr @.str.179, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.179, ptr @.str.255, ptr @.str.170, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.170, ptr null, ptr @.str.158, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.158, ptr null, ptr @.str.173, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.246, ptr @.str.147, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.173, ptr @.str.247, ptr @.str.149, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.200, ptr null, ptr @.str.180, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.180, ptr @.str.255, ptr @.str.159, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.201, ptr null, ptr @.str.181, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.181, ptr @.str.255, ptr @.str.160, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.202, ptr null, ptr @.str.182, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.182, ptr @.str.255, ptr @.str.161, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.203, ptr null, ptr @.str.183, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.183, ptr @.str.255, ptr @.str.162, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.204, ptr null, ptr @.str.184, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.184, ptr @.str.255, ptr @.str.163, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.205, ptr null, ptr @.str.185, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.185, ptr @.str.255, ptr @.str.164, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.206, ptr null, ptr @.str.186, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.186, ptr @.str.255, ptr @.str.165, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.207, ptr null, ptr @.str.187, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.187, ptr @.str.255, ptr @.str.166, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.208, ptr null, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.208, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.223, ptr null, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.215, ptr null, ptr @.str.223, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.228, ptr @.str.255, ptr @.str.215, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.213, ptr null, ptr @.str.228, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.232, ptr null, ptr @.str.213, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.209, ptr null, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr null, ptr @.str.209, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.216, ptr null, ptr @.str.224, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.224, ptr null, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.229, ptr @.str.255, ptr @.str.216, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.214, ptr null, ptr @.str.229, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.233, ptr null, ptr @.str.214, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.220, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.210, ptr null, ptr @.str.222, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr null, ptr @.str.210, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.218, ptr null, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.225, ptr null, ptr @.str.221, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.227, ptr @.str.255, ptr @.str.218, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.212, ptr null, ptr @.str.227, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.231, ptr null, ptr @.str.212, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.225, ptr @.str.225, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.219, ptr @.str.223, ptr @.str.223, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.217, ptr null, ptr @.str.219, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.226, ptr @.str.255, ptr @.str.217, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.211, ptr null, ptr @.str.226, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.230, ptr null, ptr @.str.211, ptr null, %struct.snd_soc_dobj zeroinitializer }], [928 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HPHL_COMP Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"HPHR_COMP Switch\00", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPHL Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPHR Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CLSH Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"LO Switch\00", [22 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSD_L Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DSD_R Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPHL Volume\00", [20 x i8] zeroinitializer }, align 32
@line_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 600, i32 -3000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 12499, i32 12499, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HPHR Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 24, i32 24, i32 12502, i32 12502, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EAR_PA Volume\00", [18 x i8] zeroinitializer }, align 32
@ear_pa_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 600, i32 -1800], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 16, i32 16, i32 12299, i32 12299, i32 2, i32 2, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC1 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.104 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 0, i32 0, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC2 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.106 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC3 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.108 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 2, i32 2, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC4 Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.110 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 3, i32 3, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC0 Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.112 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 4, i32 4, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC1 Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.114 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 5, i32 5, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MBHC Switch\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.116 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 6, i32 6, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC2 Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.118 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 7, i32 7, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC3 Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.120 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 8, i32 8, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC4 Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.122 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 9, i32 9, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC5 Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.124 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 10, i32 10, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC6 Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.126 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 11, i32 11, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC7 Switch\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.128 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 12, i32 12, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"LDOH Enable Switch\00", [45 x i8] zeroinitializer }, align 32
@.compoundliteral.130 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ADC2_BCS Disable Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.132 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC1 Volume\00", [20 x i8] zeroinitializer }, align 32
@analog_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 0, i32 3000], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.134 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 12302, i32 12302, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC2 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.136 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 12303, i32 12303, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC3 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.138 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 12304, i32 12304, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC4 Volume\00", [20 x i8] zeroinitializer }, align 32
@.compoundliteral.140 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 20, i32 20, i32 12305, i32 12305, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wcd938x_ear_pa_put_gain._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.142, ptr @.str.4, i32 2554, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Can not set EAR PA Gain, compander1 is enabled\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcd938x_ear_pa_put_gain\00", [40 x i8] zeroinitializer }, align 32
@wcd938x_ear_pa_put_gain._entry_ptr = internal global ptr @wcd938x_ear_pa_put_gain._entry, section ".printk_index", align 4
@.str.143 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMIC3\00", [26 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMIC4\00", [26 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMIC5\00", [26 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMIC6\00", [26 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AMIC7\00", [26 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Analog Mic1\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Analog Mic2\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Analog Mic3\00", [20 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Analog Mic4\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Analog Mic5\00", [20 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC1\00", [27 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC2\00", [27 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC3\00", [27 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ADC4\00", [27 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC1\00", [26 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC2\00", [26 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC3\00", [26 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC4\00", [26 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC5\00", [26 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC6\00", [26 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC7\00", [26 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DMIC8\00", [26 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC1 REQ\00", [23 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC2 REQ\00", [23 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC3 REQ\00", [23 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC4 REQ\00", [23 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC2 MUX\00", [23 x i8] zeroinitializer }, align 32
@tx_adc2_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.239, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @adc2_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC3 MUX\00", [23 x i8] zeroinitializer }, align 32
@tx_adc3_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.242, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @adc3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC4 MUX\00", [23 x i8] zeroinitializer }, align 32
@tx_adc4_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.245, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @adc4_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HDR12 MUX\00", [22 x i8] zeroinitializer }, align 32
@tx_hdr12_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.248, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @hdr12_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HDR34 MUX\00", [22 x i8] zeroinitializer }, align 32
@tx_hdr34_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.251, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @hdr34_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC1_MIXER\00", [21 x i8] zeroinitializer }, align 32
@adc1_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.256 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC2_MIXER\00", [21 x i8] zeroinitializer }, align 32
@adc2_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.257 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC3_MIXER\00", [21 x i8] zeroinitializer }, align 32
@adc3_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.258 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC4_MIXER\00", [21 x i8] zeroinitializer }, align 32
@adc4_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.259 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC1_MIXER\00", [20 x i8] zeroinitializer }, align 32
@dmic1_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.260 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC2_MIXER\00", [20 x i8] zeroinitializer }, align 32
@dmic2_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.261 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC3_MIXER\00", [20 x i8] zeroinitializer }, align 32
@dmic3_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.262 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC4_MIXER\00", [20 x i8] zeroinitializer }, align 32
@dmic4_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.263 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC5_MIXER\00", [20 x i8] zeroinitializer }, align 32
@dmic5_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.264 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC6_MIXER\00", [20 x i8] zeroinitializer }, align 32
@dmic6_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.265 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC7_MIXER\00", [20 x i8] zeroinitializer }, align 32
@dmic7_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.266 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DMIC8_MIXER\00", [20 x i8] zeroinitializer }, align 32
@dmic8_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.267 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIC BIAS1\00", [22 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIC BIAS2\00", [22 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIC BIAS3\00", [22 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"MIC BIAS4\00", [22 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VA MIC BIAS1\00", [19 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VA MIC BIAS2\00", [19 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VA MIC BIAS3\00", [19 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"VA MIC BIAS4\00", [19 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC1_OUTPUT\00", [20 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC2_OUTPUT\00", [20 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC3_OUTPUT\00", [20 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC4_OUTPUT\00", [20 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC1_OUTPUT\00", [19 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC2_OUTPUT\00", [19 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC3_OUTPUT\00", [19 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC4_OUTPUT\00", [19 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC5_OUTPUT\00", [19 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC6_OUTPUT\00", [19 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC7_OUTPUT\00", [19 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DMIC8_OUTPUT\00", [19 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IN1_HPHL\00", [23 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IN2_HPHR\00", [23 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"IN3_AUX\00", [24 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"EAR PGA\00", [24 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"AUX PGA\00", [24 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPHL PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPHR PGA\00", [23 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RDAC1\00", [26 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RDAC2\00", [26 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RDAC3\00", [26 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RDAC4\00", [26 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"RDAC3_MUX\00", [22 x i8] zeroinitializer }, align 32
@rx_rdac3_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.270, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rdac3_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"VDD_BUCK\00", [23 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RXCLK\00", [26 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLS_H_PORT\00", [21 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX1\00", [28 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX2\00", [28 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"RX3\00", [28 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"EAR_RDAC\00", [23 x i8] zeroinitializer }, align 32
@ear_rdac_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.271 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"AUX_RDAC\00", [23 x i8] zeroinitializer }, align 32
@aux_rdac_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.272 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HPHL_RDAC\00", [22 x i8] zeroinitializer }, align 32
@hphl_rdac_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.273 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"HPHR_RDAC\00", [22 x i8] zeroinitializer }, align 32
@hphr_rdac_switch = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.255, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_dapm_get_volsw, ptr @snd_soc_dapm_put_volsw, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.274 to i32) }], [48 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"EAR\00", [28 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"AUX\00", [28 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPHL\00", [27 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HPHR\00", [27 x i8] zeroinitializer }, align 32
@wcd938x_dapm_widgets = internal constant { [91 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [4068 x i8] } { [91 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.143, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.144, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.145, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.146, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.147, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.148, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.149, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.150, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.151, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.152, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.153, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 11, ptr @.str.154, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.155, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_codec_enable_adc, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.156, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_codec_enable_adc, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.157, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_codec_enable_adc, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.158, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_codec_enable_adc, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.159, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_codec_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.160, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_codec_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.161, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_codec_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.162, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_codec_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.163, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_codec_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.164, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 5, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_codec_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.165, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_codec_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.166, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_codec_enable_dmic, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.167, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_adc_enable_req, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.168, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_adc_enable_req, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.169, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_adc_enable_req, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.170, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_adc_enable_req, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.171, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tx_adc2_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.172, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tx_adc3_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.173, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tx_adc4_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.174, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tx_hdr12_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.175, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @tx_hdr34_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.176, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_tx_swr_ctrl, i32 1, ptr @adc1_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.177, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_tx_swr_ctrl, i32 1, ptr @adc2_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.178, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_tx_swr_ctrl, i32 1, ptr @adc3_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.179, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_tx_swr_ctrl, i32 1, ptr @adc4_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.180, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_tx_swr_ctrl, i32 1, ptr @dmic1_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.181, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_tx_swr_ctrl, i32 1, ptr @dmic2_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.182, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_tx_swr_ctrl, i32 1, ptr @dmic3_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.183, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_tx_swr_ctrl, i32 1, ptr @dmic4_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.184, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_tx_swr_ctrl, i32 1, ptr @dmic5_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.185, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_tx_swr_ctrl, i32 1, ptr @dmic6_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.186, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_tx_swr_ctrl, i32 1, ptr @dmic7_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.187, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 9, ptr @wcd938x_tx_swr_ctrl, i32 1, ptr @dmic8_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.188, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wcd938x_codec_enable_micbias, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.189, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wcd938x_codec_enable_micbias, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.190, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wcd938x_codec_enable_micbias, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.191, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wcd938x_codec_enable_micbias, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.192, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wcd938x_codec_enable_micbias_pullup, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.193, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 2, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wcd938x_codec_enable_micbias_pullup, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.194, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wcd938x_codec_enable_micbias_pullup, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.195, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wcd938x_codec_enable_micbias_pullup, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.196, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.197, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.198, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.199, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.200, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.201, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.202, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.203, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.204, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.205, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.206, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.207, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.208, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.209, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.210, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.211, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12298, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @wcd938x_codec_enable_ear_pa, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.212, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12584, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @wcd938x_codec_enable_aux_pa, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.213, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12297, i8 7, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @wcd938x_codec_enable_hphl_pa, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.214, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 12297, i8 6, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @wcd938x_codec_enable_hphr_pa, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.215, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @wcd938x_codec_hphl_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.216, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @wcd938x_codec_hphr_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.217, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @wcd938x_codec_ear_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.218, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @wcd938x_codec_aux_dac_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.219, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @rx_rdac3_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.220, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.221, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 11, ptr @wcd938x_codec_enable_rxclk, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.222, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 1, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.223, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.224, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.225, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.226, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @ear_rdac_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.227, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @aux_rdac_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.228, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hphl_rdac_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.229, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hphr_rdac_switch, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.230, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.231, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.232, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.233, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [4068 x i8] zeroinitializer }, align 32
@wcd938x_codec_enable_dmic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.235, ptr @.str.236, ptr @.str.4, i32 2073, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s: Invalid DMIC Selection\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcd938x_codec_enable_dmic\00", [38 x i8] zeroinitializer }, align 32
@wcd938x_codec_enable_dmic._entry_ptr = internal global ptr @wcd938x_codec_enable_dmic._entry, section ".printk_index", align 4
@wcd938x_adc_enable_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.237, ptr @.str.238, ptr @.str.4, i32 2263, ptr @.str.23, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid ADC mode\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcd938x_adc_enable_req\00", [41 x i8] zeroinitializer }, align 32
@wcd938x_adc_enable_req._entry_ptr = internal global ptr @wcd938x_adc_enable_req._entry, section ".printk_index", align 4
@.str.239 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC2 MUX Mux\00", [19 x i8] zeroinitializer }, align 32
@adc2_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12583, i8 7, i8 7, i32 2, i32 1, ptr @adc2_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc2_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.240, ptr @.str.241], [24 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INP2\00", [27 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INP3\00", [27 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC3 MUX Mux\00", [19 x i8] zeroinitializer }, align 32
@adc3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12583, i8 6, i8 6, i32 2, i32 1, ptr @adc3_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc3_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.243, ptr @.str.244], [24 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INP4\00", [27 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INP6\00", [27 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ADC4 MUX Mux\00", [19 x i8] zeroinitializer }, align 32
@adc4_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12583, i8 5, i8 5, i32 2, i32 1, ptr @adc4_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc4_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.246, ptr @.str.247], [24 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INP5\00", [27 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INP7\00", [27 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HDR12 MUX Mux\00", [18 x i8] zeroinitializer }, align 32
@hdr12_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12583, i8 4, i8 4, i32 2, i32 1, ptr @hdr12_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hdr12_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.249, ptr @.str.250], [24 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NO_HDR12\00", [23 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HDR12\00", [26 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"HDR34 MUX Mux\00", [18 x i8] zeroinitializer }, align 32
@hdr34_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 12583, i8 3, i8 3, i32 2, i32 1, ptr @hdr34_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hdr34_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.252, ptr @.str.253], [24 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"NO_HDR34\00", [23 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"HDR34\00", [26 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@tx_mode_bit = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\00\01\02\04\08\10 ", [25 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Switch\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.256 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.257 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.258 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.259 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.260 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.261 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.262 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.263 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.264 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.265 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.266 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.267 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wcd938x_micbias_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.268, ptr @.str.269, ptr @.str.4, i32 2373, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: Invalid micbias number: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcd938x_micbias_control\00", [40 x i8] zeroinitializer }, align 32
@wcd938x_micbias_control._entry_ptr = internal global ptr @wcd938x_micbias_control._entry, section ".printk_index", align 4
@.str.270 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"RDAC3_MUX Mux\00", [18 x i8] zeroinitializer }, align 32
@rdac3_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 13392, i8 0, i8 0, i32 2, i32 1, ptr @rdac3_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rdac3_mux_text = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.223, ptr @.str.225], [24 x i8] zeroinitializer }, align 32
@.compoundliteral.271 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.272 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.273 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.compoundliteral.274 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 -1, i32 -1, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HPHR PDM WD INT\00", [16 x i8] zeroinitializer }, align 32
@wcd938x_soc_codec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.276, ptr @.str.277, ptr @.str.4, i32 4095, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to request HPHR WD interrupt (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wcd938x_soc_codec_probe\00", [40 x i8] zeroinitializer }, align 32
@wcd938x_soc_codec_probe._entry_ptr = internal global ptr @wcd938x_soc_codec_probe._entry, section ".printk_index", align 4
@.str.278 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"HPHL PDM WD INT\00", [16 x i8] zeroinitializer }, align 32
@wcd938x_soc_codec_probe._entry.279 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.280, ptr @.str.277, ptr @.str.4, i32 4101, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to request HPHL WD interrupt (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@wcd938x_soc_codec_probe._entry_ptr.281 = internal global ptr @wcd938x_soc_codec_probe._entry.279, section ".printk_index", align 4
@.str.282 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"AUX PDM WD INT\00", [17 x i8] zeroinitializer }, align 32
@wcd938x_soc_codec_probe._entry.283 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.284, ptr @.str.277, ptr @.str.4, i32 4107, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to request Aux WD interrupt (%d)\0A\00", [55 x i8] zeroinitializer }, align 32
@wcd938x_soc_codec_probe._entry_ptr.285 = internal global ptr @wcd938x_soc_codec_probe._entry.283, section ".printk_index", align 4
@wcd9380_snd_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.294, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wcd938x_rx_hph_mode_get, ptr @wcd938x_rx_hph_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rx_hph_mode_mux_enum_wcd9380 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.295, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wcd938x_tx_mode_get, ptr @wcd938x_tx_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @tx0_mode_enum_wcd9380 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wcd938x_tx_mode_get, ptr @wcd938x_tx_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @tx1_mode_enum_wcd9380 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.297, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wcd938x_tx_mode_get, ptr @wcd938x_tx_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @tx2_mode_enum_wcd9380 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wcd938x_tx_mode_get, ptr @wcd938x_tx_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @tx3_mode_enum_wcd9380 to i32) }], [48 x i8] zeroinitializer }, align 32
@wcd938x_soc_codec_probe._entry.286 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.277, ptr @.str.4, i32 4121, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: Failed to add snd ctrls for variant: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@wcd938x_soc_codec_probe._entry_ptr.288 = internal global ptr @wcd938x_soc_codec_probe._entry.286, section ".printk_index", align 4
@wcd9385_snd_controls = internal constant { [5 x %struct.snd_kcontrol_new], [48 x i8] } { [5 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.294, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wcd938x_rx_hph_mode_get, ptr @wcd938x_rx_hph_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @rx_hph_mode_mux_enum to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.295, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wcd938x_tx_mode_get, ptr @wcd938x_tx_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @tx0_mode_enum_wcd9385 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.296, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wcd938x_tx_mode_get, ptr @wcd938x_tx_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @tx1_mode_enum_wcd9385 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.297, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wcd938x_tx_mode_get, ptr @wcd938x_tx_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @tx2_mode_enum_wcd9385 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.298, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @wcd938x_tx_mode_get, ptr @wcd938x_tx_mode_put, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @tx3_mode_enum_wcd9385 to i32) }], [48 x i8] zeroinitializer }, align 32
@wcd938x_soc_codec_probe._entry.289 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.277, ptr @.str.4, i32 4131, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@wcd938x_soc_codec_probe._entry_ptr.290 = internal global ptr @wcd938x_soc_codec_probe._entry.289, section ".printk_index", align 4
@wcd938x_soc_codec_probe._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.277, ptr @.str.4, i32 4141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"mbhc initialization failed\0A\00", [36 x i8] zeroinitializer }, align 32
@wcd938x_soc_codec_probe._entry_ptr.293 = internal global ptr @wcd938x_soc_codec_probe._entry.291, section ".printk_index", align 4
@.str.294 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"RX HPH Mode\00", [20 x i8] zeroinitializer }, align 32
@rx_hph_mode_mux_enum_wcd9380 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 9, i32 0, ptr @rx_hph_mode_mux_text_wcd9380, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TX0 MODE\00", [23 x i8] zeroinitializer }, align 32
@tx0_mode_enum_wcd9380 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 5, i32 7, ptr @tx_mode_mux_text_wcd9380, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TX1 MODE\00", [23 x i8] zeroinitializer }, align 32
@tx1_mode_enum_wcd9380 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 1, i8 1, i32 5, i32 7, ptr @tx_mode_mux_text_wcd9380, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TX2 MODE\00", [23 x i8] zeroinitializer }, align 32
@tx2_mode_enum_wcd9380 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 2, i8 2, i32 5, i32 7, ptr @tx_mode_mux_text_wcd9380, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"TX3 MODE\00", [23 x i8] zeroinitializer }, align 32
@tx3_mode_enum_wcd9380 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 3, i8 3, i32 5, i32 7, ptr @tx_mode_mux_text_wcd9380, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_hph_mode_mux_text_wcd9380 = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307], [60 x i8] zeroinitializer }, align 32
@.str.299 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CLS_H_INVALID\00", [18 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CLS_H_INVALID_1\00", [16 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"CLS_H_LP\00", [23 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CLS_AB\00", [25 x i8] zeroinitializer }, align 32
@.str.303 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"CLS_H_LOHIFI\00", [19 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLS_H_ULP\00", [22 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"CLS_H_INVALID_2\00", [16 x i8] zeroinitializer }, align 32
@.str.306 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CLS_AB_LP\00", [22 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CLS_AB_LOHIFI\00", [18 x i8] zeroinitializer }, align 32
@tx_mode_mux_text_wcd9380 = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312], [44 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ADC_INVALID\00", [20 x i8] zeroinitializer }, align 32
@.str.309 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC_HIFI\00", [23 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC_LO_HIF\00", [21 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ADC_NORMAL\00", [21 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ADC_LP\00", [25 x i8] zeroinitializer }, align 32
@rx_hph_mode_mux_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 0, i8 0, i8 0, i32 9, i32 0, ptr @rx_hph_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@tx0_mode_enum_wcd9385 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 0, i8 0, i32 7, i32 7, ptr @tx_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@tx1_mode_enum_wcd9385 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 1, i8 1, i32 7, i32 7, ptr @tx_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@tx2_mode_enum_wcd9385 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 2, i8 2, i32 7, i32 7, ptr @tx_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@tx3_mode_enum_wcd9385 = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 -1, i8 3, i8 3, i32 7, i32 7, ptr @tx_mode_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@rx_hph_mode_mux_text = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.299, ptr @.str.313, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.314, ptr @.str.306, ptr @.str.307], [60 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"CLS_H_HIFI\00", [21 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"CLS_AB_HIFI\00", [20 x i8] zeroinitializer }, align 32
@tx_mode_mux_text = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @.str.315, ptr @.str.316], [36 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC_ULP1\00", [23 x i8] zeroinitializer }, align 32
@.str.316 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ADC_ULP2\00", [23 x i8] zeroinitializer }, align 32
@mbhc_cb = internal constant { %struct.wcd_mbhc_cb, [36 x i8] } { %struct.wcd_mbhc_cb { ptr null, ptr null, ptr null, ptr @wcd938x_wcd_mbhc_calc_impedance, ptr null, ptr null, ptr @wcd938x_mbhc_clk_setup, ptr @wcd938x_mbhc_micb_en_status, ptr @wcd938x_mbhc_mbhc_bias_control, ptr @wcd938x_mbhc_program_btn_thr, ptr null, ptr @wcd938x_mbhc_request_micbias, ptr @wcd938x_mbhc_micb_ramp_control, ptr null, ptr @wcd938x_mbhc_micb_ctrl_threshold_mic, ptr @wcd938x_mbhc_gnd_det_ctrl, ptr @wcd938x_mbhc_hph_pull_down_ctrl, ptr @wcd938x_mbhc_moisture_config, ptr null, ptr @wcd938x_mbhc_hph_l_pull_up_control, ptr @wcd938x_mbhc_get_moisture_status, ptr @wcd938x_mbhc_moisture_polling_ctrl, ptr @wcd938x_mbhc_moisture_detect_en }, [36 x i8] zeroinitializer }, align 32
@wcd_mbhc_fields = internal global { [49 x %struct.wcd_mbhc_field], [60 x i8] } { [49 x %struct.wcd_mbhc_field] [%struct.wcd_mbhc_field { i16 12308, i8 -128 }, %struct.wcd_mbhc_field { i16 12308, i8 64 }, %struct.wcd_mbhc_field { i16 12308, i8 32 }, %struct.wcd_mbhc_field { i16 12578, i8 48 }, %struct.wcd_mbhc_field { i16 12309, i8 8 }, %struct.wcd_mbhc_field { i16 12721, i8 31 }, %struct.wcd_mbhc_field { i16 12308, i8 4 }, %struct.wcd_mbhc_field { i16 12308, i8 16 }, %struct.wcd_mbhc_field { i16 12308, i8 8 }, %struct.wcd_mbhc_field { i16 12308, i8 1 }, %struct.wcd_mbhc_field { i16 12309, i8 6 }, %struct.wcd_mbhc_field { i16 12309, i8 -128 }, %struct.wcd_mbhc_field { i16 12578, i8 15 }, %struct.wcd_mbhc_field { i16 12576, i8 3 }, %struct.wcd_mbhc_field { i16 12577, i8 3 }, %struct.wcd_mbhc_field { i16 12313, i8 8 }, %struct.wcd_mbhc_field { i16 12313, i8 16 }, %struct.wcd_mbhc_field { i16 12313, i8 32 }, %struct.wcd_mbhc_field { i16 12313, i8 -128 }, %struct.wcd_mbhc_field { i16 12313, i8 64 }, %struct.wcd_mbhc_field { i16 12494, i8 16 }, %struct.wcd_mbhc_field { i16 12313, i8 7 }, %struct.wcd_mbhc_field { i16 12309, i8 112 }, %struct.wcd_mbhc_field { i16 12313, i8 -1 }, %struct.wcd_mbhc_field { i16 12323, i8 -64 }, %struct.wcd_mbhc_field { i16 12493, i8 -1 }, %struct.wcd_mbhc_field { i16 12297, i8 64 }, %struct.wcd_mbhc_field { i16 12297, i8 -128 }, %struct.wcd_mbhc_field { i16 12297, i8 -64 }, %struct.wcd_mbhc_field { i16 12313, i8 16 }, %struct.wcd_mbhc_field zeroinitializer, %struct.wcd_mbhc_field { i16 12378, i8 2 }, %struct.wcd_mbhc_field { i16 12581, i8 1 }, %struct.wcd_mbhc_field { i16 12577, i8 112 }, %struct.wcd_mbhc_field { i16 12581, i8 32 }, %struct.wcd_mbhc_field { i16 12498, i8 64 }, %struct.wcd_mbhc_field { i16 12498, i8 16 }, %struct.wcd_mbhc_field { i16 12500, i8 1 }, %struct.wcd_mbhc_field { i16 12503, i8 1 }, %struct.wcd_mbhc_field { i16 13422, i8 -128 }, %struct.wcd_mbhc_field { i16 13422, i8 32 }, %struct.wcd_mbhc_field { i16 12576, i8 8 }, %struct.wcd_mbhc_field { i16 12581, i8 64 }, %struct.wcd_mbhc_field { i16 12581, i8 -128 }, %struct.wcd_mbhc_field { i16 12582, i8 -1 }, %struct.wcd_mbhc_field { i16 12323, i8 63 }, %struct.wcd_mbhc_field { i16 12576, i8 16 }, %struct.wcd_mbhc_field { i16 12576, i8 4 }, %struct.wcd_mbhc_field { i16 12310, i8 2 }], [60 x i8] zeroinitializer }, align 32
@impedance_detect_controls = internal constant { [2 x %struct.snd_kcontrol_new], [32 x i8] } { [2 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.339, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_hph_impedance_get, ptr null, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.340 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.341, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_hph_impedance_get, ptr null, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.342 to i32) }], [32 x i8] zeroinitializer }, align 32
@hph_type_detect_controls = internal constant { [1 x %struct.snd_kcontrol_new], [48 x i8] } { [1 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.345, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @wcd938x_get_hph_type, ptr null, %union.anon.96 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.346 to i32) }], [48 x i8] zeroinitializer }, align 32
@__const.wcd938x_wcd_mbhc_calc_impedance.zdet_param = private unnamed_addr constant [4 x %struct.wcd938x_mbhc_zdet_param] [%struct.wcd938x_mbhc_zdet_param { i16 4, i16 0, i16 4, i16 8, i16 20, i16 24 }, %struct.wcd938x_mbhc_zdet_param { i16 2, i16 0, i16 3, i16 24, i16 124, i16 144 }, %struct.wcd938x_mbhc_zdet_param { i16 1, i16 4, i16 5, i16 24, i16 124, i16 144 }, %struct.wcd938x_mbhc_zdet_param { i16 1, i16 6, i16 7, i16 24, i16 124, i16 144 }], align 2
@__const.wcd938x_wcd_mbhc_calc_impedance.d1_a = private unnamed_addr constant [4 x [4 x i16]] [[4 x i16] [i16 0, i16 30, i16 90, i16 30], [4 x i16] [i16 0, i16 30, i16 30, i16 5], [4 x i16] [i16 0, i16 30, i16 30, i16 5], [4 x i16] [i16 0, i16 30, i16 30, i16 5]], align 2
@wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.317, ptr @.str.318, ptr @.str.4, ptr @.str.319, i8 3, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.317 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_soc_wcd938x\00", [16 x i8] zeroinitializer }, align 32
@.str.318 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"wcd938x_wcd_mbhc_calc_impedance\00", [32 x i8] zeroinitializer }, align 32
@.str.319 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: impedance on HPH_L = %d(ohms)\0A\00", [61 x i8] zeroinitializer }, align 32
@wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.317, ptr @.str.318, ptr @.str.4, ptr @.str.320, i8 3, i8 70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.320 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: impedance on HPH_R = %d(ohms)\0A\00", [61 x i8] zeroinitializer }, align 32
@wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.317, ptr @.str.318, ptr @.str.4, ptr @.str.321, i8 3, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.321 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s: plug type is invalid or extension cable\0A\00", [51 x i8] zeroinitializer }, align 32
@wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.317, ptr @.str.318, ptr @.str.4, ptr @.str.322, i8 3, i8 74, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.322 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: Mono plug type with one ch floating or shorted to GND\0A\00", [37 x i8] zeroinitializer }, align 32
@wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.317, ptr @.str.318, ptr @.str.4, ptr @.str.323, i8 3, i8 80, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.323 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: stereo plug type detected\0A\00", [33 x i8] zeroinitializer }, align 32
@wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.317, ptr @.str.318, ptr @.str.4, ptr @.str.324, i8 3, i8 81, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.324 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: MONO plug type detected\0A\00", [35 x i8] zeroinitializer }, align 32
@wcd938x_mbhc_zdet_ramp.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.317, ptr @.str.325, ptr @.str.4, ptr @.str.326, i8 3, i8 30, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.325 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wcd938x_mbhc_zdet_ramp\00", [41 x i8] zeroinitializer }, align 32
@.str.326 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: ramp for HPH_L, noff = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wcd938x_mbhc_zdet_ramp.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.317, ptr @.str.325, ptr @.str.4, ptr @.str.327, i8 3, i8 34, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.327 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: ramp for HPH_R, noff = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__const.wcd938x_mbhc_get_result_params.minCode_param = private unnamed_addr constant [8 x i32] [i32 3277, i32 1639, i32 820, i32 410, i32 205, i32 103, i32 52, i32 26], align 4
@wcd938x_mbhc_get_result_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.329, ptr @.str.4, i32 3140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013%s: Impedance detect ramp error, c1=%d, x1=0x%x\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"wcd938x_mbhc_get_result_params\00", [33 x i8] zeroinitializer }, align 32
@wcd938x_mbhc_get_result_params._entry_ptr = internal global ptr @wcd938x_mbhc_get_result_params._entry, section ".printk_index", align 4
@wcd938x_mbhc_get_result_params._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.329, ptr @.str.4, i32 3151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013%s: d1=%d, c1=%d, x1=0x%x, z_val=%d(milliOhm)\0A\00", [47 x i8] zeroinitializer }, align 32
@wcd938x_mbhc_get_result_params._entry_ptr.332 = internal global ptr @wcd938x_mbhc_get_result_params._entry.330, section ".printk_index", align 4
@wcd938x_mbhc_program_btn_thr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.334, ptr @.str.4, i32 2947, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: invalid number of buttons: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wcd938x_mbhc_program_btn_thr\00", [35 x i8] zeroinitializer }, align 32
@wcd938x_mbhc_program_btn_thr._entry_ptr = internal global ptr @wcd938x_mbhc_program_btn_thr._entry, section ".printk_index", align 4
@wcd938x_mbhc_program_btn_thr.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.317, ptr @.str.334, ptr @.str.4, ptr @.str.335, i8 2, i8 -29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.335 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: btn_high[%d]: %d, vth: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wcd938x_mbhc_moisture_config.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.317, ptr @.str.336, ptr @.str.4, ptr @.str.337, i8 3, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.336 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"wcd938x_mbhc_moisture_config\00", [35 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: disable moisture detection for NC\0A\00", [57 x i8] zeroinitializer }, align 32
@wcd938x_mbhc_get_moisture_status.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.317, ptr @.str.338, ptr @.str.4, ptr @.str.337, i8 3, i8 106, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.338 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"wcd938x_mbhc_get_moisture_status\00", [63 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HPHL Impedance\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.340 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.341 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HPHR Impedance\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.342 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@wcd938x_hph_impedance_get.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.317, ptr @.str.343, ptr @.str.4, ptr @.str.344, i8 3, i8 124, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.343 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wcd938x_hph_impedance_get\00", [38 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: zl=%u(ohms), zr=%u(ohms)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HPH Type\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.346 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 -1, i32 -1, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.347 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wcd938x-sdw-rx\00", [17 x i8] zeroinitializer }, align 32
@wcd938x_sdw_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wcd938x_codec_set_sdw_stream, ptr null, ptr null, ptr null, ptr null, ptr @wcd938x_codec_hw_params, ptr @wcd938x_codec_free, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"WCD AIF1 Playback\00", [46 x i8] zeroinitializer }, align 32
@.str.349 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wcd938x-sdw-tx\00", [17 x i8] zeroinitializer }, align 32
@.str.350 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"WCD AIF1 Capture\00", [47 x i8] zeroinitializer }, align 32
@switch.table.wcd938x_codec_enable_dmic = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 13410, i32 13410, i32 13410, i32 13410, i32 13411, i32 13411, i32 13411, i32 13411], [32 x i8] zeroinitializer }, align 32
@switch.table.wcd938x_codec_enable_dmic.351 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 13404, i32 13404, i32 13405, i32 13405, i32 13406, i32 13406, i32 13407, i32 13407], [32 x i8] zeroinitializer }, align 32
@switch.table.wcd938x_codec_enable_dmic.352 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 1, i32 2, i32 2, i32 4, i32 4, i32 8, i32 8], [32 x i8] zeroinitializer }, align 32
@switch.table.wcd938x_codec_enable_dmic.353 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 15, i32 15, i32 240, i32 240, i32 15, i32 15, i32 240, i32 240], [32 x i8] zeroinitializer }, align 32
@switch.table.wcd938x_adc_enable_req = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12303, i32 12303, i32 12305, i32 12305], [16 x i8] zeroinitializer }, align 32
@switch.table.wcd938x_adc_enable_req.354 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 64, i32 32, i32 64, i32 32], [16 x i8] zeroinitializer }, align 32
@switch.table.wcd938x_adc_enable_req.355 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 3, i32 1, i32 2, i32 3, i32 5, i32 9, i32 11], [36 x i8] zeroinitializer }, align 32
@switch.table.wcd938x_adc_enable_req.356 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12303, i32 12303, i32 12305, i32 12305], [16 x i8] zeroinitializer }, align 32
@switch.table.wcd938x_adc_enable_req.357 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 64, i32 32, i32 64, i32 32], [16 x i8] zeroinitializer }, align 32
@switch.table.wcd938x_codec_enable_micbias_pullup = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12322, i32 12323, i32 12325, i32 12326], [16 x i8] zeroinitializer }, align 32
@switch.table.wcd938x_codec_enable_micbias_pullup.358 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12322, i32 12323, i32 12325, i32 12326], [16 x i8] zeroinitializer }, align 32
@switch.table.wcd938x_micbias_control = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 12322, i32 12323, i32 12325, i32 12326], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [401 x i64] [i64 399, i64 32, i64 12288, i64 12289, i64 12296, i64 12297, i64 12298, i64 12299, i64 12302, i64 12303, i64 12304, i64 12305, i64 12306, i64 12307, i64 12308, i64 12309, i64 12310, i64 12314, i64 12315, i64 12316, i64 12317, i64 12318, i64 12319, i64 12320, i64 12321, i64 12322, i64 12323, i64 12324, i64 12325, i64 12326, i64 12328, i64 12329, i64 12352, i64 12353, i64 12374, i64 12375, i64 12376, i64 12377, i64 12378, i64 12380, i64 12391, i64 12392, i64 12393, i64 12394, i64 12395, i64 12396, i64 12397, i64 12398, i64 12399, i64 12400, i64 12401, i64 12402, i64 12403, i64 12404, i64 12405, i64 12406, i64 12407, i64 12408, i64 12409, i64 12410, i64 12411, i64 12412, i64 12413, i64 12414, i64 12415, i64 12416, i64 12417, i64 12418, i64 12419, i64 12420, i64 12423, i64 12424, i64 12425, i64 12426, i64 12427, i64 12428, i64 12431, i64 12432, i64 12433, i64 12434, i64 12435, i64 12436, i64 12439, i64 12440, i64 12441, i64 12442, i64 12443, i64 12444, i64 12445, i64 12446, i64 12447, i64 12448, i64 12449, i64 12450, i64 12451, i64 12452, i64 12453, i64 12454, i64 12455, i64 12456, i64 12457, i64 12458, i64 12459, i64 12460, i64 12461, i64 12462, i64 12463, i64 12464, i64 12465, i64 12466, i64 12467, i64 12468, i64 12469, i64 12470, i64 12471, i64 12472, i64 12473, i64 12474, i64 12475, i64 12476, i64 12477, i64 12478, i64 12479, i64 12480, i64 12481, i64 12482, i64 12483, i64 12484, i64 12485, i64 12486, i64 12487, i64 12488, i64 12491, i64 12492, i64 12493, i64 12494, i64 12495, i64 12496, i64 12497, i64 12498, i64 12499, i64 12500, i64 12501, i64 12502, i64 12503, i64 12504, i64 12505, i64 12506, i64 12507, i64 12508, i64 12509, i64 12510, i64 12511, i64 12512, i64 12513, i64 12514, i64 12515, i64 12521, i64 12522, i64 12523, i64 12524, i64 12525, i64 12526, i64 12544, i64 12545, i64 12546, i64 12547, i64 12548, i64 12575, i64 12576, i64 12577, i64 12578, i64 12579, i64 12580, i64 12583, i64 12584, i64 12585, i64 12586, i64 12588, i64 12594, i64 12595, i64 12596, i64 12597, i64 12598, i64 12599, i64 12600, i64 12601, i64 12602, i64 12603, i64 12604, i64 12605, i64 12606, i64 12607, i64 12608, i64 12609, i64 12613, i64 12614, i64 12615, i64 12719, i64 12720, i64 12721, i64 12722, i64 12727, i64 12728, i64 12729, i64 12730, i64 12733, i64 12734, i64 12735, i64 12736, i64 12737, i64 12738, i64 12740, i64 12741, i64 12742, i64 12743, i64 12744, i64 12745, i64 12752, i64 12753, i64 12755, i64 12756, i64 12757, i64 12758, i64 12759, i64 12760, i64 12761, i64 12762, i64 12763, i64 12764, i64 12765, i64 12766, i64 12767, i64 12768, i64 12769, i64 12770, i64 12771, i64 12772, i64 12773, i64 12774, i64 12775, i64 13312, i64 13317, i64 13318, i64 13319, i64 13320, i64 13321, i64 13322, i64 13323, i64 13324, i64 13325, i64 13326, i64 13327, i64 13328, i64 13329, i64 13332, i64 13335, i64 13336, i64 13337, i64 13338, i64 13339, i64 13340, i64 13341, i64 13342, i64 13343, i64 13344, i64 13345, i64 13346, i64 13347, i64 13348, i64 13349, i64 13350, i64 13351, i64 13352, i64 13353, i64 13354, i64 13355, i64 13356, i64 13357, i64 13358, i64 13359, i64 13360, i64 13361, i64 13362, i64 13363, i64 13364, i64 13365, i64 13366, i64 13367, i64 13368, i64 13369, i64 13370, i64 13371, i64 13372, i64 13373, i64 13374, i64 13375, i64 13376, i64 13377, i64 13378, i64 13379, i64 13380, i64 13381, i64 13382, i64 13383, i64 13384, i64 13385, i64 13386, i64 13387, i64 13388, i64 13389, i64 13390, i64 13391, i64 13392, i64 13393, i64 13394, i64 13395, i64 13396, i64 13397, i64 13398, i64 13399, i64 13400, i64 13402, i64 13403, i64 13404, i64 13405, i64 13406, i64 13407, i64 13408, i64 13409, i64 13410, i64 13411, i64 13413, i64 13414, i64 13415, i64 13418, i64 13419, i64 13420, i64 13421, i64 13425, i64 13426, i64 13427, i64 13428, i64 13429, i64 13430, i64 13431, i64 13432, i64 13433, i64 13434, i64 13435, i64 13436, i64 13439, i64 13440, i64 13441, i64 13442, i64 13443, i64 13444, i64 13445, i64 13446, i64 13447, i64 13448, i64 13449, i64 13452, i64 13453, i64 13454, i64 13455, i64 13456, i64 13457, i64 13460, i64 13461, i64 13462, i64 13463, i64 13464, i64 13465, i64 13466, i64 13467, i64 13468, i64 13469, i64 13470, i64 13471, i64 13472, i64 13473, i64 13474, i64 13475, i64 13478, i64 13479, i64 13480, i64 13481, i64 13482, i64 13485, i64 13486, i64 13487, i64 13520, i64 13521, i64 13522, i64 13523, i64 13524, i64 13525, i64 13526, i64 13527, i64 13528]
@__sancov_gen_cov_switch_values.359 = internal global [70 x i64] [i64 68, i64 32, i64 12311, i64 12312, i64 12313, i64 12379, i64 12421, i64 12422, i64 12429, i64 12430, i64 12489, i64 12490, i64 12516, i64 12527, i64 12528, i64 12581, i64 12582, i64 12589, i64 12739, i64 12746, i64 13313, i64 13314, i64 13315, i64 13316, i64 13422, i64 13423, i64 13424, i64 13425, i64 13426, i64 13427, i64 13450, i64 13451, i64 13458, i64 13459, i64 13476, i64 13477, i64 13483, i64 13484, i64 13488, i64 13489, i64 13490, i64 13491, i64 13492, i64 13493, i64 13494, i64 13495, i64 13496, i64 13497, i64 13498, i64 13499, i64 13500, i64 13501, i64 13502, i64 13503, i64 13504, i64 13505, i64 13506, i64 13507, i64 13508, i64 13509, i64 13510, i64 13511, i64 13512, i64 13513, i64 13514, i64 13515, i64 13516, i64 13517, i64 13518, i64 13519]
@__sancov_gen_cov_switch_values.360 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 5]
@__sancov_gen_cov_switch_values.361 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.362 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.363 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.364 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.365 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.366 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.367 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.368 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.369 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.370 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.371 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.372 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.373 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.374 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.375 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.376 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.377 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.378 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.379 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 5]
@__sancov_gen_cov_switch_values.380 = internal global [6 x i64] [i64 4, i64 32, i64 3, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.381 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.382 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 8]
@__sancov_gen_cov_switch_values.383 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.384 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.385 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 8]
@__sancov_gen_cov_switch_values.386 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.387 = private unnamed_addr constant [21 x i8] c"wcd938x_codec_driver\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4519, i32 31 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4523, i32 11 }
@___asan_gen_.393 = private unnamed_addr constant [17 x i8] c"wcd938x_dt_match\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4511, i32 34 }
@___asan_gen_.396 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4475, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4479, i32 3 }
@___asan_gen_.420 = private unnamed_addr constant [17 x i8] c"wcd938x_comp_ops\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4418, i32 42 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4207, i32 56 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4209, i32 3 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4214, i32 32 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4215, i32 32 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4216, i32 32 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4217, i32 32 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4221, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4227, i32 3 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4177, i32 32 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4181, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4183, i32 32 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4187, i32 3 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4189, i32 32 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4193, i32 3 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4195, i32 32 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4199, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4441, i32 41 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4443, i32 3 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4451, i32 41 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4453, i32 3 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4330, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4337, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4345, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4352, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4360, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4366, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4372, i32 3 }
@___asan_gen_.567 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.570 = private unnamed_addr constant [22 x i8] c"wcd938x_regmap_config\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 1255, i32 29 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4376, i32 20 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4378, i32 3 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4384, i32 3 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4393, i32 3 }
@___asan_gen_.594 = private unnamed_addr constant [22 x i8] c"soc_codec_dev_wcd938x\00", align 1
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4159, i32 46 }
@___asan_gen_.597 = private unnamed_addr constant [13 x i8] c"wcd938x_dais\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4294, i32 34 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4400, i32 3 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 1256, i32 10 }
@___asan_gen_.609 = private unnamed_addr constant [17 x i8] c"wcd938x_defaults\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 274, i32 33 }
@___asan_gen_.612 = private unnamed_addr constant [15 x i8] c"wcd_domain_ops\00", align 1
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4043, i32 36 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4052, i32 3 }
@___asan_gen_.624 = private unnamed_addr constant [13 x i8] c"wcd_irq_chip\00", align 1
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4029, i32 24 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4030, i32 10 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 1293, i32 10 }
@___asan_gen_.633 = private unnamed_addr constant [13 x i8] c"wcd938x_irqs\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 1269, i32 32 }
@___asan_gen_.636 = private unnamed_addr constant [24 x i8] c"wcd938x_regmap_irq_chip\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 1292, i32 31 }
@___asan_gen_.639 = private unnamed_addr constant [21 x i8] c"wcd938x_snd_controls\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3620, i32 38 }
@___asan_gen_.642 = private unnamed_addr constant [18 x i8] c"wcd938x_audio_map\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3909, i32 40 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3621, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3623, i32 2 }
@___asan_gen_.652 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3625, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3627, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3629, i32 2 }
@___asan_gen_.664 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3631, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3633, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3635, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3637, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant [10 x i8] c"line_gain\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 211, i32 14 }
@___asan_gen_.683 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3638, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3639, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant [12 x i8] c"ear_pa_gain\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 210, i32 14 }
@___asan_gen_.694 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3641, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant [21 x i8] c".compoundliteral.104\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3643, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant [21 x i8] c".compoundliteral.106\00", align 1
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3645, i32 2 }
@___asan_gen_.706 = private unnamed_addr constant [21 x i8] c".compoundliteral.108\00", align 1
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3647, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant [21 x i8] c".compoundliteral.110\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3649, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant [21 x i8] c".compoundliteral.112\00", align 1
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3651, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant [21 x i8] c".compoundliteral.114\00", align 1
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3653, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant [21 x i8] c".compoundliteral.116\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3655, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant [21 x i8] c".compoundliteral.118\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3657, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant [21 x i8] c".compoundliteral.120\00", align 1
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3659, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant [21 x i8] c".compoundliteral.122\00", align 1
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3661, i32 2 }
@___asan_gen_.738 = private unnamed_addr constant [21 x i8] c".compoundliteral.124\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3663, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant [21 x i8] c".compoundliteral.126\00", align 1
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3665, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant [21 x i8] c".compoundliteral.128\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3667, i32 2 }
@___asan_gen_.750 = private unnamed_addr constant [21 x i8] c".compoundliteral.130\00", align 1
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3669, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant [21 x i8] c".compoundliteral.132\00", align 1
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3672, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant [12 x i8] c"analog_gain\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 212, i32 14 }
@___asan_gen_.761 = private unnamed_addr constant [21 x i8] c".compoundliteral.134\00", align 1
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3673, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant [21 x i8] c".compoundliteral.136\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3674, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant [21 x i8] c".compoundliteral.138\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3675, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant [21 x i8] c".compoundliteral.140\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2554, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3681, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3682, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3683, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3684, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3685, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3686, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3687, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3688, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3689, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3690, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3691, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3692, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3695, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3698, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3701, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3704, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3707, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3710, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3713, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3716, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3719, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3722, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3725, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3728, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3732, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3735, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3738, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3741, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3745, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant [12 x i8] c"tx_adc2_mux\00", align 1
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2832, i32 38 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3746, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant [12 x i8] c"tx_adc3_mux\00", align 1
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2835, i32 38 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3747, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant [12 x i8] c"tx_adc4_mux\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2838, i32 38 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3748, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant [13 x i8] c"tx_hdr12_mux\00", align 1
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2841, i32 38 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3749, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant [13 x i8] c"tx_hdr34_mux\00", align 1
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2844, i32 38 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3752, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant [12 x i8] c"adc1_switch\00", align 1
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2768, i32 38 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3755, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant [12 x i8] c"adc2_switch\00", align 1
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2772, i32 38 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3758, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant [12 x i8] c"adc3_switch\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2776, i32 38 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3761, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant [12 x i8] c"adc4_switch\00", align 1
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2780, i32 38 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3764, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant [13 x i8] c"dmic1_switch\00", align 1
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2784, i32 38 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3767, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant [13 x i8] c"dmic2_switch\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2788, i32 38 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3770, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant [13 x i8] c"dmic3_switch\00", align 1
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2792, i32 38 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3773, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant [13 x i8] c"dmic4_switch\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2796, i32 38 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3776, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant [13 x i8] c"dmic5_switch\00", align 1
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2800, i32 38 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3779, i32 2 }
@___asan_gen_.954 = private unnamed_addr constant [13 x i8] c"dmic6_switch\00", align 1
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2804, i32 38 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3782, i32 2 }
@___asan_gen_.960 = private unnamed_addr constant [13 x i8] c"dmic7_switch\00", align 1
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2808, i32 38 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3785, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant [13 x i8] c"dmic8_switch\00", align 1
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2812, i32 38 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3789, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3793, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3797, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3801, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3807, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3811, i32 2 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3815, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3819, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3825, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3826, i32 2 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3827, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3828, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3829, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3830, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3831, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3832, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3833, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3834, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3835, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3836, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3838, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3839, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3840, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3843, i32 2 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3847, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3851, i32 2 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3855, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3860, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3864, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3868, i32 2 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3872, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3877, i32 2 }
@___asan_gen_.1065 = private unnamed_addr constant [13 x i8] c"rx_rdac3_mux\00", align 1
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2847, i32 38 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3879, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3880, i32 2 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3885, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3887, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3888, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3889, i32 2 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3892, i32 2 }
@___asan_gen_.1089 = private unnamed_addr constant [16 x i8] c"ear_rdac_switch\00", align 1
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2816, i32 38 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3894, i32 2 }
@___asan_gen_.1095 = private unnamed_addr constant [16 x i8] c"aux_rdac_switch\00", align 1
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2820, i32 38 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3896, i32 2 }
@___asan_gen_.1101 = private unnamed_addr constant [17 x i8] c"hphl_rdac_switch\00", align 1
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2824, i32 38 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3898, i32 2 }
@___asan_gen_.1107 = private unnamed_addr constant [17 x i8] c"hphr_rdac_switch\00", align 1
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2828, i32 38 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3902, i32 2 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3903, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3904, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3905, i32 2 }
@___asan_gen_.1122 = private unnamed_addr constant [21 x i8] c"wcd938x_dapm_widgets\00", align 1
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3678, i32 41 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2072, i32 3 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2263, i32 4 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2833, i32 2 }
@___asan_gen_.1146 = private unnamed_addr constant [10 x i8] c"adc2_enum\00", align 1
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2744, i32 30 }
@___asan_gen_.1149 = private unnamed_addr constant [14 x i8] c"adc2_mux_text\00", align 1
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2680, i32 27 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2681, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2681, i32 10 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2836, i32 2 }
@___asan_gen_.1161 = private unnamed_addr constant [10 x i8] c"adc3_enum\00", align 1
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2748, i32 30 }
@___asan_gen_.1164 = private unnamed_addr constant [14 x i8] c"adc3_mux_text\00", align 1
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2684, i32 27 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2685, i32 2 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2685, i32 10 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2839, i32 2 }
@___asan_gen_.1176 = private unnamed_addr constant [10 x i8] c"adc4_enum\00", align 1
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2752, i32 30 }
@___asan_gen_.1179 = private unnamed_addr constant [14 x i8] c"adc4_mux_text\00", align 1
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2688, i32 27 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2689, i32 2 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2689, i32 10 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2842, i32 2 }
@___asan_gen_.1191 = private unnamed_addr constant [11 x i8] c"hdr12_enum\00", align 1
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2756, i32 30 }
@___asan_gen_.1194 = private unnamed_addr constant [15 x i8] c"hdr12_mux_text\00", align 1
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2696, i32 27 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2697, i32 2 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2697, i32 14 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2845, i32 2 }
@___asan_gen_.1206 = private unnamed_addr constant [11 x i8] c"hdr34_enum\00", align 1
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2760, i32 30 }
@___asan_gen_.1209 = private unnamed_addr constant [15 x i8] c"hdr34_mux_text\00", align 1
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2700, i32 27 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2701, i32 2 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2701, i32 14 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2119, i32 24 }
@___asan_gen_.1221 = private unnamed_addr constant [12 x i8] c"tx_mode_bit\00", align 1
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 160, i32 11 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2769, i32 2 }
@___asan_gen_.1227 = private unnamed_addr constant [21 x i8] c".compoundliteral.256\00", align 1
@___asan_gen_.1228 = private unnamed_addr constant [21 x i8] c".compoundliteral.257\00", align 1
@___asan_gen_.1229 = private unnamed_addr constant [21 x i8] c".compoundliteral.258\00", align 1
@___asan_gen_.1230 = private unnamed_addr constant [21 x i8] c".compoundliteral.259\00", align 1
@___asan_gen_.1231 = private unnamed_addr constant [21 x i8] c".compoundliteral.260\00", align 1
@___asan_gen_.1232 = private unnamed_addr constant [21 x i8] c".compoundliteral.261\00", align 1
@___asan_gen_.1233 = private unnamed_addr constant [21 x i8] c".compoundliteral.262\00", align 1
@___asan_gen_.1234 = private unnamed_addr constant [21 x i8] c".compoundliteral.263\00", align 1
@___asan_gen_.1235 = private unnamed_addr constant [21 x i8] c".compoundliteral.264\00", align 1
@___asan_gen_.1236 = private unnamed_addr constant [21 x i8] c".compoundliteral.265\00", align 1
@___asan_gen_.1237 = private unnamed_addr constant [21 x i8] c".compoundliteral.266\00", align 1
@___asan_gen_.1238 = private unnamed_addr constant [21 x i8] c".compoundliteral.267\00", align 1
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2372, i32 3 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2848, i32 2 }
@___asan_gen_.1251 = private unnamed_addr constant [11 x i8] c"rdac3_enum\00", align 1
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2764, i32 30 }
@___asan_gen_.1254 = private unnamed_addr constant [15 x i8] c"rdac3_mux_text\00", align 1
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2692, i32 27 }
@___asan_gen_.1257 = private unnamed_addr constant [21 x i8] c".compoundliteral.271\00", align 1
@___asan_gen_.1258 = private unnamed_addr constant [21 x i8] c".compoundliteral.272\00", align 1
@___asan_gen_.1259 = private unnamed_addr constant [21 x i8] c".compoundliteral.273\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant [21 x i8] c".compoundliteral.274\00", align 1
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4093, i32 8 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4095, i32 3 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4099, i32 8 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4101, i32 3 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4105, i32 8 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4107, i32 3 }
@___asan_gen_.1291 = private unnamed_addr constant [21 x i8] c"wcd9380_snd_controls\00", align 1
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2850, i32 38 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4119, i32 4 }
@___asan_gen_.1300 = private unnamed_addr constant [21 x i8] c"wcd9385_snd_controls\00", align 1
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2863, i32 38 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4129, i32 4 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4141, i32 3 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2851, i32 2 }
@___asan_gen_.1315 = private unnamed_addr constant [29 x i8] c"rx_hph_mode_mux_enum_wcd9380\00", align 1
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2736, i32 30 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2853, i32 2 }
@___asan_gen_.1321 = private unnamed_addr constant [22 x i8] c"tx0_mode_enum_wcd9380\00", align 1
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2704, i32 30 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2855, i32 2 }
@___asan_gen_.1327 = private unnamed_addr constant [22 x i8] c"tx1_mode_enum_wcd9380\00", align 1
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2708, i32 30 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2857, i32 2 }
@___asan_gen_.1333 = private unnamed_addr constant [22 x i8] c"tx2_mode_enum_wcd9380\00", align 1
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2712, i32 30 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2859, i32 2 }
@___asan_gen_.1339 = private unnamed_addr constant [22 x i8] c"tx3_mode_enum_wcd9380\00", align 1
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2716, i32 30 }
@___asan_gen_.1342 = private unnamed_addr constant [29 x i8] c"rx_hph_mode_mux_text_wcd9380\00", align 1
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2669, i32 27 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2670, i32 2 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2670, i32 19 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2670, i32 38 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2670, i32 50 }
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2671, i32 2 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2671, i32 18 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2671, i32 31 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2671, i32 50 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2672, i32 2 }
@___asan_gen_.1372 = private unnamed_addr constant [25 x i8] c"tx_mode_mux_text_wcd9380\00", align 1
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2660, i32 27 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2661, i32 2 }
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2661, i32 17 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2661, i32 29 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2661, i32 43 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2661, i32 57 }
@___asan_gen_.1390 = private unnamed_addr constant [21 x i8] c"rx_hph_mode_mux_enum\00", align 1
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2740, i32 30 }
@___asan_gen_.1393 = private unnamed_addr constant [22 x i8] c"tx0_mode_enum_wcd9385\00", align 1
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2720, i32 30 }
@___asan_gen_.1396 = private unnamed_addr constant [22 x i8] c"tx1_mode_enum_wcd9385\00", align 1
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2724, i32 30 }
@___asan_gen_.1399 = private unnamed_addr constant [22 x i8] c"tx2_mode_enum_wcd9385\00", align 1
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2728, i32 30 }
@___asan_gen_.1402 = private unnamed_addr constant [22 x i8] c"tx3_mode_enum_wcd9385\00", align 1
@___asan_gen_.1404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2732, i32 30 }
@___asan_gen_.1405 = private unnamed_addr constant [21 x i8] c"rx_hph_mode_mux_text\00", align 1
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2675, i32 27 }
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2676, i32 19 }
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2677, i32 15 }
@___asan_gen_.1414 = private unnamed_addr constant [17 x i8] c"tx_mode_mux_text\00", align 1
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2664, i32 27 }
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2666, i32 2 }
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2666, i32 14 }
@___asan_gen_.1423 = private unnamed_addr constant [8 x i8] c"mbhc_cb\00", align 1
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3529, i32 33 }
@___asan_gen_.1426 = private unnamed_addr constant [16 x i8] c"wcd_mbhc_fields\00", align 1
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 223, i32 30 }
@___asan_gen_.1429 = private unnamed_addr constant [26 x i8] c"impedance_detect_controls\00", align 1
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3582, i32 38 }
@___asan_gen_.1432 = private unnamed_addr constant [25 x i8] c"hph_type_detect_controls\00", align 1
@___asan_gen_.1434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3577, i32 38 }
@___asan_gen_.1443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3320, i32 2 }
@___asan_gen_.1446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3352, i32 2 }
@___asan_gen_.1449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3358, i32 3 }
@___asan_gen_.1452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3367, i32 3 }
@___asan_gen_.1455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3392, i32 3 }
@___asan_gen_.1458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3396, i32 3 }
@___asan_gen_.1464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3193, i32 2 }
@___asan_gen_.1467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3207, i32 2 }
@___asan_gen_.1476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3139, i32 3 }
@___asan_gen_.1482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3150, i32 2 }
@___asan_gen_.1483 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2946, i32 3 }
@___asan_gen_.1494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 2955, i32 3 }
@___asan_gen_.1500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3461, i32 3 }
@___asan_gen_.1503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3497, i32 3 }
@___asan_gen_.1506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3583, i32 2 }
@___asan_gen_.1507 = private unnamed_addr constant [21 x i8] c".compoundliteral.340\00", align 1
@___asan_gen_.1510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3585, i32 2 }
@___asan_gen_.1511 = private unnamed_addr constant [21 x i8] c".compoundliteral.342\00", align 1
@___asan_gen_.1517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3571, i32 2 }
@___asan_gen_.1520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 3578, i32 2 }
@___asan_gen_.1521 = private unnamed_addr constant [21 x i8] c".compoundliteral.346\00", align 1
@___asan_gen_.1524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4296, i32 11 }
@___asan_gen_.1525 = private unnamed_addr constant [20 x i8] c"wcd938x_sdw_dai_ops\00", align 1
@___asan_gen_.1527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4288, i32 37 }
@___asan_gen_.1530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4298, i32 19 }
@___asan_gen_.1533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4309, i32 11 }
@___asan_gen_.1534 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1535 = private constant [30 x i8] c"../sound/soc/codecs/wcd938x.c\00", align 1
@___asan_gen_.1536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1535, i32 4311, i32 19 }
@___asan_gen_.1537 = private unnamed_addr constant [39 x i8] c"switch.table.wcd938x_codec_enable_dmic\00", align 1
@___asan_gen_.1538 = private unnamed_addr constant [43 x i8] c"switch.table.wcd938x_codec_enable_dmic.351\00", align 1
@___asan_gen_.1539 = private unnamed_addr constant [43 x i8] c"switch.table.wcd938x_codec_enable_dmic.352\00", align 1
@___asan_gen_.1540 = private unnamed_addr constant [43 x i8] c"switch.table.wcd938x_codec_enable_dmic.353\00", align 1
@___asan_gen_.1541 = private unnamed_addr constant [36 x i8] c"switch.table.wcd938x_adc_enable_req\00", align 1
@___asan_gen_.1542 = private unnamed_addr constant [40 x i8] c"switch.table.wcd938x_adc_enable_req.354\00", align 1
@___asan_gen_.1543 = private unnamed_addr constant [40 x i8] c"switch.table.wcd938x_adc_enable_req.355\00", align 1
@___asan_gen_.1544 = private unnamed_addr constant [40 x i8] c"switch.table.wcd938x_adc_enable_req.356\00", align 1
@___asan_gen_.1545 = private unnamed_addr constant [40 x i8] c"switch.table.wcd938x_adc_enable_req.357\00", align 1
@___asan_gen_.1546 = private unnamed_addr constant [49 x i8] c"switch.table.wcd938x_codec_enable_micbias_pullup\00", align 1
@___asan_gen_.1547 = private unnamed_addr constant [53 x i8] c"switch.table.wcd938x_codec_enable_micbias_pullup.358\00", align 1
@___asan_gen_.1548 = private unnamed_addr constant [37 x i8] c"switch.table.wcd938x_micbias_control\00", align 1
@llvm.compiler.used = appending global [469 x ptr] [ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_wcd938x_codec_driver_exit, ptr @__initcall__kmod_snd_soc_wcd938x__307_4529_wcd938x_codec_driver_init6, ptr @wcd938x_adc_enable_req._entry, ptr @wcd938x_adc_enable_req._entry_ptr, ptr @wcd938x_add_slave_components._entry, ptr @wcd938x_add_slave_components._entry.40, ptr @wcd938x_add_slave_components._entry_ptr, ptr @wcd938x_add_slave_components._entry_ptr.42, ptr @wcd938x_bind._entry, ptr @wcd938x_bind._entry.45, ptr @wcd938x_bind._entry.48, ptr @wcd938x_bind._entry.51, ptr @wcd938x_bind._entry.54, ptr @wcd938x_bind._entry.57, ptr @wcd938x_bind._entry.60, ptr @wcd938x_bind._entry.64, ptr @wcd938x_bind._entry.67, ptr @wcd938x_bind._entry.70, ptr @wcd938x_bind._entry.73, ptr @wcd938x_bind._entry_ptr, ptr @wcd938x_bind._entry_ptr.47, ptr @wcd938x_bind._entry_ptr.50, ptr @wcd938x_bind._entry_ptr.53, ptr @wcd938x_bind._entry_ptr.56, ptr @wcd938x_bind._entry_ptr.59, ptr @wcd938x_bind._entry_ptr.62, ptr @wcd938x_bind._entry_ptr.66, ptr @wcd938x_bind._entry_ptr.69, ptr @wcd938x_bind._entry_ptr.72, ptr @wcd938x_bind._entry_ptr.75, ptr @wcd938x_codec_driver_exit, ptr @wcd938x_codec_enable_dmic._entry, ptr @wcd938x_codec_enable_dmic._entry_ptr, ptr @wcd938x_dt_parse_micbias_info._entry, ptr @wcd938x_dt_parse_micbias_info._entry.25, ptr @wcd938x_dt_parse_micbias_info._entry.29, ptr @wcd938x_dt_parse_micbias_info._entry.33, ptr @wcd938x_dt_parse_micbias_info._entry_ptr, ptr @wcd938x_dt_parse_micbias_info._entry_ptr.27, ptr @wcd938x_dt_parse_micbias_info._entry_ptr.31, ptr @wcd938x_dt_parse_micbias_info._entry_ptr.35, ptr @wcd938x_ear_pa_put_gain._entry, ptr @wcd938x_ear_pa_put_gain._entry_ptr, ptr @wcd938x_irq_init._entry, ptr @wcd938x_irq_init._entry_ptr, ptr @wcd938x_mbhc_get_result_params._entry, ptr @wcd938x_mbhc_get_result_params._entry.330, ptr @wcd938x_mbhc_get_result_params._entry_ptr, ptr @wcd938x_mbhc_get_result_params._entry_ptr.332, ptr @wcd938x_mbhc_program_btn_thr._entry, ptr @wcd938x_mbhc_program_btn_thr._entry_ptr, ptr @wcd938x_micbias_control._entry, ptr @wcd938x_micbias_control._entry_ptr, ptr @wcd938x_populate_dt_data._entry, ptr @wcd938x_populate_dt_data._entry.14, ptr @wcd938x_populate_dt_data._entry.17, ptr @wcd938x_populate_dt_data._entry_ptr, ptr @wcd938x_populate_dt_data._entry_ptr.16, ptr @wcd938x_populate_dt_data._entry_ptr.19, ptr @wcd938x_probe._entry, ptr @wcd938x_probe._entry_ptr, ptr @wcd938x_soc_codec_probe._entry, ptr @wcd938x_soc_codec_probe._entry.279, ptr @wcd938x_soc_codec_probe._entry.283, ptr @wcd938x_soc_codec_probe._entry.286, ptr @wcd938x_soc_codec_probe._entry.289, ptr @wcd938x_soc_codec_probe._entry.291, ptr @wcd938x_soc_codec_probe._entry_ptr, ptr @wcd938x_soc_codec_probe._entry_ptr.281, ptr @wcd938x_soc_codec_probe._entry_ptr.285, ptr @wcd938x_soc_codec_probe._entry_ptr.288, ptr @wcd938x_soc_codec_probe._entry_ptr.290, ptr @wcd938x_soc_codec_probe._entry_ptr.293, ptr @wcd938x_codec_driver, ptr @.str, ptr @wcd938x_dt_match, ptr @wcd938x_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @wcd938x_comp_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @wcd938x_bind._key, ptr @wcd938x_regmap_config, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @soc_codec_dev_wcd938x, ptr @wcd938x_dais, ptr @.str.74, ptr @.str.76, ptr @wcd938x_defaults, ptr @wcd_domain_ops, ptr @.str.77, ptr @.str.78, ptr @wcd_irq_chip, ptr @.str.79, ptr @.str.80, ptr @wcd938x_irqs, ptr @wcd938x_regmap_irq_chip, ptr @wcd938x_snd_controls, ptr @wcd938x_audio_map, ptr @.str.82, ptr @.compoundliteral, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @.compoundliteral.92, ptr @.str.93, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @line_gain, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @ear_pa_gain, ptr @.compoundliteral.102, ptr @.str.103, ptr @.compoundliteral.104, ptr @.str.105, ptr @.compoundliteral.106, ptr @.str.107, ptr @.compoundliteral.108, ptr @.str.109, ptr @.compoundliteral.110, ptr @.str.111, ptr @.compoundliteral.112, ptr @.str.113, ptr @.compoundliteral.114, ptr @.str.115, ptr @.compoundliteral.116, ptr @.str.117, ptr @.compoundliteral.118, ptr @.str.119, ptr @.compoundliteral.120, ptr @.str.121, ptr @.compoundliteral.122, ptr @.str.123, ptr @.compoundliteral.124, ptr @.str.125, ptr @.compoundliteral.126, ptr @.str.127, ptr @.compoundliteral.128, ptr @.str.129, ptr @.compoundliteral.130, ptr @.str.131, ptr @.compoundliteral.132, ptr @.str.133, ptr @analog_gain, ptr @.compoundliteral.134, ptr @.str.135, ptr @.compoundliteral.136, ptr @.str.137, ptr @.compoundliteral.138, ptr @.str.139, ptr @.compoundliteral.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @tx_adc2_mux, ptr @.str.172, ptr @tx_adc3_mux, ptr @.str.173, ptr @tx_adc4_mux, ptr @.str.174, ptr @tx_hdr12_mux, ptr @.str.175, ptr @tx_hdr34_mux, ptr @.str.176, ptr @adc1_switch, ptr @.str.177, ptr @adc2_switch, ptr @.str.178, ptr @adc3_switch, ptr @.str.179, ptr @adc4_switch, ptr @.str.180, ptr @dmic1_switch, ptr @.str.181, ptr @dmic2_switch, ptr @.str.182, ptr @dmic3_switch, ptr @.str.183, ptr @dmic4_switch, ptr @.str.184, ptr @dmic5_switch, ptr @.str.185, ptr @dmic6_switch, ptr @.str.186, ptr @dmic7_switch, ptr @.str.187, ptr @dmic8_switch, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @rx_rdac3_mux, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @ear_rdac_switch, ptr @.str.227, ptr @aux_rdac_switch, ptr @.str.228, ptr @hphl_rdac_switch, ptr @.str.229, ptr @hphr_rdac_switch, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @wcd938x_dapm_widgets, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @adc2_enum, ptr @adc2_mux_text, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @adc3_enum, ptr @adc3_mux_text, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @adc4_enum, ptr @adc4_mux_text, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @hdr12_enum, ptr @hdr12_mux_text, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @hdr34_enum, ptr @hdr34_mux_text, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @tx_mode_bit, ptr @.str.255, ptr @.compoundliteral.256, ptr @.compoundliteral.257, ptr @.compoundliteral.258, ptr @.compoundliteral.259, ptr @.compoundliteral.260, ptr @.compoundliteral.261, ptr @.compoundliteral.262, ptr @.compoundliteral.263, ptr @.compoundliteral.264, ptr @.compoundliteral.265, ptr @.compoundliteral.266, ptr @.compoundliteral.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @rdac3_enum, ptr @rdac3_mux_text, ptr @.compoundliteral.271, ptr @.compoundliteral.272, ptr @.compoundliteral.273, ptr @.compoundliteral.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.280, ptr @.str.282, ptr @.str.284, ptr @wcd9380_snd_controls, ptr @.str.287, ptr @wcd9385_snd_controls, ptr @.str.292, ptr @.str.294, ptr @rx_hph_mode_mux_enum_wcd9380, ptr @.str.295, ptr @tx0_mode_enum_wcd9380, ptr @.str.296, ptr @tx1_mode_enum_wcd9380, ptr @.str.297, ptr @tx2_mode_enum_wcd9380, ptr @.str.298, ptr @tx3_mode_enum_wcd9380, ptr @rx_hph_mode_mux_text_wcd9380, ptr @.str.299, ptr @.str.300, ptr @.str.301, ptr @.str.302, ptr @.str.303, ptr @.str.304, ptr @.str.305, ptr @.str.306, ptr @.str.307, ptr @tx_mode_mux_text_wcd9380, ptr @.str.308, ptr @.str.309, ptr @.str.310, ptr @.str.311, ptr @.str.312, ptr @rx_hph_mode_mux_enum, ptr @tx0_mode_enum_wcd9385, ptr @tx1_mode_enum_wcd9385, ptr @tx2_mode_enum_wcd9385, ptr @tx3_mode_enum_wcd9385, ptr @rx_hph_mode_mux_text, ptr @.str.313, ptr @.str.314, ptr @tx_mode_mux_text, ptr @.str.315, ptr @.str.316, ptr @mbhc_cb, ptr @wcd_mbhc_fields, ptr @impedance_detect_controls, ptr @hph_type_detect_controls, ptr @.str.317, ptr @.str.318, ptr @.str.319, ptr @.str.320, ptr @.str.321, ptr @.str.322, ptr @.str.323, ptr @.str.324, ptr @.str.325, ptr @.str.326, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.331, ptr @.str.333, ptr @.str.334, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.338, ptr @.str.339, ptr @.compoundliteral.340, ptr @.str.341, ptr @.compoundliteral.342, ptr @.str.343, ptr @.str.344, ptr @.str.345, ptr @.compoundliteral.346, ptr @.str.347, ptr @wcd938x_sdw_dai_ops, ptr @.str.348, ptr @.str.349, ptr @.str.350, ptr @switch.table.wcd938x_codec_enable_dmic, ptr @switch.table.wcd938x_codec_enable_dmic.351, ptr @switch.table.wcd938x_codec_enable_dmic.352, ptr @switch.table.wcd938x_codec_enable_dmic.353, ptr @switch.table.wcd938x_adc_enable_req, ptr @switch.table.wcd938x_adc_enable_req.354, ptr @switch.table.wcd938x_adc_enable_req.355, ptr @switch.table.wcd938x_adc_enable_req.356, ptr @switch.table.wcd938x_adc_enable_req.357, ptr @switch.table.wcd938x_codec_enable_micbias_pullup, ptr @switch.table.wcd938x_codec_enable_micbias_pullup.358, ptr @switch.table.wcd938x_micbias_control], section "llvm.metadata"
@0 = internal global [428 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_codec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_dt_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_comp_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_populate_dt_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_populate_dt_data._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_populate_dt_data._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_dt_parse_micbias_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_dt_parse_micbias_info._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_dt_parse_micbias_info._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_dt_parse_micbias_info._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_add_slave_components._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_add_slave_components._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_bind._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_bind._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_bind._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_bind._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_bind._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_bind._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_bind._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_bind._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_bind._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_bind._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_codec_dev_wcd938x to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_dais to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_bind._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_defaults to i32), i32 3712, i32 4640, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_irqs to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_regmap_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_snd_controls to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_audio_map to i32), i32 3744, i32 4672, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @line_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ear_pa_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.104 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.106 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.108 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.110 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.112 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.114 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.116 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.118 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.120 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.122 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.124 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.126 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.128 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.130 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.132 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @analog_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.134 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.136 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.138 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.140 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_ear_pa_put_gain._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_adc2_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_adc3_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_adc4_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_hdr12_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_hdr34_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc1_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc2_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc4_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic1_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic2_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic3_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic4_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic5_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic6_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic7_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmic8_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_rdac3_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ear_rdac_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aux_rdac_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hphl_rdac_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hphr_rdac_switch to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_dapm_widgets to i32), i32 16380, i32 20448, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_codec_enable_dmic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_adc_enable_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc2_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc2_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc3_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc4_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc4_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdr12_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdr12_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdr34_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdr34_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_mode_bit to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.256 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.257 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.258 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.259 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.260 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.261 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.262 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.263 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.264 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.265 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.266 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.267 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_micbias_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdac3_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1251 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rdac3_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.271 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.272 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.273 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.274 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_soc_codec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_soc_codec_probe._entry.279 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_soc_codec_probe._entry.283 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd9380_snd_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_soc_codec_probe._entry.286 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd9385_snd_controls to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_soc_codec_probe._entry.289 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_soc_codec_probe._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_hph_mode_mux_enum_wcd9380 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx0_mode_enum_wcd9380 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx1_mode_enum_wcd9380 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx2_mode_enum_wcd9380 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx3_mode_enum_wcd9380 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_hph_mode_mux_text_wcd9380 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.299 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.303 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.306 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_mode_mux_text_wcd9380 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.309 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_hph_mode_mux_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx0_mode_enum_wcd9385 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx1_mode_enum_wcd9385 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx2_mode_enum_wcd9385 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx3_mode_enum_wcd9385 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rx_hph_mode_mux_text to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tx_mode_mux_text to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.316 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbhc_cb to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd_mbhc_fields to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @impedance_detect_controls to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hph_type_detect_controls to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.318 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.319 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.320 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.321 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.326 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_mbhc_get_result_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_mbhc_get_result_params._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_mbhc_program_btn_thr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1483 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.338 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.340 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1507 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.342 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1511 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.343 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.346 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.1521 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.347 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wcd938x_sdw_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.1525 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.349 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.350 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1534 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd938x_codec_enable_dmic to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1537 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd938x_codec_enable_dmic.351 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1538 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd938x_codec_enable_dmic.352 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1539 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd938x_codec_enable_dmic.353 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1540 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd938x_adc_enable_req to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1541 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd938x_adc_enable_req.354 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1542 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd938x_adc_enable_req.355 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1543 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd938x_adc_enable_req.356 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1544 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd938x_adc_enable_req.357 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1545 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd938x_codec_enable_micbias_pullup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1546 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd938x_codec_enable_micbias_pullup.358 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1547 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.wcd938x_micbias_control to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1548 to i32), i32 ptrtoint (ptr @___asan_gen_.1535 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @wcd938x_codec_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_codec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @wcd938x_codec_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i29.i = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %prop_val.i.i = alloca i32, align 4
  %match = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %match) #9
  %0 = ptrtoint ptr %match to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %match, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 456, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i, align 4
  %micb_lock = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %micb_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @wcd938x_probe.__key) #9
  %mbhc_cfg.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 9
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node.i, align 8
  %call.i.i = tail call i32 @of_get_named_gpio_flags(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 0, ptr noundef null) #9
  %reset_gpio.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 25
  %4 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call.i.i, ptr %reset_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %wcd938x_populate_dt_data.exit, label %if.end.i

if.end.i:                                         ; preds = %if.end
  %supplies.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 15
  %5 = ptrtoint ptr %supplies.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.10, ptr %supplies.i, align 4
  %arrayidx5.i = getelementptr %struct.wcd938x_priv, ptr %call.i, i32 0, i32 15, i32 1
  %6 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.11, ptr %arrayidx5.i, align 4
  %arrayidx8.i = getelementptr %struct.wcd938x_priv, ptr %call.i, i32 0, i32 15, i32 2
  %7 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.12, ptr %arrayidx8.i, align 4
  %arrayidx11.i = getelementptr %struct.wcd938x_priv, ptr %call.i, i32 0, i32 15, i32 3
  %8 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.13, ptr %arrayidx11.i, align 4
  %call14.i = tail call i32 @regulator_bulk_get(ptr noundef %dev1, i32 noundef 4, ptr noundef %supplies.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool.not.i, label %if.end19.i, label %do.end18.i

do.end18.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call14.i) #12
  br label %do.end7

if.end19.i:                                       ; preds = %if.end.i
  %call22.i = tail call i32 @regulator_bulk_enable(i32 noundef 4, ptr noundef %supplies.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool23.not.i = icmp eq i32 %call22.i, 0
  br i1 %tobool23.not.i, label %if.end28.i, label %do.end27.i

do.end27.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18, i32 noundef %call22.i) #12
  br label %do.end7

if.end28.i:                                       ; preds = %if.end19.i
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop_val.i.i) #9
  %11 = ptrtoint ptr %prop_val.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %prop_val.i.i, align 4
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.20, ptr noundef nonnull %prop_val.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.end.i.i

if.then.i.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %prop_val.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prop_val.i.i, align 4
  %div.i.i = udiv i32 %13, 1000
  %micb1_mv.i.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 26
  %14 = ptrtoint ptr %micb1_mv.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div.i.i, ptr %micb1_mv.i.i, align 4
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22) #12
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i
  %call.i.i41.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.24, ptr noundef nonnull %prop_val.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i41.i.i)
  %tobool2.not.i.i = icmp sgt i32 %call.i.i41.i.i, -1
  br i1 %tobool2.not.i.i, label %if.then3.i.i, label %do.end8.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %prop_val.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %prop_val.i.i, align 4
  %div4.i.i = udiv i32 %16, 1000
  %micb2_mv.i.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 27
  %17 = ptrtoint ptr %micb2_mv.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div4.i.i, ptr %micb2_mv.i.i, align 4
  br label %if.end9.i.i

do.end8.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.22) #12
  br label %if.end9.i.i

if.end9.i.i:                                      ; preds = %do.end8.i.i, %if.then3.i.i
  %call.i.i42.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.28, ptr noundef nonnull %prop_val.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i42.i.i)
  %tobool11.not.i.i = icmp sgt i32 %call.i.i42.i.i, -1
  br i1 %tobool11.not.i.i, label %if.then12.i.i, label %do.end17.i.i

if.then12.i.i:                                    ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %prop_val.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prop_val.i.i, align 4
  %div13.i.i = udiv i32 %19, 1000
  %micb3_mv.i.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 28
  %20 = ptrtoint ptr %micb3_mv.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div13.i.i, ptr %micb3_mv.i.i, align 4
  br label %if.end18.i.i

do.end17.i.i:                                     ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.22) #12
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %do.end17.i.i, %if.then12.i.i
  %call.i.i43.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %10, ptr noundef nonnull @.str.32, ptr noundef nonnull %prop_val.i.i, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i43.i.i)
  %tobool20.not.i.i = icmp sgt i32 %call.i.i43.i.i, -1
  br i1 %tobool20.not.i.i, label %if.then21.i.i, label %do.end26.i.i

if.then21.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %prop_val.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %prop_val.i.i, align 4
  %div22.i.i = udiv i32 %22, 1000
  %micb4_mv.i.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 29
  %23 = ptrtoint ptr %micb4_mv.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div22.i.i, ptr %micb4_mv.i.i, align 4
  br label %wcd938x_populate_dt_data.exit.thread58

do.end26.i.i:                                     ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.22) #12
  br label %wcd938x_populate_dt_data.exit.thread58

wcd938x_populate_dt_data.exit.thread58:           ; preds = %do.end26.i.i, %if.then21.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop_val.i.i) #9
  %mbhc_micbias.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 9, i32 10
  %24 = ptrtoint ptr %mbhc_micbias.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %mbhc_micbias.i, align 4
  %anc_micbias.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 9, i32 11
  %25 = ptrtoint ptr %anc_micbias.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %anc_micbias.i, align 4
  %v_hs_max.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 9, i32 2
  %26 = ptrtoint ptr %v_hs_max.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1600, ptr %v_hs_max.i, align 4
  %num_btn.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 9, i32 3
  %27 = ptrtoint ptr %num_btn.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 8, ptr %num_btn.i, align 4
  %micb2_mv.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 27
  %28 = ptrtoint ptr %micb2_mv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %micb2_mv.i, align 4
  %micb_mv.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 9, i32 17
  %30 = ptrtoint ptr %micb_mv.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %micb_mv.i, align 4
  %linein_th.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 9, i32 8
  %31 = ptrtoint ptr %linein_th.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 5000, ptr %linein_th.i, align 4
  %hs_thr.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 9, i32 15
  %32 = ptrtoint ptr %hs_thr.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1700, ptr %hs_thr.i, align 4
  %hph_thr.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 9, i32 16
  %33 = ptrtoint ptr %hph_thr.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 50, ptr %hph_thr.i, align 4
  %call29.i = call i32 @wcd_dt_parse_mbhc_data(ptr noundef %dev1, ptr noundef %mbhc_cfg.i) #9
  br label %if.end8

wcd938x_populate_dt_data.exit:                    ; preds = %if.end
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.8, i32 noundef %call.i.i) #12
  %34 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %reset_gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool3.not = icmp eq i32 %35, 0
  br i1 %tobool3.not, label %wcd938x_populate_dt_data.exit.if.end8_crit_edge, label %wcd938x_populate_dt_data.exit.do.end7_crit_edge

wcd938x_populate_dt_data.exit.do.end7_crit_edge:  ; preds = %wcd938x_populate_dt_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

wcd938x_populate_dt_data.exit.if.end8_crit_edge:  ; preds = %wcd938x_populate_dt_data.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

do.end7:                                          ; preds = %wcd938x_populate_dt_data.exit.do.end7_crit_edge, %do.end27.i, %do.end18.i
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #12
  br label %cleanup

if.end8:                                          ; preds = %wcd938x_populate_dt_data.exit.if.end8_crit_edge, %wcd938x_populate_dt_data.exit.thread58
  %36 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #9
  %38 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i44 = call i32 @__of_parse_phandle_with_args(ptr noundef %37, ptr noundef nonnull @.str.36, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44)
  %tobool.not.i.i45 = icmp eq i32 %call.i.i44, 0
  br i1 %tobool.not.i.i45, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  %rxnode36.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 4
  %39 = ptrtoint ptr %rxnode36.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %rxnode36.i, align 4
  br label %do.end.i47

of_parse_phandle.exit.i:                          ; preds = %if.end8
  %40 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #9
  %rxnode.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 4
  %42 = ptrtoint ptr %rxnode.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %rxnode.i, align 4
  %tobool.not.i46 = icmp eq ptr %41, null
  br i1 %tobool.not.i46, label %of_parse_phandle.exit.i.do.end.i47_crit_edge, label %if.end.i48

of_parse_phandle.exit.i.do.end.i47_crit_edge:     ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i47

do.end.i47:                                       ; preds = %of_parse_phandle.exit.i.do.end.i47_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38) #12
  br label %cleanup

if.end.i48:                                       ; preds = %of_parse_phandle.exit.i
  %call3.i = call ptr @of_node_get(ptr noundef nonnull %41) #9
  %43 = ptrtoint ptr %rxnode.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %rxnode.i, align 4
  call void @component_match_add_release(ptr noundef %dev1, ptr noundef nonnull %match, ptr noundef nonnull @wcd938x_release_of, ptr noundef nonnull @wcd938x_compare_of, ptr noundef %44) #9
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i29.i) #9
  %45 = call ptr @memset(ptr %args.i29.i, i32 255, i32 72)
  %call.i30.i = call i32 @__of_parse_phandle_with_args(ptr noundef %37, ptr noundef nonnull @.str.39, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i29.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30.i)
  %tobool.not.i31.i = icmp eq i32 %call.i30.i, 0
  br i1 %tobool.not.i31.i, label %of_parse_phandle.exit34.i, label %of_parse_phandle.exit34.thread.i

of_parse_phandle.exit34.thread.i:                 ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i29.i) #9
  %txnode39.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 5
  %46 = ptrtoint ptr %txnode39.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %txnode39.i, align 4
  br label %do.end11.i

of_parse_phandle.exit34.i:                        ; preds = %if.end.i48
  %47 = ptrtoint ptr %args.i29.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %args.i29.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i29.i) #9
  %txnode.i = getelementptr inbounds %struct.wcd938x_priv, ptr %call.i, i32 0, i32 5
  %49 = ptrtoint ptr %txnode.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %48, ptr %txnode.i, align 4
  %tobool7.not.i = icmp eq ptr %48, null
  br i1 %tobool7.not.i, label %of_parse_phandle.exit34.i.do.end11.i_crit_edge, label %if.end12

of_parse_phandle.exit34.i.do.end11.i_crit_edge:   ; preds = %of_parse_phandle.exit34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end11.i

do.end11.i:                                       ; preds = %of_parse_phandle.exit34.i.do.end11.i_crit_edge, %of_parse_phandle.exit34.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.38) #12
  br label %cleanup

if.end12:                                         ; preds = %of_parse_phandle.exit34.i
  %call14.i49 = call ptr @of_node_get(ptr noundef nonnull %48) #9
  %50 = ptrtoint ptr %txnode.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %txnode.i, align 4
  call void @component_match_add_release(ptr noundef %dev1, ptr noundef nonnull %match, ptr noundef nonnull @wcd938x_release_of, ptr noundef nonnull @wcd938x_compare_of, ptr noundef %51) #9
  %52 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %reset_gpio.i, align 4
  %call.i.i52 = call ptr @gpio_to_desc(i32 noundef %53) #9
  %call1.i.i = call i32 @gpiod_direction_output_raw(ptr noundef %call.i.i52, i32 noundef 0) #9
  call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #9
  %54 = ptrtoint ptr %reset_gpio.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %reset_gpio.i, align 4
  %call.i1.i = call ptr @gpio_to_desc(i32 noundef %55) #9
  call void @gpiod_set_raw_value(ptr noundef %call.i1.i, i32 noundef 1) #9
  call void @usleep_range_state(i32 noundef 20, i32 noundef 30, i32 noundef 2) #9
  %56 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %match, align 4
  %call14 = call i32 @component_master_add_with_match(ptr noundef %dev1, ptr noundef nonnull @wcd938x_comp_ops, ptr noundef %57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 1000) #9
  call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #9
  %call.i53 = call i64 @ktime_get_mono_fast_ns() #9
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %58 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store volatile i64 %call.i53, ptr %last_busy.i, align 8
  %call.i54 = call i32 @__pm_runtime_set_status(ptr noundef %dev1, i32 noundef 0) #9
  call void @pm_runtime_enable(ptr noundef %dev1) #9
  %call.i55 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end12.cleanup_crit_edge, %do.end11.i, %do.end.i47, %do.end7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end7 ], [ 0, %if.end17 ], [ -12, %entry.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ -19, %do.end11.i ], [ -19, %do.end.i47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %match) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_master_del(ptr noundef %dev, ptr noundef nonnull @wcd938x_comp_ops) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_master_add_with_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcd_dt_parse_mbhc_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_named_gpio_flags(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_match_add_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_release_of(ptr nocapture noundef readnone %dev, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @of_node_put(ptr noundef %data) #9
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_compare_of(ptr nocapture noundef readonly %dev, ptr noundef readnone %data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %cmp = icmp eq ptr %1, %data
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_direction_output_raw(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_bind(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @component_bind_all(ptr noundef %dev, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44, i32 noundef %call1) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %rxnode = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %rxnode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rxnode, align 4
  %call2 = tail call ptr @wcd938x_sdw_device_get(ptr noundef %3) #9
  %rxdev = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rxdev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call2, ptr %rxdev, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %do.end8, label %if.end9

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %driver_data.i158 = getelementptr inbounds %struct.device, ptr %call2, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i158 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i158, align 4
  %sdw_priv = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %sdw_priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %sdw_priv, align 4
  %wcd938x14 = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %6, i32 0, i32 9
  %8 = ptrtoint ptr %wcd938x14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %1, ptr %wcd938x14, align 4
  %txnode = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %txnode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %txnode, align 4
  %call15 = tail call ptr @wcd938x_sdw_device_get(ptr noundef %10) #9
  %txdev = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %txdev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %txdev, align 4
  %tobool17.not = icmp eq ptr %call15, null
  br i1 %tobool17.not, label %do.end21, label %if.end22

do.end21:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #12
  br label %cleanup

if.end22:                                         ; preds = %if.end9
  %driver_data.i159 = getelementptr inbounds %struct.device, ptr %call15, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i159 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i159, align 4
  %arrayidx26 = getelementptr %struct.wcd938x_priv, ptr %1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %arrayidx26, align 4
  %wcd938x29 = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %13, i32 0, i32 9
  %15 = ptrtoint ptr %wcd938x29 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %1, ptr %wcd938x29, align 4
  %16 = ptrtoint ptr %txdev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %txdev, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 -8
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %1, align 4
  %tobool32.not = icmp eq ptr %add.ptr, null
  br i1 %tobool32.not, label %do.end36, label %if.end37

do.end36:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #12
  br label %cleanup

if.end37:                                         ; preds = %if.end22
  %19 = ptrtoint ptr %rxdev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rxdev, align 4
  %call40 = tail call ptr @device_link_add(ptr noundef %20, ptr noundef %17, i32 noundef 5) #9
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %do.end45, label %if.end46

do.end45:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55) #12
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %21 = ptrtoint ptr %txdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %txdev, align 4
  %call48 = tail call ptr @device_link_add(ptr noundef %dev, ptr noundef %22, i32 noundef 5) #9
  %tobool49.not = icmp eq ptr %call48, null
  br i1 %tobool49.not, label %do.end53, label %if.end54

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #12
  br label %cleanup

if.end54:                                         ; preds = %if.end46
  %23 = ptrtoint ptr %rxdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %rxdev, align 4
  %call56 = tail call ptr @device_link_add(ptr noundef %dev, ptr noundef %24, i32 noundef 5) #9
  %tobool57.not = icmp eq ptr %call56, null
  br i1 %tobool57.not, label %do.end61, label %if.end62

do.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #12
  br label %cleanup

if.end62:                                         ; preds = %if.end54
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %call65 = tail call ptr @__devm_regmap_init_sdw(ptr noundef %26, ptr noundef nonnull @wcd938x_regmap_config, ptr noundef nonnull @wcd938x_bind._key, ptr noundef nonnull @.str.63) #9
  %regmap = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call65, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call65, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end71, label %if.end74

do.end71:                                         ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.44) #12
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %cleanup

if.end74:                                         ; preds = %if.end62
  %call1.i.i = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @wcd_domain_ops, ptr noundef null) #9
  %virq.i = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 12
  %31 = ptrtoint ptr %virq.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call1.i.i, ptr %virq.i, align 4
  %tobool.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i, label %wcd938x_irq_init.exit.thread, label %wcd938x_irq_init.exit

wcd938x_irq_init.exit.thread:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.78) #12
  br label %do.end80

wcd938x_irq_init.exit:                            ; preds = %if.end74
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @irq_create_mapping_affinity(ptr noundef nonnull %call1.i.i, i32 noundef 0, ptr noundef null) #9
  %irq_chip.i = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 14
  %call4.i = tail call i32 @devm_regmap_add_irq_chip(ptr noundef %dev, ptr noundef %33, i32 noundef %call.i.i, i32 noundef 8192, i32 noundef 0, ptr noundef nonnull @wcd938x_regmap_irq_chip, ptr noundef %irq_chip.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool76.not = icmp eq i32 %call4.i, 0
  br i1 %tobool76.not, label %if.end81, label %wcd938x_irq_init.exit.do.end80_crit_edge

wcd938x_irq_init.exit.do.end80_crit_edge:         ; preds = %wcd938x_irq_init.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end80

do.end80:                                         ; preds = %wcd938x_irq_init.exit.do.end80_crit_edge, %wcd938x_irq_init.exit.thread
  %retval.0.i166 = phi i32 [ -22, %wcd938x_irq_init.exit.thread ], [ %call4.i, %wcd938x_irq_init.exit.do.end80_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.44, i32 noundef %retval.0.i166) #12
  br label %cleanup

if.end81:                                         ; preds = %wcd938x_irq_init.exit
  %34 = ptrtoint ptr %virq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %virq.i, align 4
  %36 = ptrtoint ptr %sdw_priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %sdw_priv, align 4
  %slave_irq = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %slave_irq to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %slave_irq, align 4
  %39 = load ptr, ptr %virq.i, align 4
  %40 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx26, align 4
  %slave_irq87 = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %slave_irq87 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %slave_irq87, align 4
  %micb1_mv.i = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 26
  %43 = ptrtoint ptr %micb1_mv.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %micb1_mv.i, align 4
  %45 = add i32 %44, -2851
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1851, i32 %45)
  %46 = icmp ult i32 %45, -1851
  %micb2_mv.i = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 27
  %47 = ptrtoint ptr %micb2_mv.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %micb2_mv.i, align 4
  %49 = add i32 %48, -2851
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1851, i32 %49)
  %50 = icmp ult i32 %49, -1851
  %micb3_mv.i = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 28
  %51 = ptrtoint ptr %micb3_mv.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %micb3_mv.i, align 4
  %53 = add i32 %52, -2851
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1851, i32 %53)
  %54 = icmp ult i32 %53, -1851
  %micb4_mv.i = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 29
  %55 = ptrtoint ptr %micb4_mv.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %micb4_mv.i, align 4
  %57 = add i32 %56, -2851
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1851, i32 %57)
  %58 = icmp ult i32 %57, -1851
  %or.cond.i = select i1 %46, i1 true, i1 %50
  %or.cond30.i = select i1 %or.cond.i, i1 true, i1 %54
  %or.cond31.i = select i1 %or.cond30.i, i1 true, i1 %58
  br i1 %or.cond31.i, label %do.end92, label %if.end93

do.end92:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.44) #12
  br label %cleanup

if.end93:                                         ; preds = %if.end81
  %59 = trunc i32 %56 to i16
  %div.i39.lhs.trunc.i = add nsw i16 %59, -1000
  %div.i3944.i = udiv i16 %div.i39.lhs.trunc.i, 50
  %div.i39.zext.i = zext i16 %div.i3944.i to i32
  %60 = trunc i32 %52 to i16
  %div.i36.lhs.trunc.i = add nsw i16 %60, -1000
  %div.i3645.i = udiv i16 %div.i36.lhs.trunc.i, 50
  %div.i36.zext.i = zext i16 %div.i3645.i to i32
  %61 = trunc i32 %48 to i16
  %div.i33.lhs.trunc.i = add nsw i16 %61, -1000
  %div.i3346.i = udiv i16 %div.i33.lhs.trunc.i, 50
  %div.i33.zext.i = zext i16 %div.i3346.i to i32
  %62 = trunc i32 %44 to i16
  %div.i.lhs.trunc.i = add nsw i16 %62, -1000
  %div.i47.i = udiv i16 %div.i.lhs.trunc.i, 50
  %div.i.zext.i = zext i16 %div.i47.i to i32
  %63 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %regmap, align 4
  %call.i.i161 = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 12322, i32 noundef 63, i32 noundef %div.i.zext.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %65 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regmap, align 4
  %call.i41.i = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 12323, i32 noundef 63, i32 noundef %div.i33.zext.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %67 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regmap, align 4
  %call.i42.i = tail call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 12325, i32 noundef 63, i32 noundef %div.i36.zext.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %69 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regmap, align 4
  %call.i43.i = tail call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 12326, i32 noundef 63, i32 noundef %div.i39.zext.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call94 = tail call i32 @snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_codec_dev_wcd938x, ptr noundef nonnull @wcd938x_dais, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end93.cleanup_crit_edge, label %do.end99

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end99:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.44) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end99, %if.end93.cleanup_crit_edge, %do.end92, %do.end80, %do.end71, %do.end61, %do.end53, %do.end45, %do.end36, %do.end21, %do.end8, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ %30, %do.end71 ], [ %retval.0.i166, %do.end80 ], [ -22, %do.end92 ], [ -22, %do.end61 ], [ -22, %do.end53 ], [ -22, %do.end45 ], [ -22, %do.end36 ], [ -22, %do.end21 ], [ -22, %do.end8 ], [ %call94, %do.end99 ], [ 0, %if.end93.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_unbind(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %txdev = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %txdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %txdev, align 4
  tail call void @device_link_remove(ptr noundef %dev, ptr noundef %3) #9
  %rxdev = getelementptr inbounds %struct.wcd938x_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rxdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rxdev, align 4
  tail call void @device_link_remove(ptr noundef %dev, ptr noundef %5) #9
  %6 = ptrtoint ptr %rxdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rxdev, align 4
  %8 = ptrtoint ptr %txdev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %txdev, align 4
  tail call void @device_link_remove(ptr noundef %7, ptr noundef %9) #9
  tail call void @snd_soc_unregister_component(ptr noundef %dev) #9
  tail call void @component_unbind_all(ptr noundef %dev, ptr noundef %1) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_bind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wcd938x_sdw_device_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_sdw(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wcd938x_writeable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @wcd938x_rdwr_register(i32 noundef %reg)
  ret i1 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wcd938x_readable_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc zeroext i1 @wcd938x_readonly_register(i32 noundef %reg)
  br i1 %call, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call fastcc zeroext i1 @wcd938x_rdwr_register(i32 noundef %reg)
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %call1, %if.then ], [ true, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @wcd938x_volatile_register(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 12289, i32 %reg)
  %cmp = icmp ult i32 %reg, 12289
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 13317, i32 %reg)
  %cmp1 = icmp eq i32 %reg, 13317
  br i1 %cmp1, label %if.end.return_crit_edge, label %if.end3

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call fastcc zeroext i1 @wcd938x_readonly_register(i32 noundef %reg)
  br label %return

return:                                           ; preds = %if.end3, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ false, %entry.return_crit_edge ], [ true, %if.end.return_crit_edge ], [ %call, %if.end3 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @wcd938x_rdwr_register(i32 noundef %reg) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %reg, label %sw.epilog [
    i32 12288, label %entry.return_crit_edge
    i32 12289, label %entry.return_crit_edge1
    i32 12296, label %entry.return_crit_edge2
    i32 12297, label %entry.return_crit_edge3
    i32 12298, label %entry.return_crit_edge4
    i32 12299, label %entry.return_crit_edge5
    i32 12302, label %entry.return_crit_edge6
    i32 12303, label %entry.return_crit_edge7
    i32 12304, label %entry.return_crit_edge8
    i32 12305, label %entry.return_crit_edge9
    i32 12306, label %entry.return_crit_edge10
    i32 12307, label %entry.return_crit_edge11
    i32 12308, label %entry.return_crit_edge12
    i32 12309, label %entry.return_crit_edge13
    i32 12310, label %entry.return_crit_edge14
    i32 12314, label %entry.return_crit_edge15
    i32 12315, label %entry.return_crit_edge16
    i32 12316, label %entry.return_crit_edge17
    i32 12317, label %entry.return_crit_edge18
    i32 12318, label %entry.return_crit_edge19
    i32 12319, label %entry.return_crit_edge20
    i32 12320, label %entry.return_crit_edge21
    i32 12321, label %entry.return_crit_edge22
    i32 12322, label %entry.return_crit_edge23
    i32 12323, label %entry.return_crit_edge24
    i32 12324, label %entry.return_crit_edge25
    i32 12325, label %entry.return_crit_edge26
    i32 12326, label %entry.return_crit_edge27
    i32 12328, label %entry.return_crit_edge28
    i32 12329, label %entry.return_crit_edge29
    i32 12352, label %entry.return_crit_edge30
    i32 12353, label %entry.return_crit_edge31
    i32 12374, label %entry.return_crit_edge32
    i32 12375, label %entry.return_crit_edge33
    i32 12376, label %entry.return_crit_edge34
    i32 12377, label %entry.return_crit_edge35
    i32 12378, label %entry.return_crit_edge36
    i32 12380, label %entry.return_crit_edge37
    i32 12391, label %entry.return_crit_edge38
    i32 12392, label %entry.return_crit_edge39
    i32 12393, label %entry.return_crit_edge40
    i32 12394, label %entry.return_crit_edge41
    i32 12395, label %entry.return_crit_edge42
    i32 12396, label %entry.return_crit_edge43
    i32 12397, label %entry.return_crit_edge44
    i32 12398, label %entry.return_crit_edge45
    i32 12399, label %entry.return_crit_edge46
    i32 12400, label %entry.return_crit_edge47
    i32 12401, label %entry.return_crit_edge48
    i32 12402, label %entry.return_crit_edge49
    i32 12403, label %entry.return_crit_edge50
    i32 12404, label %entry.return_crit_edge51
    i32 12405, label %entry.return_crit_edge52
    i32 12406, label %entry.return_crit_edge53
    i32 12407, label %entry.return_crit_edge54
    i32 12408, label %entry.return_crit_edge55
    i32 12409, label %entry.return_crit_edge56
    i32 12410, label %entry.return_crit_edge57
    i32 12411, label %entry.return_crit_edge58
    i32 12412, label %entry.return_crit_edge59
    i32 12413, label %entry.return_crit_edge60
    i32 12414, label %entry.return_crit_edge61
    i32 12415, label %entry.return_crit_edge62
    i32 12416, label %entry.return_crit_edge63
    i32 12417, label %entry.return_crit_edge64
    i32 12418, label %entry.return_crit_edge65
    i32 12419, label %entry.return_crit_edge66
    i32 12420, label %entry.return_crit_edge67
    i32 12423, label %entry.return_crit_edge68
    i32 12424, label %entry.return_crit_edge69
    i32 12425, label %entry.return_crit_edge70
    i32 12426, label %entry.return_crit_edge71
    i32 12427, label %entry.return_crit_edge72
    i32 12428, label %entry.return_crit_edge73
    i32 12431, label %entry.return_crit_edge74
    i32 12432, label %entry.return_crit_edge75
    i32 12433, label %entry.return_crit_edge76
    i32 12434, label %entry.return_crit_edge77
    i32 12435, label %entry.return_crit_edge78
    i32 12436, label %entry.return_crit_edge79
    i32 12439, label %entry.return_crit_edge80
    i32 12440, label %entry.return_crit_edge81
    i32 12441, label %entry.return_crit_edge82
    i32 12442, label %entry.return_crit_edge83
    i32 12443, label %entry.return_crit_edge84
    i32 12444, label %entry.return_crit_edge85
    i32 12445, label %entry.return_crit_edge86
    i32 12446, label %entry.return_crit_edge87
    i32 12447, label %entry.return_crit_edge88
    i32 12448, label %entry.return_crit_edge89
    i32 12449, label %entry.return_crit_edge90
    i32 12450, label %entry.return_crit_edge91
    i32 12451, label %entry.return_crit_edge92
    i32 12452, label %entry.return_crit_edge93
    i32 12453, label %entry.return_crit_edge94
    i32 12454, label %entry.return_crit_edge95
    i32 12455, label %entry.return_crit_edge96
    i32 12456, label %entry.return_crit_edge97
    i32 12457, label %entry.return_crit_edge98
    i32 12458, label %entry.return_crit_edge99
    i32 12459, label %entry.return_crit_edge100
    i32 12460, label %entry.return_crit_edge101
    i32 12461, label %entry.return_crit_edge102
    i32 12462, label %entry.return_crit_edge103
    i32 12463, label %entry.return_crit_edge104
    i32 12464, label %entry.return_crit_edge105
    i32 12465, label %entry.return_crit_edge106
    i32 12466, label %entry.return_crit_edge107
    i32 12467, label %entry.return_crit_edge108
    i32 12468, label %entry.return_crit_edge109
    i32 12469, label %entry.return_crit_edge110
    i32 12470, label %entry.return_crit_edge111
    i32 12471, label %entry.return_crit_edge112
    i32 12472, label %entry.return_crit_edge113
    i32 12473, label %entry.return_crit_edge114
    i32 12474, label %entry.return_crit_edge115
    i32 12475, label %entry.return_crit_edge116
    i32 12476, label %entry.return_crit_edge117
    i32 12477, label %entry.return_crit_edge118
    i32 12478, label %entry.return_crit_edge119
    i32 12479, label %entry.return_crit_edge120
    i32 12480, label %entry.return_crit_edge121
    i32 12481, label %entry.return_crit_edge122
    i32 12482, label %entry.return_crit_edge123
    i32 12483, label %entry.return_crit_edge124
    i32 12484, label %entry.return_crit_edge125
    i32 12485, label %entry.return_crit_edge126
    i32 12486, label %entry.return_crit_edge127
    i32 12487, label %entry.return_crit_edge128
    i32 12488, label %entry.return_crit_edge129
    i32 12491, label %entry.return_crit_edge130
    i32 12492, label %entry.return_crit_edge131
    i32 12493, label %entry.return_crit_edge132
    i32 12494, label %entry.return_crit_edge133
    i32 12495, label %entry.return_crit_edge134
    i32 12496, label %entry.return_crit_edge135
    i32 12497, label %entry.return_crit_edge136
    i32 12498, label %entry.return_crit_edge137
    i32 12499, label %entry.return_crit_edge138
    i32 12500, label %entry.return_crit_edge139
    i32 12501, label %entry.return_crit_edge140
    i32 12502, label %entry.return_crit_edge141
    i32 12503, label %entry.return_crit_edge142
    i32 12504, label %entry.return_crit_edge143
    i32 12505, label %entry.return_crit_edge144
    i32 12506, label %entry.return_crit_edge145
    i32 12507, label %entry.return_crit_edge146
    i32 12508, label %entry.return_crit_edge147
    i32 12509, label %entry.return_crit_edge148
    i32 12510, label %entry.return_crit_edge149
    i32 12511, label %entry.return_crit_edge150
    i32 12512, label %entry.return_crit_edge151
    i32 12513, label %entry.return_crit_edge152
    i32 12514, label %entry.return_crit_edge153
    i32 12515, label %entry.return_crit_edge154
    i32 12521, label %entry.return_crit_edge155
    i32 12522, label %entry.return_crit_edge156
    i32 12523, label %entry.return_crit_edge157
    i32 12524, label %entry.return_crit_edge158
    i32 12525, label %entry.return_crit_edge159
    i32 12526, label %entry.return_crit_edge160
    i32 12544, label %entry.return_crit_edge161
    i32 12545, label %entry.return_crit_edge162
    i32 12546, label %entry.return_crit_edge163
    i32 12547, label %entry.return_crit_edge164
    i32 12548, label %entry.return_crit_edge165
    i32 12575, label %entry.return_crit_edge166
    i32 12576, label %entry.return_crit_edge167
    i32 12577, label %entry.return_crit_edge168
    i32 12578, label %entry.return_crit_edge169
    i32 12579, label %entry.return_crit_edge170
    i32 12580, label %entry.return_crit_edge171
    i32 12583, label %entry.return_crit_edge172
    i32 12584, label %entry.return_crit_edge173
    i32 12585, label %entry.return_crit_edge174
    i32 12586, label %entry.return_crit_edge175
    i32 12588, label %entry.return_crit_edge176
    i32 12594, label %entry.return_crit_edge177
    i32 12595, label %entry.return_crit_edge178
    i32 12596, label %entry.return_crit_edge179
    i32 12597, label %entry.return_crit_edge180
    i32 12598, label %entry.return_crit_edge181
    i32 12599, label %entry.return_crit_edge182
    i32 12600, label %entry.return_crit_edge183
    i32 12601, label %entry.return_crit_edge184
    i32 12602, label %entry.return_crit_edge185
    i32 12603, label %entry.return_crit_edge186
    i32 12604, label %entry.return_crit_edge187
    i32 12605, label %entry.return_crit_edge188
    i32 12606, label %entry.return_crit_edge189
    i32 12607, label %entry.return_crit_edge190
    i32 12608, label %entry.return_crit_edge191
    i32 12609, label %entry.return_crit_edge192
    i32 12613, label %entry.return_crit_edge193
    i32 12614, label %entry.return_crit_edge194
    i32 12615, label %entry.return_crit_edge195
    i32 12719, label %entry.return_crit_edge196
    i32 12720, label %entry.return_crit_edge197
    i32 12721, label %entry.return_crit_edge198
    i32 12722, label %entry.return_crit_edge199
    i32 12727, label %entry.return_crit_edge200
    i32 12728, label %entry.return_crit_edge201
    i32 12729, label %entry.return_crit_edge202
    i32 12730, label %entry.return_crit_edge203
    i32 12733, label %entry.return_crit_edge204
    i32 12734, label %entry.return_crit_edge205
    i32 12735, label %entry.return_crit_edge206
    i32 12736, label %entry.return_crit_edge207
    i32 12737, label %entry.return_crit_edge208
    i32 12738, label %entry.return_crit_edge209
    i32 12740, label %entry.return_crit_edge210
    i32 12741, label %entry.return_crit_edge211
    i32 12742, label %entry.return_crit_edge212
    i32 12743, label %entry.return_crit_edge213
    i32 12744, label %entry.return_crit_edge214
    i32 12745, label %entry.return_crit_edge215
    i32 12752, label %entry.return_crit_edge216
    i32 12753, label %entry.return_crit_edge217
    i32 12755, label %entry.return_crit_edge218
    i32 12756, label %entry.return_crit_edge219
    i32 12757, label %entry.return_crit_edge220
    i32 12758, label %entry.return_crit_edge221
    i32 12759, label %entry.return_crit_edge222
    i32 12760, label %entry.return_crit_edge223
    i32 12761, label %entry.return_crit_edge224
    i32 12762, label %entry.return_crit_edge225
    i32 12763, label %entry.return_crit_edge226
    i32 12764, label %entry.return_crit_edge227
    i32 12765, label %entry.return_crit_edge228
    i32 12766, label %entry.return_crit_edge229
    i32 12767, label %entry.return_crit_edge230
    i32 12768, label %entry.return_crit_edge231
    i32 12769, label %entry.return_crit_edge232
    i32 12770, label %entry.return_crit_edge233
    i32 12771, label %entry.return_crit_edge234
    i32 12772, label %entry.return_crit_edge235
    i32 12773, label %entry.return_crit_edge236
    i32 12774, label %entry.return_crit_edge237
    i32 12775, label %entry.return_crit_edge238
    i32 13312, label %entry.return_crit_edge239
    i32 13317, label %entry.return_crit_edge240
    i32 13318, label %entry.return_crit_edge241
    i32 13319, label %entry.return_crit_edge242
    i32 13320, label %entry.return_crit_edge243
    i32 13321, label %entry.return_crit_edge244
    i32 13322, label %entry.return_crit_edge245
    i32 13323, label %entry.return_crit_edge246
    i32 13324, label %entry.return_crit_edge247
    i32 13325, label %entry.return_crit_edge248
    i32 13326, label %entry.return_crit_edge249
    i32 13327, label %entry.return_crit_edge250
    i32 13328, label %entry.return_crit_edge251
    i32 13329, label %entry.return_crit_edge252
    i32 13332, label %entry.return_crit_edge253
    i32 13335, label %entry.return_crit_edge254
    i32 13336, label %entry.return_crit_edge255
    i32 13337, label %entry.return_crit_edge256
    i32 13338, label %entry.return_crit_edge257
    i32 13339, label %entry.return_crit_edge258
    i32 13340, label %entry.return_crit_edge259
    i32 13341, label %entry.return_crit_edge260
    i32 13342, label %entry.return_crit_edge261
    i32 13343, label %entry.return_crit_edge262
    i32 13344, label %entry.return_crit_edge263
    i32 13345, label %entry.return_crit_edge264
    i32 13346, label %entry.return_crit_edge265
    i32 13347, label %entry.return_crit_edge266
    i32 13348, label %entry.return_crit_edge267
    i32 13349, label %entry.return_crit_edge268
    i32 13350, label %entry.return_crit_edge269
    i32 13351, label %entry.return_crit_edge270
    i32 13352, label %entry.return_crit_edge271
    i32 13353, label %entry.return_crit_edge272
    i32 13354, label %entry.return_crit_edge273
    i32 13355, label %entry.return_crit_edge274
    i32 13356, label %entry.return_crit_edge275
    i32 13357, label %entry.return_crit_edge276
    i32 13358, label %entry.return_crit_edge277
    i32 13359, label %entry.return_crit_edge278
    i32 13360, label %entry.return_crit_edge279
    i32 13361, label %entry.return_crit_edge280
    i32 13362, label %entry.return_crit_edge281
    i32 13363, label %entry.return_crit_edge282
    i32 13364, label %entry.return_crit_edge283
    i32 13365, label %entry.return_crit_edge284
    i32 13366, label %entry.return_crit_edge285
    i32 13367, label %entry.return_crit_edge286
    i32 13368, label %entry.return_crit_edge287
    i32 13369, label %entry.return_crit_edge288
    i32 13370, label %entry.return_crit_edge289
    i32 13371, label %entry.return_crit_edge290
    i32 13372, label %entry.return_crit_edge291
    i32 13373, label %entry.return_crit_edge292
    i32 13374, label %entry.return_crit_edge293
    i32 13375, label %entry.return_crit_edge294
    i32 13376, label %entry.return_crit_edge295
    i32 13377, label %entry.return_crit_edge296
    i32 13378, label %entry.return_crit_edge297
    i32 13379, label %entry.return_crit_edge298
    i32 13380, label %entry.return_crit_edge299
    i32 13381, label %entry.return_crit_edge300
    i32 13382, label %entry.return_crit_edge301
    i32 13383, label %entry.return_crit_edge302
    i32 13384, label %entry.return_crit_edge303
    i32 13385, label %entry.return_crit_edge304
    i32 13386, label %entry.return_crit_edge305
    i32 13387, label %entry.return_crit_edge306
    i32 13388, label %entry.return_crit_edge307
    i32 13389, label %entry.return_crit_edge308
    i32 13390, label %entry.return_crit_edge309
    i32 13391, label %entry.return_crit_edge310
    i32 13392, label %entry.return_crit_edge311
    i32 13393, label %entry.return_crit_edge312
    i32 13394, label %entry.return_crit_edge313
    i32 13395, label %entry.return_crit_edge314
    i32 13396, label %entry.return_crit_edge315
    i32 13397, label %entry.return_crit_edge316
    i32 13398, label %entry.return_crit_edge317
    i32 13399, label %entry.return_crit_edge318
    i32 13400, label %entry.return_crit_edge319
    i32 13402, label %entry.return_crit_edge320
    i32 13403, label %entry.return_crit_edge321
    i32 13404, label %entry.return_crit_edge322
    i32 13405, label %entry.return_crit_edge323
    i32 13406, label %entry.return_crit_edge324
    i32 13407, label %entry.return_crit_edge325
    i32 13408, label %entry.return_crit_edge326
    i32 13409, label %entry.return_crit_edge327
    i32 13410, label %entry.return_crit_edge328
    i32 13411, label %entry.return_crit_edge329
    i32 13413, label %entry.return_crit_edge330
    i32 13414, label %entry.return_crit_edge331
    i32 13415, label %entry.return_crit_edge332
    i32 13418, label %entry.return_crit_edge333
    i32 13419, label %entry.return_crit_edge334
    i32 13420, label %entry.return_crit_edge335
    i32 13421, label %entry.return_crit_edge336
    i32 13425, label %entry.return_crit_edge337
    i32 13426, label %entry.return_crit_edge338
    i32 13427, label %entry.return_crit_edge339
    i32 13428, label %entry.return_crit_edge340
    i32 13429, label %entry.return_crit_edge341
    i32 13430, label %entry.return_crit_edge342
    i32 13431, label %entry.return_crit_edge343
    i32 13432, label %entry.return_crit_edge344
    i32 13433, label %entry.return_crit_edge345
    i32 13434, label %entry.return_crit_edge346
    i32 13435, label %entry.return_crit_edge347
    i32 13436, label %entry.return_crit_edge348
    i32 13439, label %entry.return_crit_edge349
    i32 13440, label %entry.return_crit_edge350
    i32 13441, label %entry.return_crit_edge351
    i32 13442, label %entry.return_crit_edge352
    i32 13443, label %entry.return_crit_edge353
    i32 13444, label %entry.return_crit_edge354
    i32 13445, label %entry.return_crit_edge355
    i32 13446, label %entry.return_crit_edge356
    i32 13447, label %entry.return_crit_edge357
    i32 13448, label %entry.return_crit_edge358
    i32 13449, label %entry.return_crit_edge359
    i32 13452, label %entry.return_crit_edge360
    i32 13453, label %entry.return_crit_edge361
    i32 13454, label %entry.return_crit_edge362
    i32 13455, label %entry.return_crit_edge363
    i32 13456, label %entry.return_crit_edge364
    i32 13457, label %entry.return_crit_edge365
    i32 13460, label %entry.return_crit_edge366
    i32 13461, label %entry.return_crit_edge367
    i32 13462, label %entry.return_crit_edge368
    i32 13463, label %entry.return_crit_edge369
    i32 13464, label %entry.return_crit_edge370
    i32 13465, label %entry.return_crit_edge371
    i32 13466, label %entry.return_crit_edge372
    i32 13467, label %entry.return_crit_edge373
    i32 13468, label %entry.return_crit_edge374
    i32 13469, label %entry.return_crit_edge375
    i32 13470, label %entry.return_crit_edge376
    i32 13471, label %entry.return_crit_edge377
    i32 13472, label %entry.return_crit_edge378
    i32 13473, label %entry.return_crit_edge379
    i32 13474, label %entry.return_crit_edge380
    i32 13475, label %entry.return_crit_edge381
    i32 13478, label %entry.return_crit_edge382
    i32 13479, label %entry.return_crit_edge383
    i32 13480, label %entry.return_crit_edge384
    i32 13481, label %entry.return_crit_edge385
    i32 13482, label %entry.return_crit_edge386
    i32 13485, label %entry.return_crit_edge387
    i32 13486, label %entry.return_crit_edge388
    i32 13487, label %entry.return_crit_edge389
    i32 13520, label %entry.return_crit_edge390
    i32 13521, label %entry.return_crit_edge391
    i32 13522, label %entry.return_crit_edge392
    i32 13523, label %entry.return_crit_edge393
    i32 13524, label %entry.return_crit_edge394
    i32 13525, label %entry.return_crit_edge395
    i32 13526, label %entry.return_crit_edge396
    i32 13527, label %entry.return_crit_edge397
    i32 13528, label %entry.return_crit_edge398
  ]

entry.return_crit_edge398:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge397:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge396:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge395:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge394:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge393:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge392:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge391:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge390:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge389:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge388:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge387:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge386:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge385:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge384:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge383:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge382:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge381:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge380:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge379:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge378:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge377:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge376:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge375:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge374:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge373:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge372:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge371:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge370:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge369:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge368:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge367:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge366:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge365:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge364:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge363:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge362:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge361:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge360:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge359:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge358:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge357:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge356:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge355:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge354:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge353:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge352:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge351:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge350:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge349:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge348:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge347:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge346:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge345:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge344:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge343:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge342:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge341:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge340:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge339:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge338:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge337:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge336:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge335:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge334:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge333:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge332:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge331:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge330:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge329:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge328:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge327:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge326:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge325:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge324:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge323:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge322:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge321:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge320:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge319:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge318:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge317:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge316:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge315:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge314:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge313:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge312:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge311:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge310:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge309:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge308:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge307:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge306:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge305:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge304:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge303:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge302:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge301:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge300:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge299:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge298:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge297:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge296:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge295:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge294:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge293:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge292:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge291:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge290:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge289:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge288:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge287:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge286:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge285:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge284:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge283:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge282:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge281:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge280:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge279:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge278:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge277:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge276:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge275:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge274:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge273:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge272:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge271:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge270:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge269:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge268:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge267:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge266:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge265:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge264:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge263:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge262:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge261:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge260:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge259:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge258:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge257:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge256:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge255:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge254:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge253:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge252:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge251:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge250:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge249:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge248:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge247:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge246:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge245:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge244:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge243:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge242:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge241:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge240:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge239:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge238:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge237:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge236:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge235:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge234:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge233:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge232:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge231:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge230:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge229:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge228:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge227:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge226:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge225:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge224:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge223:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge222:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge221:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge220:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge219:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge218:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge217:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge216:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge215:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge214:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge213:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge212:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge211:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge210:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge209:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge208:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge207:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge206:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge205:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge204:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge203:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge202:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge201:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge200:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge199:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge198:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge197:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge196:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge195:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge194:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge193:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge192:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge191:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge190:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge189:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge188:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge187:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge186:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge185:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge184:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge183:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge182:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge181:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge180:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge179:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge178:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge177:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge176:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge175:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge174:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge173:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge172:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge171:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge170:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge169:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge168:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge167:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge166:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge165:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge164:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge163:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge162:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge161:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge160:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge159:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge158:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge157:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge156:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge155:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge154:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge153:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge152:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge151:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge150:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge149:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge148:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge147:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge146:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge145:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge144:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge143:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge142:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge140:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge139:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge134:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge133:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge132:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge131:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge130:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge129:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge128:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge127:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge126:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge125:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge124:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge123:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge122:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge121:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge120:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge119:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge118:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge117:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge116:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge115:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge114:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge113:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge112:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge111:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge110:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge109:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge108:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge107:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge106:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge105:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge104:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge103:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge102:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge101:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge100:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge99:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge98:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge97:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge96:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge95:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge94:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge93:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge92:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge91:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge90:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge89:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge88:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge87:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge86:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge85:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge84:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge83:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge82:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge80:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge79:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge78:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge77:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge76:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge75:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge74:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge73:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge72:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge71:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge70:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge69:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge68:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67, %entry.return_crit_edge68, %entry.return_crit_edge69, %entry.return_crit_edge70, %entry.return_crit_edge71, %entry.return_crit_edge72, %entry.return_crit_edge73, %entry.return_crit_edge74, %entry.return_crit_edge75, %entry.return_crit_edge76, %entry.return_crit_edge77, %entry.return_crit_edge78, %entry.return_crit_edge79, %entry.return_crit_edge80, %entry.return_crit_edge81, %entry.return_crit_edge82, %entry.return_crit_edge83, %entry.return_crit_edge84, %entry.return_crit_edge85, %entry.return_crit_edge86, %entry.return_crit_edge87, %entry.return_crit_edge88, %entry.return_crit_edge89, %entry.return_crit_edge90, %entry.return_crit_edge91, %entry.return_crit_edge92, %entry.return_crit_edge93, %entry.return_crit_edge94, %entry.return_crit_edge95, %entry.return_crit_edge96, %entry.return_crit_edge97, %entry.return_crit_edge98, %entry.return_crit_edge99, %entry.return_crit_edge100, %entry.return_crit_edge101, %entry.return_crit_edge102, %entry.return_crit_edge103, %entry.return_crit_edge104, %entry.return_crit_edge105, %entry.return_crit_edge106, %entry.return_crit_edge107, %entry.return_crit_edge108, %entry.return_crit_edge109, %entry.return_crit_edge110, %entry.return_crit_edge111, %entry.return_crit_edge112, %entry.return_crit_edge113, %entry.return_crit_edge114, %entry.return_crit_edge115, %entry.return_crit_edge116, %entry.return_crit_edge117, %entry.return_crit_edge118, %entry.return_crit_edge119, %entry.return_crit_edge120, %entry.return_crit_edge121, %entry.return_crit_edge122, %entry.return_crit_edge123, %entry.return_crit_edge124, %entry.return_crit_edge125, %entry.return_crit_edge126, %entry.return_crit_edge127, %entry.return_crit_edge128, %entry.return_crit_edge129, %entry.return_crit_edge130, %entry.return_crit_edge131, %entry.return_crit_edge132, %entry.return_crit_edge133, %entry.return_crit_edge134, %entry.return_crit_edge135, %entry.return_crit_edge136, %entry.return_crit_edge137, %entry.return_crit_edge138, %entry.return_crit_edge139, %entry.return_crit_edge140, %entry.return_crit_edge141, %entry.return_crit_edge142, %entry.return_crit_edge143, %entry.return_crit_edge144, %entry.return_crit_edge145, %entry.return_crit_edge146, %entry.return_crit_edge147, %entry.return_crit_edge148, %entry.return_crit_edge149, %entry.return_crit_edge150, %entry.return_crit_edge151, %entry.return_crit_edge152, %entry.return_crit_edge153, %entry.return_crit_edge154, %entry.return_crit_edge155, %entry.return_crit_edge156, %entry.return_crit_edge157, %entry.return_crit_edge158, %entry.return_crit_edge159, %entry.return_crit_edge160, %entry.return_crit_edge161, %entry.return_crit_edge162, %entry.return_crit_edge163, %entry.return_crit_edge164, %entry.return_crit_edge165, %entry.return_crit_edge166, %entry.return_crit_edge167, %entry.return_crit_edge168, %entry.return_crit_edge169, %entry.return_crit_edge170, %entry.return_crit_edge171, %entry.return_crit_edge172, %entry.return_crit_edge173, %entry.return_crit_edge174, %entry.return_crit_edge175, %entry.return_crit_edge176, %entry.return_crit_edge177, %entry.return_crit_edge178, %entry.return_crit_edge179, %entry.return_crit_edge180, %entry.return_crit_edge181, %entry.return_crit_edge182, %entry.return_crit_edge183, %entry.return_crit_edge184, %entry.return_crit_edge185, %entry.return_crit_edge186, %entry.return_crit_edge187, %entry.return_crit_edge188, %entry.return_crit_edge189, %entry.return_crit_edge190, %entry.return_crit_edge191, %entry.return_crit_edge192, %entry.return_crit_edge193, %entry.return_crit_edge194, %entry.return_crit_edge195, %entry.return_crit_edge196, %entry.return_crit_edge197, %entry.return_crit_edge198, %entry.return_crit_edge199, %entry.return_crit_edge200, %entry.return_crit_edge201, %entry.return_crit_edge202, %entry.return_crit_edge203, %entry.return_crit_edge204, %entry.return_crit_edge205, %entry.return_crit_edge206, %entry.return_crit_edge207, %entry.return_crit_edge208, %entry.return_crit_edge209, %entry.return_crit_edge210, %entry.return_crit_edge211, %entry.return_crit_edge212, %entry.return_crit_edge213, %entry.return_crit_edge214, %entry.return_crit_edge215, %entry.return_crit_edge216, %entry.return_crit_edge217, %entry.return_crit_edge218, %entry.return_crit_edge219, %entry.return_crit_edge220, %entry.return_crit_edge221, %entry.return_crit_edge222, %entry.return_crit_edge223, %entry.return_crit_edge224, %entry.return_crit_edge225, %entry.return_crit_edge226, %entry.return_crit_edge227, %entry.return_crit_edge228, %entry.return_crit_edge229, %entry.return_crit_edge230, %entry.return_crit_edge231, %entry.return_crit_edge232, %entry.return_crit_edge233, %entry.return_crit_edge234, %entry.return_crit_edge235, %entry.return_crit_edge236, %entry.return_crit_edge237, %entry.return_crit_edge238, %entry.return_crit_edge239, %entry.return_crit_edge240, %entry.return_crit_edge241, %entry.return_crit_edge242, %entry.return_crit_edge243, %entry.return_crit_edge244, %entry.return_crit_edge245, %entry.return_crit_edge246, %entry.return_crit_edge247, %entry.return_crit_edge248, %entry.return_crit_edge249, %entry.return_crit_edge250, %entry.return_crit_edge251, %entry.return_crit_edge252, %entry.return_crit_edge253, %entry.return_crit_edge254, %entry.return_crit_edge255, %entry.return_crit_edge256, %entry.return_crit_edge257, %entry.return_crit_edge258, %entry.return_crit_edge259, %entry.return_crit_edge260, %entry.return_crit_edge261, %entry.return_crit_edge262, %entry.return_crit_edge263, %entry.return_crit_edge264, %entry.return_crit_edge265, %entry.return_crit_edge266, %entry.return_crit_edge267, %entry.return_crit_edge268, %entry.return_crit_edge269, %entry.return_crit_edge270, %entry.return_crit_edge271, %entry.return_crit_edge272, %entry.return_crit_edge273, %entry.return_crit_edge274, %entry.return_crit_edge275, %entry.return_crit_edge276, %entry.return_crit_edge277, %entry.return_crit_edge278, %entry.return_crit_edge279, %entry.return_crit_edge280, %entry.return_crit_edge281, %entry.return_crit_edge282, %entry.return_crit_edge283, %entry.return_crit_edge284, %entry.return_crit_edge285, %entry.return_crit_edge286, %entry.return_crit_edge287, %entry.return_crit_edge288, %entry.return_crit_edge289, %entry.return_crit_edge290, %entry.return_crit_edge291, %entry.return_crit_edge292, %entry.return_crit_edge293, %entry.return_crit_edge294, %entry.return_crit_edge295, %entry.return_crit_edge296, %entry.return_crit_edge297, %entry.return_crit_edge298, %entry.return_crit_edge299, %entry.return_crit_edge300, %entry.return_crit_edge301, %entry.return_crit_edge302, %entry.return_crit_edge303, %entry.return_crit_edge304, %entry.return_crit_edge305, %entry.return_crit_edge306, %entry.return_crit_edge307, %entry.return_crit_edge308, %entry.return_crit_edge309, %entry.return_crit_edge310, %entry.return_crit_edge311, %entry.return_crit_edge312, %entry.return_crit_edge313, %entry.return_crit_edge314, %entry.return_crit_edge315, %entry.return_crit_edge316, %entry.return_crit_edge317, %entry.return_crit_edge318, %entry.return_crit_edge319, %entry.return_crit_edge320, %entry.return_crit_edge321, %entry.return_crit_edge322, %entry.return_crit_edge323, %entry.return_crit_edge324, %entry.return_crit_edge325, %entry.return_crit_edge326, %entry.return_crit_edge327, %entry.return_crit_edge328, %entry.return_crit_edge329, %entry.return_crit_edge330, %entry.return_crit_edge331, %entry.return_crit_edge332, %entry.return_crit_edge333, %entry.return_crit_edge334, %entry.return_crit_edge335, %entry.return_crit_edge336, %entry.return_crit_edge337, %entry.return_crit_edge338, %entry.return_crit_edge339, %entry.return_crit_edge340, %entry.return_crit_edge341, %entry.return_crit_edge342, %entry.return_crit_edge343, %entry.return_crit_edge344, %entry.return_crit_edge345, %entry.return_crit_edge346, %entry.return_crit_edge347, %entry.return_crit_edge348, %entry.return_crit_edge349, %entry.return_crit_edge350, %entry.return_crit_edge351, %entry.return_crit_edge352, %entry.return_crit_edge353, %entry.return_crit_edge354, %entry.return_crit_edge355, %entry.return_crit_edge356, %entry.return_crit_edge357, %entry.return_crit_edge358, %entry.return_crit_edge359, %entry.return_crit_edge360, %entry.return_crit_edge361, %entry.return_crit_edge362, %entry.return_crit_edge363, %entry.return_crit_edge364, %entry.return_crit_edge365, %entry.return_crit_edge366, %entry.return_crit_edge367, %entry.return_crit_edge368, %entry.return_crit_edge369, %entry.return_crit_edge370, %entry.return_crit_edge371, %entry.return_crit_edge372, %entry.return_crit_edge373, %entry.return_crit_edge374, %entry.return_crit_edge375, %entry.return_crit_edge376, %entry.return_crit_edge377, %entry.return_crit_edge378, %entry.return_crit_edge379, %entry.return_crit_edge380, %entry.return_crit_edge381, %entry.return_crit_edge382, %entry.return_crit_edge383, %entry.return_crit_edge384, %entry.return_crit_edge385, %entry.return_crit_edge386, %entry.return_crit_edge387, %entry.return_crit_edge388, %entry.return_crit_edge389, %entry.return_crit_edge390, %entry.return_crit_edge391, %entry.return_crit_edge392, %entry.return_crit_edge393, %entry.return_crit_edge394, %entry.return_crit_edge395, %entry.return_crit_edge396, %entry.return_crit_edge397, %entry.return_crit_edge398
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ], [ true, %entry.return_crit_edge68 ], [ true, %entry.return_crit_edge69 ], [ true, %entry.return_crit_edge70 ], [ true, %entry.return_crit_edge71 ], [ true, %entry.return_crit_edge72 ], [ true, %entry.return_crit_edge73 ], [ true, %entry.return_crit_edge74 ], [ true, %entry.return_crit_edge75 ], [ true, %entry.return_crit_edge76 ], [ true, %entry.return_crit_edge77 ], [ true, %entry.return_crit_edge78 ], [ true, %entry.return_crit_edge79 ], [ true, %entry.return_crit_edge80 ], [ true, %entry.return_crit_edge81 ], [ true, %entry.return_crit_edge82 ], [ true, %entry.return_crit_edge83 ], [ true, %entry.return_crit_edge84 ], [ true, %entry.return_crit_edge85 ], [ true, %entry.return_crit_edge86 ], [ true, %entry.return_crit_edge87 ], [ true, %entry.return_crit_edge88 ], [ true, %entry.return_crit_edge89 ], [ true, %entry.return_crit_edge90 ], [ true, %entry.return_crit_edge91 ], [ true, %entry.return_crit_edge92 ], [ true, %entry.return_crit_edge93 ], [ true, %entry.return_crit_edge94 ], [ true, %entry.return_crit_edge95 ], [ true, %entry.return_crit_edge96 ], [ true, %entry.return_crit_edge97 ], [ true, %entry.return_crit_edge98 ], [ true, %entry.return_crit_edge99 ], [ true, %entry.return_crit_edge100 ], [ true, %entry.return_crit_edge101 ], [ true, %entry.return_crit_edge102 ], [ true, %entry.return_crit_edge103 ], [ true, %entry.return_crit_edge104 ], [ true, %entry.return_crit_edge105 ], [ true, %entry.return_crit_edge106 ], [ true, %entry.return_crit_edge107 ], [ true, %entry.return_crit_edge108 ], [ true, %entry.return_crit_edge109 ], [ true, %entry.return_crit_edge110 ], [ true, %entry.return_crit_edge111 ], [ true, %entry.return_crit_edge112 ], [ true, %entry.return_crit_edge113 ], [ true, %entry.return_crit_edge114 ], [ true, %entry.return_crit_edge115 ], [ true, %entry.return_crit_edge116 ], [ true, %entry.return_crit_edge117 ], [ true, %entry.return_crit_edge118 ], [ true, %entry.return_crit_edge119 ], [ true, %entry.return_crit_edge120 ], [ true, %entry.return_crit_edge121 ], [ true, %entry.return_crit_edge122 ], [ true, %entry.return_crit_edge123 ], [ true, %entry.return_crit_edge124 ], [ true, %entry.return_crit_edge125 ], [ true, %entry.return_crit_edge126 ], [ true, %entry.return_crit_edge127 ], [ true, %entry.return_crit_edge128 ], [ true, %entry.return_crit_edge129 ], [ true, %entry.return_crit_edge130 ], [ true, %entry.return_crit_edge131 ], [ true, %entry.return_crit_edge132 ], [ true, %entry.return_crit_edge133 ], [ true, %entry.return_crit_edge134 ], [ true, %entry.return_crit_edge135 ], [ true, %entry.return_crit_edge136 ], [ true, %entry.return_crit_edge137 ], [ true, %entry.return_crit_edge138 ], [ true, %entry.return_crit_edge139 ], [ true, %entry.return_crit_edge140 ], [ true, %entry.return_crit_edge141 ], [ true, %entry.return_crit_edge142 ], [ true, %entry.return_crit_edge143 ], [ true, %entry.return_crit_edge144 ], [ true, %entry.return_crit_edge145 ], [ true, %entry.return_crit_edge146 ], [ true, %entry.return_crit_edge147 ], [ true, %entry.return_crit_edge148 ], [ true, %entry.return_crit_edge149 ], [ true, %entry.return_crit_edge150 ], [ true, %entry.return_crit_edge151 ], [ true, %entry.return_crit_edge152 ], [ true, %entry.return_crit_edge153 ], [ true, %entry.return_crit_edge154 ], [ true, %entry.return_crit_edge155 ], [ true, %entry.return_crit_edge156 ], [ true, %entry.return_crit_edge157 ], [ true, %entry.return_crit_edge158 ], [ true, %entry.return_crit_edge159 ], [ true, %entry.return_crit_edge160 ], [ true, %entry.return_crit_edge161 ], [ true, %entry.return_crit_edge162 ], [ true, %entry.return_crit_edge163 ], [ true, %entry.return_crit_edge164 ], [ true, %entry.return_crit_edge165 ], [ true, %entry.return_crit_edge166 ], [ true, %entry.return_crit_edge167 ], [ true, %entry.return_crit_edge168 ], [ true, %entry.return_crit_edge169 ], [ true, %entry.return_crit_edge170 ], [ true, %entry.return_crit_edge171 ], [ true, %entry.return_crit_edge172 ], [ true, %entry.return_crit_edge173 ], [ true, %entry.return_crit_edge174 ], [ true, %entry.return_crit_edge175 ], [ true, %entry.return_crit_edge176 ], [ true, %entry.return_crit_edge177 ], [ true, %entry.return_crit_edge178 ], [ true, %entry.return_crit_edge179 ], [ true, %entry.return_crit_edge180 ], [ true, %entry.return_crit_edge181 ], [ true, %entry.return_crit_edge182 ], [ true, %entry.return_crit_edge183 ], [ true, %entry.return_crit_edge184 ], [ true, %entry.return_crit_edge185 ], [ true, %entry.return_crit_edge186 ], [ true, %entry.return_crit_edge187 ], [ true, %entry.return_crit_edge188 ], [ true, %entry.return_crit_edge189 ], [ true, %entry.return_crit_edge190 ], [ true, %entry.return_crit_edge191 ], [ true, %entry.return_crit_edge192 ], [ true, %entry.return_crit_edge193 ], [ true, %entry.return_crit_edge194 ], [ true, %entry.return_crit_edge195 ], [ true, %entry.return_crit_edge196 ], [ true, %entry.return_crit_edge197 ], [ true, %entry.return_crit_edge198 ], [ true, %entry.return_crit_edge199 ], [ true, %entry.return_crit_edge200 ], [ true, %entry.return_crit_edge201 ], [ true, %entry.return_crit_edge202 ], [ true, %entry.return_crit_edge203 ], [ true, %entry.return_crit_edge204 ], [ true, %entry.return_crit_edge205 ], [ true, %entry.return_crit_edge206 ], [ true, %entry.return_crit_edge207 ], [ true, %entry.return_crit_edge208 ], [ true, %entry.return_crit_edge209 ], [ true, %entry.return_crit_edge210 ], [ true, %entry.return_crit_edge211 ], [ true, %entry.return_crit_edge212 ], [ true, %entry.return_crit_edge213 ], [ true, %entry.return_crit_edge214 ], [ true, %entry.return_crit_edge215 ], [ true, %entry.return_crit_edge216 ], [ true, %entry.return_crit_edge217 ], [ true, %entry.return_crit_edge218 ], [ true, %entry.return_crit_edge219 ], [ true, %entry.return_crit_edge220 ], [ true, %entry.return_crit_edge221 ], [ true, %entry.return_crit_edge222 ], [ true, %entry.return_crit_edge223 ], [ true, %entry.return_crit_edge224 ], [ true, %entry.return_crit_edge225 ], [ true, %entry.return_crit_edge226 ], [ true, %entry.return_crit_edge227 ], [ true, %entry.return_crit_edge228 ], [ true, %entry.return_crit_edge229 ], [ true, %entry.return_crit_edge230 ], [ true, %entry.return_crit_edge231 ], [ true, %entry.return_crit_edge232 ], [ true, %entry.return_crit_edge233 ], [ true, %entry.return_crit_edge234 ], [ true, %entry.return_crit_edge235 ], [ true, %entry.return_crit_edge236 ], [ true, %entry.return_crit_edge237 ], [ true, %entry.return_crit_edge238 ], [ true, %entry.return_crit_edge239 ], [ true, %entry.return_crit_edge240 ], [ true, %entry.return_crit_edge241 ], [ true, %entry.return_crit_edge242 ], [ true, %entry.return_crit_edge243 ], [ true, %entry.return_crit_edge244 ], [ true, %entry.return_crit_edge245 ], [ true, %entry.return_crit_edge246 ], [ true, %entry.return_crit_edge247 ], [ true, %entry.return_crit_edge248 ], [ true, %entry.return_crit_edge249 ], [ true, %entry.return_crit_edge250 ], [ true, %entry.return_crit_edge251 ], [ true, %entry.return_crit_edge252 ], [ true, %entry.return_crit_edge253 ], [ true, %entry.return_crit_edge254 ], [ true, %entry.return_crit_edge255 ], [ true, %entry.return_crit_edge256 ], [ true, %entry.return_crit_edge257 ], [ true, %entry.return_crit_edge258 ], [ true, %entry.return_crit_edge259 ], [ true, %entry.return_crit_edge260 ], [ true, %entry.return_crit_edge261 ], [ true, %entry.return_crit_edge262 ], [ true, %entry.return_crit_edge263 ], [ true, %entry.return_crit_edge264 ], [ true, %entry.return_crit_edge265 ], [ true, %entry.return_crit_edge266 ], [ true, %entry.return_crit_edge267 ], [ true, %entry.return_crit_edge268 ], [ true, %entry.return_crit_edge269 ], [ true, %entry.return_crit_edge270 ], [ true, %entry.return_crit_edge271 ], [ true, %entry.return_crit_edge272 ], [ true, %entry.return_crit_edge273 ], [ true, %entry.return_crit_edge274 ], [ true, %entry.return_crit_edge275 ], [ true, %entry.return_crit_edge276 ], [ true, %entry.return_crit_edge277 ], [ true, %entry.return_crit_edge278 ], [ true, %entry.return_crit_edge279 ], [ true, %entry.return_crit_edge280 ], [ true, %entry.return_crit_edge281 ], [ true, %entry.return_crit_edge282 ], [ true, %entry.return_crit_edge283 ], [ true, %entry.return_crit_edge284 ], [ true, %entry.return_crit_edge285 ], [ true, %entry.return_crit_edge286 ], [ true, %entry.return_crit_edge287 ], [ true, %entry.return_crit_edge288 ], [ true, %entry.return_crit_edge289 ], [ true, %entry.return_crit_edge290 ], [ true, %entry.return_crit_edge291 ], [ true, %entry.return_crit_edge292 ], [ true, %entry.return_crit_edge293 ], [ true, %entry.return_crit_edge294 ], [ true, %entry.return_crit_edge295 ], [ true, %entry.return_crit_edge296 ], [ true, %entry.return_crit_edge297 ], [ true, %entry.return_crit_edge298 ], [ true, %entry.return_crit_edge299 ], [ true, %entry.return_crit_edge300 ], [ true, %entry.return_crit_edge301 ], [ true, %entry.return_crit_edge302 ], [ true, %entry.return_crit_edge303 ], [ true, %entry.return_crit_edge304 ], [ true, %entry.return_crit_edge305 ], [ true, %entry.return_crit_edge306 ], [ true, %entry.return_crit_edge307 ], [ true, %entry.return_crit_edge308 ], [ true, %entry.return_crit_edge309 ], [ true, %entry.return_crit_edge310 ], [ true, %entry.return_crit_edge311 ], [ true, %entry.return_crit_edge312 ], [ true, %entry.return_crit_edge313 ], [ true, %entry.return_crit_edge314 ], [ true, %entry.return_crit_edge315 ], [ true, %entry.return_crit_edge316 ], [ true, %entry.return_crit_edge317 ], [ true, %entry.return_crit_edge318 ], [ true, %entry.return_crit_edge319 ], [ true, %entry.return_crit_edge320 ], [ true, %entry.return_crit_edge321 ], [ true, %entry.return_crit_edge322 ], [ true, %entry.return_crit_edge323 ], [ true, %entry.return_crit_edge324 ], [ true, %entry.return_crit_edge325 ], [ true, %entry.return_crit_edge326 ], [ true, %entry.return_crit_edge327 ], [ true, %entry.return_crit_edge328 ], [ true, %entry.return_crit_edge329 ], [ true, %entry.return_crit_edge330 ], [ true, %entry.return_crit_edge331 ], [ true, %entry.return_crit_edge332 ], [ true, %entry.return_crit_edge333 ], [ true, %entry.return_crit_edge334 ], [ true, %entry.return_crit_edge335 ], [ true, %entry.return_crit_edge336 ], [ true, %entry.return_crit_edge337 ], [ true, %entry.return_crit_edge338 ], [ true, %entry.return_crit_edge339 ], [ true, %entry.return_crit_edge340 ], [ true, %entry.return_crit_edge341 ], [ true, %entry.return_crit_edge342 ], [ true, %entry.return_crit_edge343 ], [ true, %entry.return_crit_edge344 ], [ true, %entry.return_crit_edge345 ], [ true, %entry.return_crit_edge346 ], [ true, %entry.return_crit_edge347 ], [ true, %entry.return_crit_edge348 ], [ true, %entry.return_crit_edge349 ], [ true, %entry.return_crit_edge350 ], [ true, %entry.return_crit_edge351 ], [ true, %entry.return_crit_edge352 ], [ true, %entry.return_crit_edge353 ], [ true, %entry.return_crit_edge354 ], [ true, %entry.return_crit_edge355 ], [ true, %entry.return_crit_edge356 ], [ true, %entry.return_crit_edge357 ], [ true, %entry.return_crit_edge358 ], [ true, %entry.return_crit_edge359 ], [ true, %entry.return_crit_edge360 ], [ true, %entry.return_crit_edge361 ], [ true, %entry.return_crit_edge362 ], [ true, %entry.return_crit_edge363 ], [ true, %entry.return_crit_edge364 ], [ true, %entry.return_crit_edge365 ], [ true, %entry.return_crit_edge366 ], [ true, %entry.return_crit_edge367 ], [ true, %entry.return_crit_edge368 ], [ true, %entry.return_crit_edge369 ], [ true, %entry.return_crit_edge370 ], [ true, %entry.return_crit_edge371 ], [ true, %entry.return_crit_edge372 ], [ true, %entry.return_crit_edge373 ], [ true, %entry.return_crit_edge374 ], [ true, %entry.return_crit_edge375 ], [ true, %entry.return_crit_edge376 ], [ true, %entry.return_crit_edge377 ], [ true, %entry.return_crit_edge378 ], [ true, %entry.return_crit_edge379 ], [ true, %entry.return_crit_edge380 ], [ true, %entry.return_crit_edge381 ], [ true, %entry.return_crit_edge382 ], [ true, %entry.return_crit_edge383 ], [ true, %entry.return_crit_edge384 ], [ true, %entry.return_crit_edge385 ], [ true, %entry.return_crit_edge386 ], [ true, %entry.return_crit_edge387 ], [ true, %entry.return_crit_edge388 ], [ true, %entry.return_crit_edge389 ], [ true, %entry.return_crit_edge390 ], [ true, %entry.return_crit_edge391 ], [ true, %entry.return_crit_edge392 ], [ true, %entry.return_crit_edge393 ], [ true, %entry.return_crit_edge394 ], [ true, %entry.return_crit_edge395 ], [ true, %entry.return_crit_edge396 ], [ true, %entry.return_crit_edge397 ], [ true, %entry.return_crit_edge398 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc zeroext i1 @wcd938x_readonly_register(i32 noundef %reg) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.359)
  switch i32 %reg, label %sw.epilog [
    i32 12311, label %entry.return_crit_edge
    i32 12312, label %entry.return_crit_edge1
    i32 12313, label %entry.return_crit_edge2
    i32 12379, label %entry.return_crit_edge3
    i32 12421, label %entry.return_crit_edge4
    i32 12422, label %entry.return_crit_edge5
    i32 12429, label %entry.return_crit_edge6
    i32 12430, label %entry.return_crit_edge7
    i32 12489, label %entry.return_crit_edge8
    i32 12490, label %entry.return_crit_edge9
    i32 12516, label %entry.return_crit_edge10
    i32 12527, label %entry.return_crit_edge11
    i32 12528, label %entry.return_crit_edge12
    i32 12581, label %entry.return_crit_edge13
    i32 12582, label %entry.return_crit_edge14
    i32 12589, label %entry.return_crit_edge15
    i32 12739, label %entry.return_crit_edge16
    i32 12746, label %entry.return_crit_edge17
    i32 13313, label %entry.return_crit_edge18
    i32 13314, label %entry.return_crit_edge19
    i32 13315, label %entry.return_crit_edge20
    i32 13316, label %entry.return_crit_edge21
    i32 13422, label %entry.return_crit_edge22
    i32 13423, label %entry.return_crit_edge23
    i32 13424, label %entry.return_crit_edge24
    i32 13425, label %entry.return_crit_edge25
    i32 13426, label %entry.return_crit_edge26
    i32 13427, label %entry.return_crit_edge27
    i32 13450, label %entry.return_crit_edge28
    i32 13451, label %entry.return_crit_edge29
    i32 13458, label %entry.return_crit_edge30
    i32 13459, label %entry.return_crit_edge31
    i32 13476, label %entry.return_crit_edge32
    i32 13477, label %entry.return_crit_edge33
    i32 13483, label %entry.return_crit_edge34
    i32 13484, label %entry.return_crit_edge35
    i32 13488, label %entry.return_crit_edge36
    i32 13489, label %entry.return_crit_edge37
    i32 13490, label %entry.return_crit_edge38
    i32 13491, label %entry.return_crit_edge39
    i32 13492, label %entry.return_crit_edge40
    i32 13493, label %entry.return_crit_edge41
    i32 13494, label %entry.return_crit_edge42
    i32 13495, label %entry.return_crit_edge43
    i32 13496, label %entry.return_crit_edge44
    i32 13497, label %entry.return_crit_edge45
    i32 13498, label %entry.return_crit_edge46
    i32 13499, label %entry.return_crit_edge47
    i32 13500, label %entry.return_crit_edge48
    i32 13501, label %entry.return_crit_edge49
    i32 13502, label %entry.return_crit_edge50
    i32 13503, label %entry.return_crit_edge51
    i32 13504, label %entry.return_crit_edge52
    i32 13505, label %entry.return_crit_edge53
    i32 13506, label %entry.return_crit_edge54
    i32 13507, label %entry.return_crit_edge55
    i32 13508, label %entry.return_crit_edge56
    i32 13509, label %entry.return_crit_edge57
    i32 13510, label %entry.return_crit_edge58
    i32 13511, label %entry.return_crit_edge59
    i32 13512, label %entry.return_crit_edge60
    i32 13513, label %entry.return_crit_edge61
    i32 13514, label %entry.return_crit_edge62
    i32 13515, label %entry.return_crit_edge63
    i32 13516, label %entry.return_crit_edge64
    i32 13517, label %entry.return_crit_edge65
    i32 13518, label %entry.return_crit_edge66
    i32 13519, label %entry.return_crit_edge67
  ]

entry.return_crit_edge67:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge66:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge65:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge64:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge63:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge62:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge61:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge60:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge59:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge58:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge57:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge56:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge55:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge54:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge53:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge52:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge51:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge50:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49, %entry.return_crit_edge50, %entry.return_crit_edge51, %entry.return_crit_edge52, %entry.return_crit_edge53, %entry.return_crit_edge54, %entry.return_crit_edge55, %entry.return_crit_edge56, %entry.return_crit_edge57, %entry.return_crit_edge58, %entry.return_crit_edge59, %entry.return_crit_edge60, %entry.return_crit_edge61, %entry.return_crit_edge62, %entry.return_crit_edge63, %entry.return_crit_edge64, %entry.return_crit_edge65, %entry.return_crit_edge66, %entry.return_crit_edge67
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ], [ true, %entry.return_crit_edge50 ], [ true, %entry.return_crit_edge51 ], [ true, %entry.return_crit_edge52 ], [ true, %entry.return_crit_edge53 ], [ true, %entry.return_crit_edge54 ], [ true, %entry.return_crit_edge55 ], [ true, %entry.return_crit_edge56 ], [ true, %entry.return_crit_edge57 ], [ true, %entry.return_crit_edge58 ], [ true, %entry.return_crit_edge59 ], [ true, %entry.return_crit_edge60 ], [ true, %entry.return_crit_edge61 ], [ true, %entry.return_crit_edge62 ], [ true, %entry.return_crit_edge63 ], [ true, %entry.return_crit_edge64 ], [ true, %entry.return_crit_edge65 ], [ true, %entry.return_crit_edge66 ], [ true, %entry.return_crit_edge67 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regmap_add_irq_chip(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd_irq_chip_map(ptr nocapture noundef readnone %irqd, i32 noundef %virq, i32 noundef %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @wcd_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #9
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 32768) #9
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 1024) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_soc_codec_probe(ptr noundef %component) #2 align 64 {
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
  %regmap = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  tail call void @snd_soc_component_init_regmap(ptr noundef %component, ptr noundef %5) #9
  %call2 = tail call i32 @snd_soc_component_read_field(ptr noundef %component, i32 noundef 13488, i32 noundef 30) #9
  %variant = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %variant to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call2, ptr %variant, align 4
  %call3 = tail call ptr @wcd_clsh_ctrl_alloc(ptr noundef %component, i32 noundef 3) #9
  %clsh_info = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 11
  %7 = ptrtoint ptr %clsh_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call3, ptr %clsh_info, align 4
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12547, i32 noundef 14, i32 noundef 14, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i1.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12547, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #9
  %call.i2.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12547, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #9
  %call.i3.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12586, i32 noundef 16, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i4.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12329, i32 noundef 240, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i5.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12289, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i6.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12289, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 10010, i32 noundef 2) #9
  %call.i7.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12289, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i8.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12594, i32 noundef 240, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i9.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12608, i32 noundef 31, i32 noundef 21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i10.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12609, i32 noundef 31, i32 noundef 21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i11.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12509, i32 noundef 192, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i12.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 13403, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i13.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12769, i32 noundef 255, i32 noundef 20, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12767, i32 noundef 31, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 13520, i32 noundef 255, i32 noundef 85, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i16.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 13521, i32 noundef 255, i32 noundef 68, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i17.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 13522, i32 noundef 255, i32 noundef 17, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i18.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 13523, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i19.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 13524, i32 noundef 255, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i20.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12395, i32 noundef 224, i32 noundef 224, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i21.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12398, i32 noundef 224, i32 noundef 224, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i22.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12401, i32 noundef 224, i32 noundef 224, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i23.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12404, i32 noundef 224, i32 noundef 224, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i24.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12431, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %call.i25.i = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 12514, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %10 = load i32, ptr getelementptr inbounds ({ ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, ptr @wcd938x_regmap_irq_chip, i32 0, i32 15), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp106 = icmp sgt i32 %10, 0
  br i1 %cmp106, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0107 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %add = add nuw i32 %i.0107, 13428
  %call6 = tail call i32 @regmap_write(ptr noundef %12, i32 noundef %add, i32 noundef 0) #9
  %inc = add nuw nsw i32 %i.0107, 1
  %13 = load i32, ptr getelementptr inbounds ({ ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, ptr @wcd938x_regmap_irq_chip, i32 0, i32 15), align 4
  %cmp = icmp slt i32 %inc, %13
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %irq_chip = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 14
  %14 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq_chip, align 4
  %call7 = tail call i32 @regmap_irq_get_virq(ptr noundef %15, i32 noundef 14) #9
  %hphr_pdm_wd_int = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 30
  %16 = ptrtoint ptr %hphr_pdm_wd_int to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call7, ptr %hphr_pdm_wd_int, align 4
  %17 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %irq_chip, align 4
  %call9 = tail call i32 @regmap_irq_get_virq(ptr noundef %18, i32 noundef 13) #9
  %hphl_pdm_wd_int = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 31
  %19 = ptrtoint ptr %hphl_pdm_wd_int to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call9, ptr %hphl_pdm_wd_int, align 4
  %20 = ptrtoint ptr %irq_chip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_chip, align 4
  %call11 = tail call i32 @regmap_irq_get_virq(ptr noundef %21, i32 noundef 15) #9
  %aux_pdm_wd_int = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 32
  %22 = ptrtoint ptr %aux_pdm_wd_int to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call11, ptr %aux_pdm_wd_int, align 4
  %23 = ptrtoint ptr %hphr_pdm_wd_int to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hphr_pdm_wd_int, align 4
  %call13 = tail call i32 @request_threaded_irq(i32 noundef %24, ptr noundef null, ptr noundef nonnull @wcd938x_wd_handle_irq, i32 noundef 8193, ptr noundef nonnull @.str.275, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool.not = icmp eq i32 %call13, 0
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %do.end

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.276, i32 noundef %call13) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %for.end.if.end_crit_edge
  %25 = ptrtoint ptr %hphl_pdm_wd_int to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hphl_pdm_wd_int, align 4
  %call15 = tail call i32 @request_threaded_irq(i32 noundef %26, ptr noundef null, ptr noundef nonnull @wcd938x_wd_handle_irq, i32 noundef 8193, ptr noundef nonnull @.str.278, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end.if.end21_crit_edge, label %do.end20

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

do.end20:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.280, i32 noundef %call15) #12
  br label %if.end21

if.end21:                                         ; preds = %do.end20, %if.end.if.end21_crit_edge
  %27 = ptrtoint ptr %aux_pdm_wd_int to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %aux_pdm_wd_int, align 4
  %call23 = tail call i32 @request_threaded_irq(i32 noundef %28, ptr noundef null, ptr noundef nonnull @wcd938x_wd_handle_irq, i32 noundef 8193, ptr noundef nonnull @.str.282, ptr noundef %3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end21.if.end29_crit_edge, label %do.end28

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end29

do.end28:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.284, i32 noundef %call23) #12
  br label %if.end29

if.end29:                                         ; preds = %do.end28, %if.end21.if.end29_crit_edge
  %29 = ptrtoint ptr %hphr_pdm_wd_int to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hphr_pdm_wd_int, align 4
  tail call void @disable_irq_nosync(i32 noundef %30) #9
  %31 = ptrtoint ptr %hphl_pdm_wd_int to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hphl_pdm_wd_int, align 4
  tail call void @disable_irq_nosync(i32 noundef %32) #9
  %33 = ptrtoint ptr %aux_pdm_wd_int to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %aux_pdm_wd_int, align 4
  tail call void @disable_irq_nosync(i32 noundef %34) #9
  %35 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %variant, align 4
  %37 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.360)
  switch i32 %36, label %if.end29.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 5, label %sw.bb43
  ]

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end29
  %call34 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wcd9380_snd_controls, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end39, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end39:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  %40 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %variant, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.277, i32 noundef %41) #12
  br label %err

sw.bb43:                                          ; preds = %if.end29
  %call44 = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @wcd9385_snd_controls, i32 noundef 5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %do.end49, label %sw.bb43.sw.epilog_crit_edge

sw.bb43.sw.epilog_crit_edge:                      ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end49:                                         ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #11
  %42 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i, align 4
  %44 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %variant, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.287, ptr noundef nonnull @.str.277, i32 noundef %45) #12
  br label %err

sw.epilog:                                        ; preds = %sw.bb43.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end29.sw.epilog_crit_edge
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %driver_data.i.i.i, align 4
  %intr_ids1.i = getelementptr inbounds %struct.wcd938x_priv, ptr %49, i32 0, i32 10
  %irq_chip.i = getelementptr inbounds %struct.wcd938x_priv, ptr %49, i32 0, i32 14
  %50 = ptrtoint ptr %irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %irq_chip.i, align 4
  %call2.i = tail call i32 @regmap_irq_get_virq(ptr noundef %51, i32 noundef 4) #9
  %52 = ptrtoint ptr %intr_ids1.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call2.i, ptr %intr_ids1.i, align 4
  %53 = ptrtoint ptr %irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %irq_chip.i, align 4
  %call4.i = tail call i32 @regmap_irq_get_virq(ptr noundef %54, i32 noundef 0) #9
  %mbhc_btn_press_intr.i = getelementptr inbounds %struct.wcd938x_priv, ptr %49, i32 0, i32 10, i32 1
  %55 = ptrtoint ptr %mbhc_btn_press_intr.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call4.i, ptr %mbhc_btn_press_intr.i, align 4
  %56 = ptrtoint ptr %irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %irq_chip.i, align 4
  %call6.i = tail call i32 @regmap_irq_get_virq(ptr noundef %57, i32 noundef 1) #9
  %mbhc_btn_release_intr.i = getelementptr inbounds %struct.wcd938x_priv, ptr %49, i32 0, i32 10, i32 2
  %58 = ptrtoint ptr %mbhc_btn_release_intr.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call6.i, ptr %mbhc_btn_release_intr.i, align 4
  %59 = ptrtoint ptr %irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %irq_chip.i, align 4
  %call8.i = tail call i32 @regmap_irq_get_virq(ptr noundef %60, i32 noundef 3) #9
  %mbhc_hs_ins_intr.i = getelementptr inbounds %struct.wcd938x_priv, ptr %49, i32 0, i32 10, i32 3
  %61 = ptrtoint ptr %mbhc_hs_ins_intr.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %call8.i, ptr %mbhc_hs_ins_intr.i, align 4
  %62 = ptrtoint ptr %irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %irq_chip.i, align 4
  %call10.i = tail call i32 @regmap_irq_get_virq(ptr noundef %63, i32 noundef 2) #9
  %mbhc_hs_rem_intr.i = getelementptr inbounds %struct.wcd938x_priv, ptr %49, i32 0, i32 10, i32 4
  %64 = ptrtoint ptr %mbhc_hs_rem_intr.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %call10.i, ptr %mbhc_hs_rem_intr.i, align 4
  %65 = ptrtoint ptr %irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %irq_chip.i, align 4
  %call12.i = tail call i32 @regmap_irq_get_virq(ptr noundef %66, i32 noundef 7) #9
  %hph_left_ocp.i = getelementptr inbounds %struct.wcd938x_priv, ptr %49, i32 0, i32 10, i32 5
  %67 = ptrtoint ptr %hph_left_ocp.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call12.i, ptr %hph_left_ocp.i, align 4
  %68 = ptrtoint ptr %irq_chip.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %irq_chip.i, align 4
  %call14.i = tail call i32 @regmap_irq_get_virq(ptr noundef %69, i32 noundef 5) #9
  %hph_right_ocp.i = getelementptr inbounds %struct.wcd938x_priv, ptr %49, i32 0, i32 10, i32 6
  %70 = ptrtoint ptr %hph_right_ocp.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %call14.i, ptr %hph_right_ocp.i, align 4
  %call15.i = tail call ptr @wcd_mbhc_init(ptr noundef %component, ptr noundef nonnull @mbhc_cb, ptr noundef %intr_ids1.i, ptr noundef nonnull @wcd_mbhc_fields, i1 noundef zeroext true) #9
  %wcd_mbhc.i = getelementptr inbounds %struct.wcd938x_priv, ptr %49, i32 0, i32 8
  %71 = ptrtoint ptr %wcd_mbhc.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call15.i, ptr %wcd_mbhc.i, align 4
  %call16.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @impedance_detect_controls, i32 noundef 2) #9
  %call17.i = tail call i32 @snd_soc_add_component_controls(ptr noundef %component, ptr noundef nonnull @hph_type_detect_controls, i32 noundef 1) #9
  br label %err

err:                                              ; preds = %sw.epilog, %do.end49, %do.end39
  %ret.0 = phi i32 [ 0, %sw.epilog ], [ %call44, %do.end49 ], [ %call34, %do.end39 ]
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_set_jack(ptr nocapture noundef readonly %comp, ptr noundef %jack, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %comp, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %jack, null
  %wcd_mbhc2 = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %wcd_mbhc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wcd_mbhc2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mbhc_cfg = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 9
  %call1 = tail call i32 @wcd_mbhc_start(ptr noundef %5, ptr noundef %mbhc_cfg, ptr noundef nonnull %jack) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @wcd_mbhc_stop(ptr noundef %5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ 0, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_get_compander(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
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
  %8 = inttoptr i32 %7 to ptr
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  %comp1_enable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 33
  %comp2_enable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 34
  %.sink.in.in = select i1 %tobool.not, ptr %comp1_enable, ptr %comp2_enable
  %11 = ptrtoint ptr %.sink.in.in to i32
  call void @__asan_load1_noabort(i32 %11)
  %.sink.in = load i8, ptr %.sink.in.in, align 1, !range !740
  %.sink = zext i8 %.sink.in to i32
  %12 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_set_compander(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #7 align 64 {
entry:
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
  %value2 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value2, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %10 = inttoptr i32 %9 to ptr
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %sdw_priv = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %sdw_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %sdw_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool7 = icmp ne i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %comp2_enable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 34
  %frombool6 = zext i1 %tobool7 to i8
  %15 = ptrtoint ptr %comp2_enable to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool6, ptr %comp2_enable, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %comp1_enable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 33
  %frombool8 = zext i1 %tobool7 to i8
  %16 = ptrtoint ptr %comp1_enable to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %frombool8, ptr %comp1_enable, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ch_info = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %14, i32 0, i32 4
  %17 = ptrtoint ptr %ch_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ch_info, align 4
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %10, i32 0, i32 3
  %19 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reg, align 4
  %arrayidx9 = getelementptr %struct.wcd938x_sdw_ch_info, ptr %18, i32 %20
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  %idxprom.i33 = and i32 %20, 255
  %arrayidx.i34 = getelementptr %struct.wcd938x_sdw_ch_info, ptr %18, i32 %idxprom.i33
  %conv.i35 = and i32 %22, 255
  %sub.i36 = add nsw i32 %conv.i35, -1
  %arrayidx1.i37 = getelementptr %struct.wcd938x_sdw_priv, ptr %14, i32 0, i32 3, i32 %sub.i36
  %23 = ptrtoint ptr %arrayidx.i34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i34, align 4
  %ch_mask2.i.i38 = getelementptr %struct.wcd938x_sdw_ch_info, ptr %18, i32 %idxprom.i33, i32 1
  %25 = ptrtoint ptr %ch_mask2.i.i38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ch_mask2.i.i38, align 4
  %conv4.i.i39 = and i32 %24, 255
  %27 = ptrtoint ptr %arrayidx1.i37 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %conv4.i.i39, ptr %arrayidx1.i37, align 4
  %conv7.i.i40 = and i32 %26, 255
  br i1 %tobool10.not, label %if.else15, label %if.then11

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %ch_mask6.i.i = getelementptr %struct.wcd938x_sdw_priv, ptr %14, i32 0, i32 3, i32 %sub.i36, i32 1
  %28 = ptrtoint ptr %ch_mask6.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ch_mask6.i.i, align 4
  %or.i.i = or i32 %29, %conv7.i.i40
  store i32 %or.i.i, ptr %ch_mask6.i.i, align 4
  br label %if.end20

if.else15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i.i = xor i32 %conv7.i.i40, -1
  %ch_mask8.i.i = getelementptr %struct.wcd938x_sdw_priv, ptr %14, i32 0, i32 3, i32 %sub.i36, i32 1
  %30 = ptrtoint ptr %ch_mask8.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ch_mask8.i.i, align 4
  %and.i.i = and i32 %31, %neg.i.i
  store i32 %and.i.i, ptr %ch_mask8.i.i, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.else15, %if.then11
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_get_swr_port(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
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
  %8 = inttoptr i32 %7 to ptr
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %shift, align 4
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %arrayidx = getelementptr %struct.wcd938x_priv, ptr %5, i32 0, i32 1, i32 %10
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %ch_info = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %ch_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_info, align 4
  %arrayidx2 = getelementptr %struct.wcd938x_sdw_ch_info, ptr %16, i32 %12
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2, align 4
  %arrayidx3 = getelementptr %struct.wcd938x_sdw_priv, ptr %14, i32 0, i32 5, i32 %18
  %19 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx3, align 1, !range !740
  %21 = zext i8 %20 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %22 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_set_swr_port(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #7 align 64 {
entry:
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
  %8 = inttoptr i32 %7 to ptr
  %reg = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %8, i32 0, i32 5
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shift, align 4
  %arrayidx = getelementptr %struct.wcd938x_priv, ptr %5, i32 0, i32 1, i32 %12
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx, align 4
  %ch_info = getelementptr inbounds %struct.wcd938x_sdw_priv, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %ch_info to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_info, align 4
  %arrayidx2 = getelementptr %struct.wcd938x_sdw_ch_info, ptr %16, i32 %10
  %17 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx2, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %19 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  %21 = xor i1 %tobool.not, true
  %arrayidx5 = getelementptr %struct.wcd938x_sdw_priv, ptr %14, i32 0, i32 5, i32 %18
  %frombool = zext i1 %21 to i8
  %22 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %arrayidx5, align 1
  %23 = ptrtoint ptr %ch_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ch_info, align 4
  %idxprom.i = and i32 %10, 255
  %arrayidx.i = getelementptr %struct.wcd938x_sdw_ch_info, ptr %24, i32 %idxprom.i
  %conv.i = and i32 %18, 255
  %sub.i = add nsw i32 %conv.i, -1
  %arrayidx1.i = getelementptr %struct.wcd938x_sdw_priv, ptr %14, i32 0, i32 3, i32 %sub.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.i, align 4
  %ch_mask2.i.i = getelementptr %struct.wcd938x_sdw_ch_info, ptr %24, i32 %idxprom.i, i32 1
  %27 = ptrtoint ptr %ch_mask2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ch_mask2.i.i, align 4
  %conv4.i.i = and i32 %26, 255
  %29 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %conv4.i.i, ptr %arrayidx1.i, align 4
  %conv7.i.i = and i32 %28, 255
  br i1 %tobool.not, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ch_mask6.i.i = getelementptr %struct.wcd938x_sdw_priv, ptr %14, i32 0, i32 3, i32 %sub.i, i32 1
  %30 = ptrtoint ptr %ch_mask6.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ch_mask6.i.i, align 4
  %or.i.i = or i32 %31, %conv7.i.i
  store i32 %or.i.i, ptr %ch_mask6.i.i, align 4
  br label %wcd938x_connect_port.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i.i = xor i32 %conv7.i.i, -1
  %ch_mask8.i.i = getelementptr %struct.wcd938x_sdw_priv, ptr %14, i32 0, i32 3, i32 %sub.i, i32 1
  %32 = ptrtoint ptr %ch_mask8.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ch_mask8.i.i, align 4
  %and.i.i = and i32 %33, %neg.i.i
  store i32 %and.i.i, ptr %ch_mask8.i.i, align 4
  br label %wcd938x_connect_port.exit

wcd938x_connect_port.exit:                        ; preds = %if.else.i.i, %if.then.i.i
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_ear_pa_put_gain(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
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
  %comp1_enable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 33
  %6 = ptrtoint ptr %comp1_enable to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %comp1_enable, align 4, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.141) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %call2 = tail call i32 @snd_soc_component_write_field(ptr noundef %1, i32 noundef 12299, i32 noundef 124, i32 noundef %9) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_ldoh_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
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
  %ldoh = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 35
  %6 = ptrtoint ptr %ldoh to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ldoh, align 2, !range !740
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_ldoh_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #7 align 64 {
entry:
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %ldoh = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 35
  %frombool = zext i1 %tobool to i8
  %8 = ptrtoint ptr %ldoh to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %ldoh, align 2
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_bcs_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
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
  %bcs_dis = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 36
  %6 = ptrtoint ptr %bcs_dis to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %bcs_dis, align 1, !range !740
  %8 = zext i8 %7 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_bcs_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #7 align 64 {
entry:
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool = icmp ne i32 %7, 0
  %bcs_dis = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 36
  %frombool = zext i1 %tobool to i8
  %8 = ptrtoint ptr %bcs_dis to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %bcs_dis, align 1
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write_field(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_enable_adc(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.361)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13320, i32 noundef 8, i32 noundef 1) #9
  %call3 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13320, i32 noundef 16, i32 noundef 1) #9
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift, align 4
  %conv = zext i8 %8 to i32
  %status_mask = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 17
  tail call void @_set_bit(i32 noundef %conv, ptr noundef %status_mask) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13320, i32 noundef 8, i32 noundef 0) #9
  %shift6 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %9 = ptrtoint ptr %shift6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift6, align 4
  %conv7 = zext i8 %10 to i32
  %status_mask8 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 17
  tail call void @_clear_bit(i32 noundef %conv7, ptr noundef %status_mask8) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_enable_dmic(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %3)
  %4 = icmp ult i8 %3, 8
  br i1 %4, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr i8, ptr %1, i32 -164
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.235, ptr noundef nonnull @.str.236) #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %7 = sext i8 %3 to i32
  %switch.gep32 = getelementptr inbounds [8 x i32], ptr @switch.table.wcd938x_codec_enable_dmic.351, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep32 to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load33 = load i32, ptr %switch.gep32, align 4
  %9 = sext i8 %3 to i32
  %switch.gep34 = getelementptr inbounds [8 x i32], ptr @switch.table.wcd938x_codec_enable_dmic.352, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep34 to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load35 = load i32, ptr %switch.gep34, align 4
  %11 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.362)
  switch i32 %event, label %switch.lookup.cleanup_crit_edge [
    i32 1, label %sw.bb4
    i32 8, label %sw.bb13
  ]

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4:                                           ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %12 = sext i8 %3 to i32
  %switch.gep36 = getelementptr inbounds [8 x i32], ptr @switch.table.wcd938x_codec_enable_dmic.353, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep36 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load37 = load i32, ptr %switch.gep36, align 4
  %14 = sext i8 %3 to i32
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.wcd938x_codec_enable_dmic, i32 0, i32 %14
  %15 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %15)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call6 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13402, i32 noundef %switch.load35, i32 noundef 0) #9
  tail call void @usleep_range_state(i32 noundef 250, i32 noundef 260, i32 noundef 2) #9
  %call9 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %switch.load, i32 noundef %switch.load37, i32 noundef 3) #9
  %call11 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %switch.load33, i32 noundef 8, i32 noundef 1) #9
  %call12 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13403, i32 noundef 6, i32 noundef 3) #9
  br label %cleanup

sw.bb13:                                          ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13402, i32 noundef %switch.load35, i32 noundef 0) #9
  %call17 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %switch.load33, i32 noundef 8, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.bb13, %sw.bb4, %switch.lookup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %switch.lookup.cleanup_crit_edge ], [ 0, %sw.bb13 ], [ 0, %sw.bb4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_adc_enable_req(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.363)
  switch i32 %event, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %call2 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13399, i32 noundef 2, i32 noundef 1) #9
  %call3 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13399, i32 noundef 1, i32 noundef 0) #9
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %8)
  %9 = icmp ult i8 %8, 4
  br i1 %9, label %switch.lookup, label %sw.bb.wcd938x_tx_channel_config.exit_crit_edge

sw.bb.wcd938x_tx_channel_config.exit_crit_edge:   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcd938x_tx_channel_config.exit

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %10 = sext i8 %8 to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wcd938x_adc_enable_req, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %12 = sext i8 %8 to i32
  %switch.gep90 = getelementptr inbounds [4 x i32], ptr @switch.table.wcd938x_adc_enable_req.354, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep90 to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load91 = load i32, ptr %switch.gep90, align 4
  %call.i = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %switch.load, i32 noundef %switch.load91, i32 noundef 1) #9
  %14 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %14)
  %.pr = load i8, ptr %shift, align 4
  br label %wcd938x_tx_channel_config.exit

wcd938x_tx_channel_config.exit:                   ; preds = %switch.lookup, %sw.bb.wcd938x_tx_channel_config.exit_crit_edge
  %15 = phi i8 [ %8, %sw.bb.wcd938x_tx_channel_config.exit_crit_edge ], [ %.pr, %switch.lookup ]
  %idxprom = zext i8 %15 to i32
  %arrayidx = getelementptr %struct.wcd938x_priv, ptr %5, i32 0, i32 21, i32 %idxprom
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %17)
  %18 = icmp ult i32 %17, 7
  br i1 %18, label %switch.lookup92, label %do.end

do.end:                                           ; preds = %wcd938x_tx_channel_config.exit
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.237) #12
  br label %cleanup

switch.lookup92:                                  ; preds = %wcd938x_tx_channel_config.exit
  %switch.gep93 = getelementptr inbounds [7 x i32], ptr @switch.table.wcd938x_adc_enable_req.355, i32 0, i32 %17
  %21 = ptrtoint ptr %switch.gep93 to i32
  call void @__asan_load4_noabort(i32 %21)
  %switch.load94 = load i32, ptr %switch.gep93, align 4
  %22 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.364)
  switch i8 %15, label %switch.lookup92.sw.epilog_crit_edge [
    i8 0, label %sw.bb9
    i8 1, label %sw.bb12
    i8 2, label %sw.bb15
    i8 3, label %sw.bb18
  ]

switch.lookup92.sw.epilog_crit_edge:              ; preds = %switch.lookup92
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb9:                                           ; preds = %switch.lookup92
  call void @__sanitizer_cov_trace_pc() #11
  %call10 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13328, i32 noundef 15, i32 noundef %switch.load94) #9
  br label %sw.epilog.sink.split

sw.bb12:                                          ; preds = %switch.lookup92
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13328, i32 noundef 240, i32 noundef %switch.load94) #9
  br label %sw.epilog.sink.split

sw.bb15:                                          ; preds = %switch.lookup92
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13329, i32 noundef 15, i32 noundef %switch.load94) #9
  br label %sw.epilog.sink.split

sw.bb18:                                          ; preds = %switch.lookup92
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13329, i32 noundef 240, i32 noundef %switch.load94) #9
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb9
  %.sink = phi i32 [ 128, %sw.bb18 ], [ 64, %sw.bb15 ], [ 32, %sw.bb12 ], [ 16, %sw.bb9 ]
  %call20 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13321, i32 noundef %.sink, i32 noundef 1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %switch.lookup92.sw.epilog_crit_edge
  %23 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %shift, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %24)
  %25 = icmp ult i8 %24, 4
  br i1 %25, label %switch.lookup95, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.lookup95:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %26 = sext i8 %24 to i32
  %switch.gep96 = getelementptr inbounds [4 x i32], ptr @switch.table.wcd938x_adc_enable_req.356, i32 0, i32 %26
  %27 = ptrtoint ptr %switch.gep96 to i32
  call void @__asan_load4_noabort(i32 %27)
  %switch.load97 = load i32, ptr %switch.gep96, align 4
  %28 = sext i8 %24 to i32
  %switch.gep98 = getelementptr inbounds [4 x i32], ptr @switch.table.wcd938x_adc_enable_req.357, i32 0, i32 %28
  %29 = ptrtoint ptr %switch.gep98 to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load99 = load i32, ptr %switch.gep98, align 4
  %call.i83 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %switch.load97, i32 noundef %switch.load99, i32 noundef 0) #9
  br label %cleanup

sw.bb23:                                          ; preds = %entry
  %shift24 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %30 = ptrtoint ptr %shift24 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %shift24, align 4
  %32 = zext i8 %31 to i64
  call void @__sanitizer_cov_trace_switch(i64 %32, ptr @__sancov_gen_cov_switch_values.365)
  switch i8 %31, label %sw.bb23.sw.epilog39_crit_edge [
    i8 0, label %sw.bb26
    i8 1, label %sw.bb29
    i8 2, label %sw.bb32
    i8 3, label %sw.bb35
  ]

sw.bb23.sw.epilog39_crit_edge:                    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog39

sw.bb26:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %call27 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13328, i32 noundef 15, i32 noundef 0) #9
  br label %sw.epilog39.sink.split

sw.bb29:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13328, i32 noundef 240, i32 noundef 0) #9
  br label %sw.epilog39.sink.split

sw.bb32:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %call33 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13329, i32 noundef 15, i32 noundef 0) #9
  br label %sw.epilog39.sink.split

sw.bb35:                                          ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #11
  %call36 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13329, i32 noundef 240, i32 noundef 0) #9
  br label %sw.epilog39.sink.split

sw.epilog39.sink.split:                           ; preds = %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb26
  %.sink89 = phi i32 [ 128, %sw.bb35 ], [ 64, %sw.bb32 ], [ 32, %sw.bb29 ], [ 16, %sw.bb26 ]
  %call37 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13321, i32 noundef %.sink89, i32 noundef 0) #9
  br label %sw.epilog39

sw.epilog39:                                      ; preds = %sw.epilog39.sink.split, %sw.bb23.sw.epilog39_crit_edge
  %call40 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13320, i32 noundef 16, i32 noundef 0) #9
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog39, %switch.lookup95, %sw.epilog.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.epilog39 ], [ 0, %sw.epilog.cleanup_crit_edge ], [ 0, %switch.lookup95 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_tx_swr_ctrl(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %arrayidx = getelementptr %struct.wcd938x_priv, ptr %5, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call2 = tail call i32 @wcd938x_swr_get_current_bank(ptr noundef %9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not.not = icmp eq i32 %call2, 0
  %10 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.366)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb56
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %name = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %11 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name, align 4
  %call5 = tail call ptr @strnstr(ptr noundef %12, ptr noundef nonnull @.str.254, i32 noundef 4) #9
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %sw.bb.sw.epilog_crit_edge, label %if.then

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  %status_mask = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 17
  %13 = ptrtoint ptr %status_mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %status_mask, align 4
  %and1.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool8.not = icmp eq i32 %and1.i, 0
  br i1 %tobool8.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %tx_mode = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 21
  %15 = ptrtoint ptr %tx_mode to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx_mode, align 4
  %arrayidx11 = getelementptr [7 x i8], ptr @tx_mode_bit, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx11, align 1
  %conv = zext i8 %18 to i32
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  %mode.0 = phi i32 [ %conv, %if.then9 ], [ 0, %if.then.if.end_crit_edge ]
  %19 = ptrtoint ptr %status_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %status_mask, align 4
  %21 = and i32 %20, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not = icmp eq i32 %21, 0
  br i1 %tobool14.not, label %if.end.if.end21_crit_edge, label %if.then15

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx17 = getelementptr %struct.wcd938x_priv, ptr %5, i32 0, i32 21, i32 1
  %22 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx17, align 4
  %arrayidx18 = getelementptr [7 x i8], ptr @tx_mode_bit, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %25 to i32
  %or20 = or i32 %mode.0, %conv19
  br label %if.end21

if.end21:                                         ; preds = %if.then15, %if.end.if.end21_crit_edge
  %mode.1 = phi i32 [ %or20, %if.then15 ], [ %mode.0, %if.end.if.end21_crit_edge ]
  %26 = ptrtoint ptr %status_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %status_mask, align 4
  %28 = and i32 %27, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool24.not = icmp eq i32 %28, 0
  br i1 %tobool24.not, label %if.end21.if.end31_crit_edge, label %if.then25

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx27 = getelementptr %struct.wcd938x_priv, ptr %5, i32 0, i32 21, i32 2
  %29 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx27, align 4
  %arrayidx28 = getelementptr [7 x i8], ptr @tx_mode_bit, i32 0, i32 %30
  %31 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %32 to i32
  %or30 = or i32 %mode.1, %conv29
  br label %if.end31

if.end31:                                         ; preds = %if.then25, %if.end21.if.end31_crit_edge
  %mode.2 = phi i32 [ %or30, %if.then25 ], [ %mode.1, %if.end21.if.end31_crit_edge ]
  %33 = ptrtoint ptr %status_mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %status_mask, align 4
  %35 = and i32 %34, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool34.not = icmp eq i32 %35, 0
  br i1 %tobool34.not, label %if.end31.if.end41_crit_edge, label %if.then35

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx37 = getelementptr %struct.wcd938x_priv, ptr %5, i32 0, i32 21, i32 3
  %36 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx37, align 4
  %arrayidx38 = getelementptr [7 x i8], ptr @tx_mode_bit, i32 0, i32 %37
  %38 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %39 to i32
  %or40 = or i32 %mode.2, %conv39
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.end31.if.end41_crit_edge
  %mode.3 = phi i32 [ %or40, %if.then35 ], [ %mode.2, %if.end31.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mode.3)
  %cmp.not = icmp ne i32 %mode.3, 0
  %40 = and i32 %mode.3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %41 = icmp eq i32 %40, 0
  %42 = and i1 %41, %cmp.not
  br i1 %42, label %for.inc.2, label %wcd938x_set_swr_clk_rate.exit.thread

for.inc.2:                                        ; preds = %if.end41
  %and.3 = and i32 %mode.3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool46.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool46.not.3, label %for.inc.3, label %sw.bb12.i110

for.inc.3:                                        ; preds = %for.inc.2
  %and.4 = and i32 %mode.3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool46.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool46.not.4, label %sw.bb.i104, label %sw.bb4.i106

wcd938x_set_swr_clk_rate.exit.thread:             ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %conv17.i142 = select i1 %tobool.not.not, i32 15, i32 240
  %call.i143 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 13317, i32 noundef %conv17.i142, i32 noundef 0) #9
  br label %wcd938x_set_swr_clk_rate.exit114

sw.bb.i104:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %cond2.i = select i1 %tobool.not.not, i32 6, i32 96
  %conv17.i149 = select i1 %tobool.not.not, i32 15, i32 240
  %call.i150 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 13317, i32 noundef %conv17.i149, i32 noundef %cond2.i) #9
  %cond2.i103 = select i1 %tobool.not.not, i32 96, i32 6
  br label %wcd938x_set_swr_clk_rate.exit114

sw.bb4.i106:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  %cond6.i = select i1 %tobool.not.not, i32 5, i32 80
  %conv17.i156 = select i1 %tobool.not.not, i32 15, i32 240
  %call.i157 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 13317, i32 noundef %conv17.i156, i32 noundef %cond6.i) #9
  %cond6.i105 = select i1 %tobool.not.not, i32 80, i32 5
  br label %wcd938x_set_swr_clk_rate.exit114

sw.bb12.i110:                                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  %conv15.i = select i1 %tobool.not.not, i32 1, i32 16
  %conv17.i = select i1 %tobool.not.not, i32 15, i32 240
  %call.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 13317, i32 noundef %conv17.i, i32 noundef %conv15.i) #9
  %conv15.i109 = select i1 %tobool.not.not, i32 16, i32 1
  br label %wcd938x_set_swr_clk_rate.exit114

wcd938x_set_swr_clk_rate.exit114:                 ; preds = %sw.bb12.i110, %sw.bb4.i106, %sw.bb.i104, %wcd938x_set_swr_clk_rate.exit.thread
  %val.0.i111 = phi i32 [ %conv15.i109, %sw.bb12.i110 ], [ %cond6.i105, %sw.bb4.i106 ], [ %cond2.i103, %sw.bb.i104 ], [ 0, %wcd938x_set_swr_clk_rate.exit.thread ]
  %conv17.i112 = select i1 %tobool.not.not, i32 240, i32 15
  %call.i113 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 13317, i32 noundef %conv17.i112, i32 noundef %val.0.i111) #9
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  %name57 = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 1
  %43 = ptrtoint ptr %name57 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %name57, align 4
  %call58 = tail call ptr @strnstr(ptr noundef %44, ptr noundef nonnull @.str.254, i32 noundef 4) #9
  %tobool59.not = icmp eq ptr %call58, null
  br i1 %tobool59.not, label %sw.bb56.sw.epilog_crit_edge, label %if.then60

sw.bb56.sw.epilog_crit_edge:                      ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then60:                                        ; preds = %sw.bb56
  call void @__sanitizer_cov_trace_pc() #11
  %conv17.i118 = select i1 %tobool.not.not, i32 240, i32 15
  %call.i119 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 13317, i32 noundef %conv17.i118, i32 noundef 0) #9
  %conv17.i122 = select i1 %tobool.not.not, i32 15, i32 240
  %call.i123 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 13317, i32 noundef %conv17.i122, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then60, %sw.bb56.sw.epilog_crit_edge, %wcd938x_set_swr_clk_rate.exit114, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_enable_micbias(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shift, align 4
  %conv = zext i8 %3 to i32
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.367)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 8, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call fastcc i32 @wcd938x_micbias_control(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef 2, i1 noundef zeroext true)
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call fastcc i32 @wcd938x_micbias_control(ptr noundef %add.ptr.i, i32 noundef %conv, i32 noundef 3, i1 noundef zeroext true)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb3, %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_enable_micbias_pullup(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %shift = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 9
  %2 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %shift, align 4
  %conv = zext i8 %3 to i32
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.368)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb2
    i32 8, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dev.i.i = getelementptr i8, ptr %1, i32 -164
  %5 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i, align 4
  %sub.i = add nsw i32 %conv, -1
  %switch.tableidx = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx)
  %9 = icmp ult i8 %switch.tableidx, 4
  br i1 %9, label %switch.lookup, label %do.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.268, ptr noundef nonnull @.str.269, i32 noundef %conv) #12
  br label %sw.epilog

switch.lookup:                                    ; preds = %sw.bb
  %10 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wcd938x_codec_enable_micbias_pullup, i32 0, i32 %10
  %11 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %11)
  %switch.load = load i32, ptr %switch.gep, align 4
  %arrayidx.i = getelementptr %struct.wcd938x_priv, ptr %8, i32 0, i32 19, i32 %sub.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %inc.i = add i32 %13, 1
  store i32 %inc.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp.i = icmp eq i32 %13, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %switch.lookup.sw.epilog_crit_edge

switch.lookup.sw.epilog_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %switch.lookup
  %arrayidx7.i = getelementptr %struct.wcd938x_priv, ptr %8, i32 0, i32 18, i32 %sub.i
  %14 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8.i = icmp eq i32 %15, 0
  br i1 %cmp8.i, label %if.then.i, label %land.lhs.true.i.sw.epilog_crit_edge

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call9.i = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %switch.load, i32 noundef 192, i32 noundef 2) #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1100, i32 noundef 2) #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %dev.i.i8 = getelementptr i8, ptr %1, i32 -164
  %16 = ptrtoint ptr %dev.i.i8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i.i8, align 4
  %driver_data.i.i.i9 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i.i9, align 4
  %sub.i10 = add nsw i32 %conv, -1
  %switch.tableidx20 = add i8 %3, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %switch.tableidx20)
  %20 = icmp ult i8 %switch.tableidx20, 4
  br i1 %20, label %switch.lookup19, label %do.end.i14

do.end.i14:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.268, ptr noundef nonnull @.str.269, i32 noundef %conv) #12
  br label %sw.epilog

switch.lookup19:                                  ; preds = %sw.bb3
  %21 = sext i8 %switch.tableidx20 to i32
  %switch.gep21 = getelementptr inbounds [4 x i32], ptr @switch.table.wcd938x_codec_enable_micbias_pullup.358, i32 0, i32 %21
  %22 = ptrtoint ptr %switch.gep21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %switch.load22 = load i32, ptr %switch.gep21, align 4
  %arrayidx12.i = getelementptr %struct.wcd938x_priv, ptr %19, i32 0, i32 19, i32 %sub.i10
  %23 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp13.i = icmp sgt i32 %24, 0
  br i1 %cmp13.i, label %if.then15.i, label %switch.lookup19.if.end18.i_crit_edge

switch.lookup19.if.end18.i_crit_edge:             ; preds = %switch.lookup19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18.i

if.then15.i:                                      ; preds = %switch.lookup19
  call void @__sanitizer_cov_trace_pc() #11
  %dec.i = add nsw i32 %24, -1
  %25 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %dec.i, ptr %arrayidx12.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then15.i, %switch.lookup19.if.end18.i_crit_edge
  %26 = phi i32 [ %dec.i, %if.then15.i ], [ %24, %switch.lookup19.if.end18.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp21.i = icmp eq i32 %26, 0
  br i1 %cmp21.i, label %land.lhs.true23.i, label %if.end18.i.sw.epilog_crit_edge

if.end18.i.sw.epilog_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true23.i:                                ; preds = %if.end18.i
  %arrayidx25.i = getelementptr %struct.wcd938x_priv, ptr %19, i32 0, i32 18, i32 %sub.i10
  %27 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx25.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp26.i = icmp eq i32 %28, 0
  br i1 %cmp26.i, label %if.then28.i, label %land.lhs.true23.i.sw.epilog_crit_edge

land.lhs.true23.i.sw.epilog_crit_edge:            ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then28.i:                                      ; preds = %land.lhs.true23.i
  call void @__sanitizer_cov_trace_pc() #11
  %call30.i = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %switch.load22, i32 noundef 192, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then28.i, %land.lhs.true23.i.sw.epilog_crit_edge, %if.end18.i.sw.epilog_crit_edge, %do.end.i14, %sw.bb2, %if.then.i, %land.lhs.true.i.sw.epilog_crit_edge, %switch.lookup.sw.epilog_crit_edge, %do.end.i, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_enable_ear_pa(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %hph_mode2 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %hph_mode2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hph_mode2, align 4
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.369)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 4, label %sw.bb26
    i32 8, label %sw.bb35
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call3 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 13392) #9
  %ear_rx_path = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 23
  %9 = ptrtoint ptr %ear_rx_path to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call3, ptr %ear_rx_path, align 4
  %and = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13415, i32 noundef 7, i32 noundef 1) #9
  br label %if.end

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13413, i32 noundef 7, i32 noundef 3) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %comp1_enable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 33
  %10 = ptrtoint ptr %comp1_enable to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %comp1_enable, align 4, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12299, i32 noundef 128, i32 noundef 1) #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 6000, i32 noundef 6010, i32 noundef 2) #9
  %12 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.370)
  switch i32 %7, label %sw.bb11.if.end19_crit_edge [
    i32 3, label %sw.bb11.if.then17_crit_edge
    i32 6, label %sw.bb11.if.then17_crit_edge82
    i32 7, label %sw.bb11.if.then17_crit_edge83
    i32 8, label %sw.bb11.if.then17_crit_edge84
  ]

sw.bb11.if.then17_crit_edge84:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

sw.bb11.if.then17_crit_edge83:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

sw.bb11.if.then17_crit_edge82:                    ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

sw.bb11.if.then17_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17

sw.bb11.if.end19_crit_edge:                       ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then17:                                        ; preds = %sw.bb11.if.then17_crit_edge, %sw.bb11.if.then17_crit_edge82, %sw.bb11.if.then17_crit_edge83, %sw.bb11.if.then17_crit_edge84
  %call18 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12296, i32 noundef 2, i32 noundef 1) #9
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %sw.bb11.if.end19_crit_edge
  %ear_rx_path20 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 23
  %13 = ptrtoint ptr %ear_rx_path20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ear_rx_path20, align 4
  %and21 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else24, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %aux_pdm_wd_int = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 32
  %15 = ptrtoint ptr %aux_pdm_wd_int to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %aux_pdm_wd_int, align 4
  tail call void @enable_irq(i32 noundef %16) #9
  br label %sw.epilog

if.else24:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %hphl_pdm_wd_int = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 31
  %17 = ptrtoint ptr %hphl_pdm_wd_int to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hphl_pdm_wd_int, align 4
  tail call void @enable_irq(i32 noundef %18) #9
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  %ear_rx_path27 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 23
  %19 = ptrtoint ptr %ear_rx_path27 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ear_rx_path27, align 4
  %and28 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.else32, label %if.then30

if.then30:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  %aux_pdm_wd_int31 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 32
  %21 = ptrtoint ptr %aux_pdm_wd_int31 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %aux_pdm_wd_int31, align 4
  tail call void @disable_irq_nosync(i32 noundef %22) #9
  br label %sw.epilog

if.else32:                                        ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #11
  %hphl_pdm_wd_int33 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 31
  %23 = ptrtoint ptr %hphl_pdm_wd_int33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hphl_pdm_wd_int33, align 4
  tail call void @disable_irq_nosync(i32 noundef %24) #9
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %comp1_enable36 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 33
  %25 = ptrtoint ptr %comp1_enable36 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %comp1_enable36, align 4, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool37.not = icmp eq i8 %26, 0
  br i1 %tobool37.not, label %if.then38, label %sw.bb35.if.end40_crit_edge

sw.bb35.if.end40_crit_edge:                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

if.then38:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12299, i32 noundef 128, i32 noundef 0) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %sw.bb35.if.end40_crit_edge
  tail call void @usleep_range_state(i32 noundef 7000, i32 noundef 7010, i32 noundef 2) #9
  %ear_rx_path41 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 23
  %27 = ptrtoint ptr %ear_rx_path41 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ear_rx_path41, align 4
  %and42 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  %. = select i1 %tobool43.not, i32 13413, i32 13415
  %call47 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef %., i32 noundef 7, i32 noundef 0) #9
  %clsh_info = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 11
  %29 = ptrtoint ptr %clsh_info to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %clsh_info, align 4
  %call49 = tail call i32 @wcd_clsh_ctrl_set_state(ptr noundef %30, i32 noundef 2, i32 noundef 1, i32 noundef %7) #9
  %flyback_cur_det_disable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 22
  %31 = ptrtoint ptr %flyback_cur_det_disable to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flyback_cur_det_disable, align 4
  %dec = add i32 %32, -1
  store i32 %dec, ptr %flyback_cur_det_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp51 = icmp eq i32 %dec, 0
  br i1 %cmp51, label %if.then52, label %if.end40.sw.epilog_crit_edge

if.end40.sw.epilog_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then52:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %call53 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12452, i32 noundef 4, i32 noundef 1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then52, %if.end40.sw.epilog_crit_edge, %if.else32, %if.then30, %if.else24, %if.then23, %if.then8, %if.end.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_enable_aux_pa(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %hph_mode2 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %hph_mode2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hph_mode2, align 4
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.371)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
    i32 4, label %sw.bb11
    i32 8, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13415, i32 noundef 7, i32 noundef 1) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #9
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.372)
  switch i32 %7, label %sw.bb4.if.end_crit_edge [
    i32 3, label %sw.bb4.if.then_crit_edge
    i32 6, label %sw.bb4.if.then_crit_edge34
    i32 7, label %sw.bb4.if.then_crit_edge35
    i32 8, label %sw.bb4.if.then_crit_edge36
  ]

sw.bb4.if.then_crit_edge36:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb4.if.then_crit_edge35:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb4.if.then_crit_edge34:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb4.if.then_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

sw.bb4.if.end_crit_edge:                          ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb4.if.then_crit_edge, %sw.bb4.if.then_crit_edge34, %sw.bb4.if.then_crit_edge35, %sw.bb4.if.then_crit_edge36
  %call10 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12296, i32 noundef 2, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb4.if.end_crit_edge
  %aux_pdm_wd_int = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 32
  %10 = ptrtoint ptr %aux_pdm_wd_int to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %aux_pdm_wd_int, align 4
  tail call void @enable_irq(i32 noundef %11) #9
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %aux_pdm_wd_int12 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 32
  %12 = ptrtoint ptr %aux_pdm_wd_int12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %aux_pdm_wd_int12, align 4
  tail call void @disable_irq_nosync(i32 noundef %13) #9
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #9
  %call14 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13415, i32 noundef 7, i32 noundef 0) #9
  %clsh_info = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 11
  %14 = ptrtoint ptr %clsh_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clsh_info, align 4
  %call15 = tail call i32 @wcd_clsh_ctrl_set_state(ptr noundef %15, i32 noundef 2, i32 noundef 16, i32 noundef %7) #9
  %flyback_cur_det_disable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 22
  %16 = ptrtoint ptr %flyback_cur_det_disable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flyback_cur_det_disable, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %flyback_cur_det_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp17 = icmp eq i32 %dec, 0
  br i1 %cmp17, label %if.then18, label %sw.bb13.sw.epilog_crit_edge

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then18:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12452, i32 noundef 4, i32 noundef 1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then18, %sw.bb13.sw.epilog_crit_edge, %sw.bb11, %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_enable_hphl_pa(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %hph_mode2 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %hph_mode2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hph_mode2, align 4
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.373)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 4, label %sw.bb44
    i32 8, label %sw.bb54
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ldoh = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 35
  %9 = ptrtoint ptr %ldoh to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ldoh, align 2, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12391, i32 noundef 128, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %clsh_info = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 11
  %11 = ptrtoint ptr %clsh_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clsh_info, align 4
  %call4 = tail call i32 @wcd_clsh_ctrl_set_state(ptr noundef %12, i32 noundef 1, i32 noundef 2, i32 noundef %7) #9
  %13 = ptrtoint ptr %clsh_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clsh_info, align 4
  tail call void @wcd_clsh_set_hph_mode(ptr noundef %14, i32 noundef 1) #9
  %15 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.374)
  switch i32 %7, label %if.end.if.end11_crit_edge [
    i32 2, label %if.end.if.then9_crit_edge
    i32 4, label %if.end.if.then9_crit_edge121
    i32 5, label %if.end.if.then9_crit_edge122
  ]

if.end.if.then9_crit_edge122:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end.if.then9_crit_edge121:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %if.end.if.then9_crit_edge121, %if.end.if.then9_crit_edge122
  %call10 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12510, i32 noundef 1, i32 noundef 1) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %call12 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12297, i32 noundef 32, i32 noundef 1) #9
  %16 = ptrtoint ptr %clsh_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clsh_info, align 4
  tail call void @wcd_clsh_set_hph_mode(ptr noundef %17, i32 noundef %7) #9
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #9
  %status_mask = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 6, ptr noundef %status_mask) #9
  %call14 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13413, i32 noundef 7, i32 noundef 3) #9
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %status_mask16 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 17
  %18 = ptrtoint ptr %status_mask16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %status_mask16, align 4
  %20 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not = icmp eq i32 %20, 0
  br i1 %tobool18.not, label %sw.bb15.if.end32_crit_edge, label %if.then19

sw.bb15.if.end32_crit_edge:                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then19:                                        ; preds = %sw.bb15
  %comp1_enable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 33
  %21 = ptrtoint ptr %comp1_enable to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %comp1_enable, align 4, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool20.not = icmp eq i8 %22, 0
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 20100, i32 noundef 2) #9
  br label %if.end22

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 7000, i32 noundef 7100, i32 noundef 2) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  %23 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.375)
  switch i32 %7, label %if.end22.if.end30_crit_edge [
    i32 2, label %if.end22.if.then28_crit_edge
    i32 4, label %if.end22.if.then28_crit_edge123
    i32 5, label %if.end22.if.then28_crit_edge124
  ]

if.end22.if.then28_crit_edge124:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.end22.if.then28_crit_edge123:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.end22.if.then28_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then28:                                        ; preds = %if.end22.if.then28_crit_edge, %if.end22.if.then28_crit_edge123, %if.end22.if.then28_crit_edge124
  %call29 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12510, i32 noundef 1, i32 noundef 0) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end22.if.end30_crit_edge
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %status_mask16) #9
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %sw.bb15.if.end32_crit_edge
  %call33 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12602, i32 noundef 2, i32 noundef 1) #9
  %24 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.376)
  switch i32 %7, label %if.end32.if.end43_crit_edge [
    i32 3, label %if.end32.if.then41_crit_edge
    i32 6, label %if.end32.if.then41_crit_edge125
    i32 7, label %if.end32.if.then41_crit_edge126
    i32 8, label %if.end32.if.then41_crit_edge127
  ]

if.end32.if.then41_crit_edge127:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.end32.if.then41_crit_edge126:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.end32.if.then41_crit_edge125:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.end32.if.then41_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then41:                                        ; preds = %if.end32.if.then41_crit_edge, %if.end32.if.then41_crit_edge125, %if.end32.if.then41_crit_edge126, %if.end32.if.then41_crit_edge127
  %call42 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12296, i32 noundef 2, i32 noundef 1) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end32.if.end43_crit_edge
  %hphl_pdm_wd_int = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 31
  %25 = ptrtoint ptr %hphl_pdm_wd_int to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hphl_pdm_wd_int, align 4
  tail call void @enable_irq(i32 noundef %26) #9
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  %hphl_pdm_wd_int45 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 31
  %27 = ptrtoint ptr %hphl_pdm_wd_int45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hphl_pdm_wd_int45, align 4
  tail call void @disable_irq_nosync(i32 noundef %28) #9
  %comp1_enable46 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 33
  %29 = ptrtoint ptr %comp1_enable46 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %comp1_enable46, align 4, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool47.not = icmp eq i8 %30, 0
  br i1 %tobool47.not, label %if.then48, label %if.else49

if.then48:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 20100, i32 noundef 2) #9
  br label %if.end50

if.else49:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 7000, i32 noundef 7100, i32 noundef 2) #9
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then48
  %call51 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12297, i32 noundef 128, i32 noundef 0) #9
  %wcd_mbhc = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 8
  %31 = ptrtoint ptr %wcd_mbhc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wcd_mbhc, align 4
  %call52 = tail call i32 @wcd_mbhc_event_notify(ptr noundef %32, i32 noundef 13) #9
  %status_mask53 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 6, ptr noundef %status_mask53) #9
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  %status_mask55 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 17
  %33 = ptrtoint ptr %status_mask55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %status_mask55, align 4
  %35 = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool57.not = icmp eq i32 %35, 0
  br i1 %tobool57.not, label %sw.bb54.if.end65_crit_edge, label %if.then58

sw.bb54.if.end65_crit_edge:                       ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then58:                                        ; preds = %sw.bb54
  %comp1_enable59 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 33
  %36 = ptrtoint ptr %comp1_enable59 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %comp1_enable59, align 4, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool60.not = icmp eq i8 %37, 0
  br i1 %tobool60.not, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 21000, i32 noundef 21100, i32 noundef 2) #9
  br label %if.end63

if.else62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 7000, i32 noundef 7100, i32 noundef 2) #9
  br label %if.end63

if.end63:                                         ; preds = %if.else62, %if.then61
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %status_mask55) #9
  br label %if.end65

if.end65:                                         ; preds = %if.end63, %sw.bb54.if.end65_crit_edge
  %wcd_mbhc66 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 8
  %38 = ptrtoint ptr %wcd_mbhc66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wcd_mbhc66, align 4
  %call67 = tail call i32 @wcd_mbhc_event_notify(ptr noundef %39, i32 noundef 10) #9
  %call68 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12297, i32 noundef 32, i32 noundef 0) #9
  %call69 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13413, i32 noundef 7, i32 noundef 0) #9
  %clsh_info70 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 11
  %40 = ptrtoint ptr %clsh_info70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clsh_info70, align 4
  %call71 = tail call i32 @wcd_clsh_ctrl_set_state(ptr noundef %41, i32 noundef 2, i32 noundef 2, i32 noundef %7) #9
  %ldoh72 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 35
  %42 = ptrtoint ptr %ldoh72 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ldoh72, align 2, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool73.not = icmp eq i8 %43, 0
  br i1 %tobool73.not, label %if.end65.sw.epilog_crit_edge, label %if.then74

if.end65.sw.epilog_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then74:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %call75 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12391, i32 noundef 128, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then74, %if.end65.sw.epilog_crit_edge, %if.end50, %if.end43, %if.end11, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_enable_hphr_pa(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %hph_mode2 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %hph_mode2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hph_mode2, align 4
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.377)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb15
    i32 4, label %sw.bb44
    i32 8, label %sw.bb54
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %ldoh = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 35
  %9 = ptrtoint ptr %ldoh to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %ldoh, align 2, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %if.then

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12391, i32 noundef 128, i32 noundef 1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %clsh_info = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 11
  %11 = ptrtoint ptr %clsh_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clsh_info, align 4
  %call4 = tail call i32 @wcd_clsh_ctrl_set_state(ptr noundef %12, i32 noundef 1, i32 noundef 4, i32 noundef %7) #9
  %13 = ptrtoint ptr %clsh_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clsh_info, align 4
  tail call void @wcd_clsh_set_hph_mode(ptr noundef %14, i32 noundef 1) #9
  %15 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.378)
  switch i32 %7, label %if.end.if.end11_crit_edge [
    i32 2, label %if.end.if.then9_crit_edge
    i32 4, label %if.end.if.then9_crit_edge121
    i32 5, label %if.end.if.then9_crit_edge122
  ]

if.end.if.then9_crit_edge122:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end.if.then9_crit_edge121:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end.if.then9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end.if.then9_crit_edge, %if.end.if.then9_crit_edge121, %if.end.if.then9_crit_edge122
  %call10 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12510, i32 noundef 1, i32 noundef 1) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %call12 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12297, i32 noundef 16, i32 noundef 1) #9
  %16 = ptrtoint ptr %clsh_info to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clsh_info, align 4
  tail call void @wcd_clsh_set_hph_mode(ptr noundef %17, i32 noundef %7) #9
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 110, i32 noundef 2) #9
  %status_mask = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 6, ptr noundef %status_mask) #9
  %call14 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13414, i32 noundef 7, i32 noundef 3) #9
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  %status_mask16 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 17
  %18 = ptrtoint ptr %status_mask16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %status_mask16, align 4
  %20 = and i32 %19, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not = icmp eq i32 %20, 0
  br i1 %tobool18.not, label %sw.bb15.if.end32_crit_edge, label %if.then19

sw.bb15.if.end32_crit_edge:                       ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then19:                                        ; preds = %sw.bb15
  %comp2_enable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 34
  %21 = ptrtoint ptr %comp2_enable to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %comp2_enable, align 1, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool20.not = icmp eq i8 %22, 0
  br i1 %tobool20.not, label %if.then21, label %if.else

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 20100, i32 noundef 2) #9
  br label %if.end22

if.else:                                          ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 7000, i32 noundef 7100, i32 noundef 2) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then21
  %23 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.379)
  switch i32 %7, label %if.end22.if.end30_crit_edge [
    i32 2, label %if.end22.if.then28_crit_edge
    i32 4, label %if.end22.if.then28_crit_edge123
    i32 5, label %if.end22.if.then28_crit_edge124
  ]

if.end22.if.then28_crit_edge124:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.end22.if.then28_crit_edge123:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.end22.if.then28_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then28

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then28:                                        ; preds = %if.end22.if.then28_crit_edge, %if.end22.if.then28_crit_edge123, %if.end22.if.then28_crit_edge124
  %call29 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12510, i32 noundef 1, i32 noundef 0) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end22.if.end30_crit_edge
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %status_mask16) #9
  br label %if.end32

if.end32:                                         ; preds = %if.end30, %sw.bb15.if.end32_crit_edge
  %call33 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12602, i32 noundef 2, i32 noundef 1) #9
  %24 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.380)
  switch i32 %7, label %if.end32.if.end43_crit_edge [
    i32 3, label %if.end32.if.then41_crit_edge
    i32 6, label %if.end32.if.then41_crit_edge125
    i32 7, label %if.end32.if.then41_crit_edge126
    i32 8, label %if.end32.if.then41_crit_edge127
  ]

if.end32.if.then41_crit_edge127:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.end32.if.then41_crit_edge126:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.end32.if.then41_crit_edge125:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.end32.if.then41_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then41

if.end32.if.end43_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.then41:                                        ; preds = %if.end32.if.then41_crit_edge, %if.end32.if.then41_crit_edge125, %if.end32.if.then41_crit_edge126, %if.end32.if.then41_crit_edge127
  %call42 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12296, i32 noundef 2, i32 noundef 1) #9
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %if.end32.if.end43_crit_edge
  %hphr_pdm_wd_int = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 30
  %25 = ptrtoint ptr %hphr_pdm_wd_int to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hphr_pdm_wd_int, align 4
  tail call void @enable_irq(i32 noundef %26) #9
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  %hphr_pdm_wd_int45 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 30
  %27 = ptrtoint ptr %hphr_pdm_wd_int45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hphr_pdm_wd_int45, align 4
  tail call void @disable_irq_nosync(i32 noundef %28) #9
  %comp2_enable46 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 34
  %29 = ptrtoint ptr %comp2_enable46 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %comp2_enable46, align 1, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool47.not = icmp eq i8 %30, 0
  br i1 %tobool47.not, label %if.then48, label %if.else49

if.then48:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 20100, i32 noundef 2) #9
  br label %if.end50

if.else49:                                        ; preds = %sw.bb44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 7000, i32 noundef 7100, i32 noundef 2) #9
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then48
  %call51 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12297, i32 noundef 64, i32 noundef 0) #9
  %wcd_mbhc = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 8
  %31 = ptrtoint ptr %wcd_mbhc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %wcd_mbhc, align 4
  %call52 = tail call i32 @wcd_mbhc_event_notify(ptr noundef %32, i32 noundef 14) #9
  %status_mask53 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 17
  tail call void @_set_bit(i32 noundef 6, ptr noundef %status_mask53) #9
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  %status_mask55 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 17
  %33 = ptrtoint ptr %status_mask55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %status_mask55, align 4
  %35 = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool57.not = icmp eq i32 %35, 0
  br i1 %tobool57.not, label %sw.bb54.if.end65_crit_edge, label %if.then58

sw.bb54.if.end65_crit_edge:                       ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end65

if.then58:                                        ; preds = %sw.bb54
  %comp2_enable59 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 34
  %36 = ptrtoint ptr %comp2_enable59 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %comp2_enable59, align 1, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool60.not = icmp eq i8 %37, 0
  br i1 %tobool60.not, label %if.then61, label %if.else62

if.then61:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 20100, i32 noundef 2) #9
  br label %if.end63

if.else62:                                        ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usleep_range_state(i32 noundef 7000, i32 noundef 7100, i32 noundef 2) #9
  br label %if.end63

if.end63:                                         ; preds = %if.else62, %if.then61
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %status_mask55) #9
  br label %if.end65

if.end65:                                         ; preds = %if.end63, %sw.bb54.if.end65_crit_edge
  %wcd_mbhc66 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 8
  %38 = ptrtoint ptr %wcd_mbhc66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %wcd_mbhc66, align 4
  %call67 = tail call i32 @wcd_mbhc_event_notify(ptr noundef %39, i32 noundef 12) #9
  %call68 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12297, i32 noundef 16, i32 noundef 0) #9
  %call69 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13414, i32 noundef 7, i32 noundef 0) #9
  %clsh_info70 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 11
  %40 = ptrtoint ptr %clsh_info70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %clsh_info70, align 4
  %call71 = tail call i32 @wcd_clsh_ctrl_set_state(ptr noundef %41, i32 noundef 2, i32 noundef 4, i32 noundef %7) #9
  %ldoh72 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 35
  %42 = ptrtoint ptr %ldoh72 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ldoh72, align 2, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool73.not = icmp eq i8 %43, 0
  br i1 %tobool73.not, label %if.end65.sw.epilog_crit_edge, label %if.then74

if.end65.sw.epilog_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then74:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %call75 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12391, i32 noundef 128, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then74, %if.end65.sw.epilog_crit_edge, %if.end50, %if.end43, %if.end11, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_hphl_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.381)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 8, label %sw.bb16
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13321, i32 noundef 1, i32 noundef 1) #9
  %call3 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13390, i32 noundef 4, i32 noundef 1) #9
  %call4 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12505, i32 noundef 128, i32 noundef 0) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call6 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12595, i32 noundef 31, i32 noundef 2) #9
  %comp1_enable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 33
  %7 = ptrtoint ptr %comp1_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %comp1_enable, align 4, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb5
  %call7 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13332, i32 noundef 2, i32 noundef 1) #9
  %comp2_enable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 34
  %9 = ptrtoint ptr %comp2_enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %comp2_enable, align 1, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %if.then.if.then11_crit_edge, label %lor.lhs.false

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.then
  %call9 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 13332) #9
  %and = and i32 %call9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.then.if.then11_crit_edge
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5010, i32 noundef 2) #9
  br label %if.end

if.end:                                           ; preds = %if.then11, %lor.lhs.false.if.end_crit_edge
  %call12 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12602, i32 noundef 2, i32 noundef 0) #9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13332, i32 noundef 2, i32 noundef 0) #9
  %call14 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12499, i32 noundef 32, i32 noundef 1) #9
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12598, i32 noundef 31, i32 noundef 1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %if.else, %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_hphr_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.382)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
    i32 8, label %sw.bb16
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13321, i32 noundef 2, i32 noundef 1) #9
  %call3 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13390, i32 noundef 8, i32 noundef 1) #9
  %call4 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12505, i32 noundef 128, i32 noundef 0) #9
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  %call6 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12598, i32 noundef 31, i32 noundef 2) #9
  %comp2_enable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 34
  %7 = ptrtoint ptr %comp2_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %comp2_enable, align 1, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb5
  %call7 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13332, i32 noundef 1, i32 noundef 1) #9
  %comp1_enable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 33
  %9 = ptrtoint ptr %comp1_enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %comp1_enable, align 4, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool8.not = icmp eq i8 %10, 0
  br i1 %tobool8.not, label %if.then.if.then11_crit_edge, label %lor.lhs.false

if.then.if.then11_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.then
  %call9 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 13332) #9
  %and = and i32 %call9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then11_crit_edge

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.then.if.then11_crit_edge
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5010, i32 noundef 2) #9
  br label %if.end

if.end:                                           ; preds = %if.then11, %lor.lhs.false.if.end_crit_edge
  %call12 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12602, i32 noundef 2, i32 noundef 0) #9
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #11
  %call13 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13332, i32 noundef 1, i32 noundef 0) #9
  %call14 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12502, i32 noundef 32, i32 noundef 1) #9
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call17 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12598, i32 noundef 31, i32 noundef 1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb16, %if.else, %if.end, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_ear_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.383)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb19
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %add.ptr.i, i32 noundef 13392) #9
  %ear_rx_path = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 23
  %7 = ptrtoint ptr %ear_rx_path to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call2, ptr %ear_rx_path, align 4
  %and = and i32 %call2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12524, i32 noundef 128, i32 noundef 0) #9
  %call5 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13391, i32 noundef 1, i32 noundef 1) #9
  %call6 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13321, i32 noundef 4, i32 noundef 1) #9
  %call7 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12299, i32 noundef 128, i32 noundef 1) #9
  br label %if.end13

if.else:                                          ; preds = %sw.bb
  %call8 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13390, i32 noundef 4, i32 noundef 1) #9
  %call9 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13321, i32 noundef 1, i32 noundef 1) #9
  %comp1_enable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 33
  %8 = ptrtoint ptr %comp1_enable to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %comp1_enable, align 4, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool10.not = icmp eq i8 %9, 0
  br i1 %tobool10.not, label %if.else.if.end13_crit_edge, label %if.then11

if.else.if.end13_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13332, i32 noundef 2, i32 noundef 1) #9
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.else.if.end13_crit_edge, %if.then
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 5010, i32 noundef 2) #9
  %flyback_cur_det_disable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 22
  %10 = ptrtoint ptr %flyback_cur_det_disable to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flyback_cur_det_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  br i1 %cmp, label %if.then14, label %if.end13.if.end16_crit_edge

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call15 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12452, i32 noundef 4, i32 noundef 0) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end13.if.end16_crit_edge
  %12 = ptrtoint ptr %flyback_cur_det_disable to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flyback_cur_det_disable, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %flyback_cur_det_disable, align 4
  %clsh_info = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 11
  %14 = ptrtoint ptr %clsh_info to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clsh_info, align 4
  %hph_mode = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 20
  %16 = ptrtoint ptr %hph_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hph_mode, align 4
  %call18 = tail call i32 @wcd_clsh_ctrl_set_state(ptr noundef %15, i32 noundef 1, i32 noundef 1, i32 noundef %17) #9
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  %ear_rx_path20 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 23
  %18 = ptrtoint ptr %ear_rx_path20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ear_rx_path20, align 4
  %and21 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13391, i32 noundef 1, i32 noundef 0) #9
  %call25 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13321, i32 noundef 4, i32 noundef 0) #9
  br label %if.end34

if.else26:                                        ; preds = %sw.bb19
  %call27 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13390, i32 noundef 4, i32 noundef 0) #9
  %call28 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13321, i32 noundef 1, i32 noundef 0) #9
  %comp1_enable29 = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 33
  %20 = ptrtoint ptr %comp1_enable29 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %comp1_enable29, align 4, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool30.not = icmp eq i8 %21, 0
  br i1 %tobool30.not, label %if.else26.if.end34_crit_edge, label %if.then31

if.else26.if.end34_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then31:                                        ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #11
  %call32 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13332, i32 noundef 2, i32 noundef 0) #9
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.else26.if.end34_crit_edge, %if.then23
  %call35 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12299, i32 noundef 128, i32 noundef 0) #9
  %call36 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12524, i32 noundef 128, i32 noundef 1) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end34, %if.end16, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_aux_dac_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %6 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.384)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call2 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13320, i32 noundef 4, i32 noundef 1) #9
  %call3 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13321, i32 noundef 4, i32 noundef 1) #9
  %call4 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13391, i32 noundef 1, i32 noundef 1) #9
  %flyback_cur_det_disable = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 22
  %7 = ptrtoint ptr %flyback_cur_det_disable to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flyback_cur_det_disable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %if.then, label %sw.bb.if.end_crit_edge

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12452, i32 noundef 4, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.bb.if.end_crit_edge
  %9 = ptrtoint ptr %flyback_cur_det_disable to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flyback_cur_det_disable, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr %flyback_cur_det_disable, align 4
  %clsh_info = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 11
  %11 = ptrtoint ptr %clsh_info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clsh_info, align 4
  %hph_mode = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 20
  %13 = ptrtoint ptr %hph_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hph_mode, align 4
  %call7 = tail call i32 @wcd_clsh_ctrl_set_state(ptr noundef %12, i32 noundef 1, i32 noundef 16, i32 noundef %14) #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13320, i32 noundef 4, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %if.end, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_enable_rxclk(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.385)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 8, label %sw.bb8
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13320, i32 noundef 1, i32 noundef 1) #9
  %call2 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12296, i32 noundef 1, i32 noundef 1) #9
  %call3 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13325, i32 noundef 64, i32 noundef 0) #9
  %call4 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13326, i32 noundef 64, i32 noundef 0) #9
  %call5 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13327, i32 noundef 64, i32 noundef 0) #9
  %call6 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13320, i32 noundef 2, i32 noundef 1) #9
  %call7 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12584, i32 noundef 16, i32 noundef 1) #9
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12296, i32 noundef 64, i32 noundef 0) #9
  %call10 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12296, i32 noundef 128, i32 noundef 0) #9
  %call11 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 12296, i32 noundef 1, i32 noundef 0) #9
  %call12 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13320, i32 noundef 2, i32 noundef 0) #9
  %call13 = tail call i32 @snd_soc_component_write_field(ptr noundef %add.ptr.i, i32 noundef 13320, i32 noundef 1, i32 noundef 0) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcd938x_swr_get_current_bank(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strnstr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wcd938x_micbias_control(ptr noundef %component, i32 noundef %micb_num, i32 noundef %req, i1 noundef zeroext %is_dapm) unnamed_addr #2 align 64 {
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
  %sub = add i32 %micb_num, -1
  %switch.tableidx = add i32 %micb_num, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %switch.tableidx)
  %4 = icmp ult i32 %switch.tableidx, 4
  br i1 %4, label %switch.lookup, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.268, ptr noundef nonnull @.str.269, i32 noundef %micb_num) #12
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.wcd938x_micbias_control, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %6 = zext i32 %req to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.386)
  switch i32 %req, label %switch.lookup.cleanup_crit_edge [
    i32 0, label %sw.bb4
    i32 1, label %sw.bb10
    i32 2, label %sw.bb32
    i32 3, label %sw.bb60
  ]

switch.lookup.cleanup_crit_edge:                  ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb4:                                           ; preds = %switch.lookup
  %arrayidx = getelementptr %struct.wcd938x_priv, ptr %3, i32 0, i32 19, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %inc = add i32 %8, 1
  store i32 %inc, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp = icmp eq i32 %8, 0
  br i1 %cmp, label %land.lhs.true, label %sw.bb4.cleanup_crit_edge

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb4
  %arrayidx7 = getelementptr %struct.wcd938x_priv, ptr %3, i32 0, i32 18, i32 %sub
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8 = icmp eq i32 %10, 0
  br i1 %cmp8, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %switch.load, i32 noundef 192, i32 noundef 2) #9
  br label %cleanup

sw.bb10:                                          ; preds = %switch.lookup
  %arrayidx12 = getelementptr %struct.wcd938x_priv, ptr %3, i32 0, i32 19, i32 %sub
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp13 = icmp sgt i32 %12, 0
  br i1 %cmp13, label %if.then15, label %sw.bb10.if.end18_crit_edge

sw.bb10.if.end18_crit_edge:                       ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #11
  %dec = add nsw i32 %12, -1
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dec, ptr %arrayidx12, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %sw.bb10.if.end18_crit_edge
  %14 = phi i32 [ %dec, %if.then15 ], [ %12, %sw.bb10.if.end18_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp21 = icmp eq i32 %14, 0
  br i1 %cmp21, label %land.lhs.true23, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true23:                                  ; preds = %if.end18
  %arrayidx25 = getelementptr %struct.wcd938x_priv, ptr %3, i32 0, i32 18, i32 %sub
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx25, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp26 = icmp eq i32 %16, 0
  br i1 %cmp26, label %if.then28, label %land.lhs.true23.cleanup_crit_edge

land.lhs.true23.cleanup_crit_edge:                ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then28:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #11
  %call30 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %switch.load, i32 noundef 192, i32 noundef 0) #9
  br label %cleanup

sw.bb32:                                          ; preds = %switch.lookup
  %arrayidx34 = getelementptr %struct.wcd938x_priv, ptr %3, i32 0, i32 18, i32 %sub
  %17 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx34, align 4
  %inc35 = add i32 %18, 1
  store i32 %inc35, ptr %arrayidx34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp38 = icmp eq i32 %18, 0
  br i1 %cmp38, label %if.then40, label %sw.bb32.if.end51_crit_edge

sw.bb32.if.end51_crit_edge:                       ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then40:                                        ; preds = %sw.bb32
  %call41 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 13321, i32 noundef 240, i32 noundef 15) #9
  %call42 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 13320, i32 noundef 16, i32 noundef 1) #9
  %call43 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 13335, i32 noundef 1, i32 noundef 1) #9
  %call45 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %switch.load, i32 noundef 192, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %micb_num)
  %cond = icmp eq i32 %micb_num, 2
  br i1 %cond, label %if.then48, label %if.then40.cleanup_crit_edge

if.then40.cleanup_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then48:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #11
  %wcd_mbhc = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 8
  %19 = ptrtoint ptr %wcd_mbhc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %wcd_mbhc, align 4
  %call49 = tail call i32 @wcd_mbhc_event_notify(ptr noundef %20, i32 noundef 4) #9
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %sw.bb32.if.end51_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %micb_num)
  %cmp52 = icmp eq i32 %micb_num, 2
  %21 = and i1 %cmp52, %is_dapm
  br i1 %21, label %if.then56, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then56:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %wcd_mbhc57 = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %wcd_mbhc57 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %wcd_mbhc57, align 4
  %call58 = tail call i32 @wcd_mbhc_event_notify(ptr noundef %23, i32 noundef 8) #9
  br label %cleanup

sw.bb60:                                          ; preds = %switch.lookup
  %arrayidx62 = getelementptr %struct.wcd938x_priv, ptr %3, i32 0, i32 18, i32 %sub
  %24 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx62, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp63 = icmp sgt i32 %25, 0
  br i1 %cmp63, label %if.then65, label %sw.bb60.if.end69_crit_edge

sw.bb60.if.end69_crit_edge:                       ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then65:                                        ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #11
  %dec68 = add nsw i32 %25, -1
  %26 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %dec68, ptr %arrayidx62, align 4
  br label %if.end69

if.end69:                                         ; preds = %if.then65, %sw.bb60.if.end69_crit_edge
  %27 = phi i32 [ %dec68, %if.then65 ], [ %25, %sw.bb60.if.end69_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp72 = icmp eq i32 %27, 0
  br i1 %cmp72, label %land.lhs.true74, label %if.end69.if.end107_crit_edge

if.end69.if.end107_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

land.lhs.true74:                                  ; preds = %if.end69
  %arrayidx76 = getelementptr %struct.wcd938x_priv, ptr %3, i32 0, i32 19, i32 %sub
  %28 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp77 = icmp sgt i32 %29, 0
  br i1 %cmp77, label %if.then79, label %land.lhs.true86

if.then79:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  %call81 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %switch.load, i32 noundef 192, i32 noundef 2) #9
  br label %if.end107

land.lhs.true86:                                  ; preds = %land.lhs.true74
  %30 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx76, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp89 = icmp eq i32 %31, 0
  br i1 %cmp89, label %if.then91, label %land.lhs.true86.if.end107_crit_edge

land.lhs.true86.if.end107_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end107

if.then91:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %micb_num)
  %cmp92 = icmp eq i32 %micb_num, 2
  br i1 %cmp92, label %if.then94, label %if.end107.critedge

if.then94:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %wcd_mbhc95 = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 8
  %32 = ptrtoint ptr %wcd_mbhc95 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %wcd_mbhc95, align 4
  %call96 = tail call i32 @wcd_mbhc_event_notify(ptr noundef %33, i32 noundef 1) #9
  %call99.c = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %switch.load, i32 noundef 192, i32 noundef 0) #9
  %34 = ptrtoint ptr %wcd_mbhc95 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %wcd_mbhc95, align 4
  %call104 = tail call i32 @wcd_mbhc_event_notify(ptr noundef %35, i32 noundef 2) #9
  br label %if.end107

if.end107.critedge:                               ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #11
  %call99.c175 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %switch.load, i32 noundef 192, i32 noundef 0) #9
  br label %if.end107

if.end107:                                        ; preds = %if.end107.critedge, %if.then94, %land.lhs.true86.if.end107_crit_edge, %if.then79, %if.end69.if.end107_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %micb_num)
  %cmp111 = icmp eq i32 %micb_num, 2
  %or.cond = and i1 %cmp111, %is_dapm
  br i1 %or.cond, label %if.then113, label %if.end107.cleanup_crit_edge

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then113:                                       ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #11
  %wcd_mbhc114 = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 8
  %36 = ptrtoint ptr %wcd_mbhc114 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %wcd_mbhc114, align 4
  %call115 = tail call i32 @wcd_mbhc_event_notify(ptr noundef %37, i32 noundef 6) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %if.end107.cleanup_crit_edge, %if.then56, %if.end51.cleanup_crit_edge, %if.then40.cleanup_crit_edge, %if.then28, %land.lhs.true23.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.then, %land.lhs.true.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %switch.lookup.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end51.cleanup_crit_edge ], [ 0, %if.then40.cleanup_crit_edge ], [ 0, %if.end107.cleanup_crit_edge ], [ 0, %if.then113 ], [ 0, %if.then56 ], [ 0, %if.end18.cleanup_crit_edge ], [ 0, %land.lhs.true23.cleanup_crit_edge ], [ 0, %if.then28 ], [ 0, %sw.bb4.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.then ], [ 0, %switch.lookup.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcd_mbhc_event_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcd_clsh_ctrl_set_state(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wcd_clsh_set_hph_mode(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_component_init_regmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read_field(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wcd_clsh_ctrl_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_irq_get_virq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_wd_handle_irq(i32 noundef %irq, ptr nocapture noundef readnone %data) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_add_component_controls(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_rx_hph_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
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
  %hph_mode = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 20
  %6 = ptrtoint ptr %hph_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hph_mode, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_rx_hph_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #7 align 64 {
entry:
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
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %value, align 8
  %hph_mode = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 20
  %8 = ptrtoint ptr %hph_mode to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %hph_mode, align 4
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_tx_mode_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #7 align 64 {
entry:
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
  %8 = inttoptr i32 %7 to ptr
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift_l, align 4
  %conv = zext i8 %10 to i32
  %arrayidx = getelementptr %struct.wcd938x_priv, ptr %5, i32 0, i32 21, i32 %conv
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %13 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value, align 8
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wcd938x_tx_mode_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #7 align 64 {
entry:
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
  %8 = inttoptr i32 %7 to ptr
  %shift_l = getelementptr inbounds %struct.soc_enum, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %shift_l to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift_l, align 4
  %conv = zext i8 %10 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %11 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %value, align 8
  %arrayidx2 = getelementptr %struct.wcd938x_priv, ptr %5, i32 0, i32 21, i32 %conv
  %13 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx2, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @wcd_mbhc_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_wcd_mbhc_calc_impedance(ptr noundef %component, ptr nocapture noundef %zl, ptr nocapture noundef %zr) #2 align 64 {
entry:
  %z1L = alloca i32, align 4
  %z1R = alloca i32, align 4
  %z1Ls = alloca i32, align 4
  %zdet_param = alloca [4 x %struct.wcd938x_mbhc_zdet_param], align 2
  %d1_a = alloca [4 x [4 x i16]], align 2
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %z1L) #9
  %4 = ptrtoint ptr %z1L to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %z1L, align 4, !annotation !741
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %z1R) #9
  %5 = ptrtoint ptr %z1R to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %z1R, align 4, !annotation !741
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %z1Ls) #9
  %6 = ptrtoint ptr %z1Ls to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %z1Ls, align 4, !annotation !741
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %zdet_param) #9
  %7 = call ptr @memcpy(ptr %zdet_param, ptr @__const.wcd938x_wcd_mbhc_calc_impedance.zdet_param, i32 48)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %d1_a) #9
  %8 = call ptr @memcpy(ptr %d1_a, ptr @__const.wcd938x_wcd_mbhc_calc_impedance.d1_a, i32 32)
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 12319) #9
  %call2 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 12320) #9
  %call4 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 12321) #9
  %call6 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 12374) #9
  %call8 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 12579) #9
  %call10 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 12309) #9
  %and = and i32 %call10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %regmap = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 6
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 12309, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %hphl_swh = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 9, i32 13
  %11 = ptrtoint ptr %hphl_swh to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %hphl_swh, align 1, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool12.not = icmp eq i8 %12, 0
  br i1 %tobool12.not, label %if.end.if.end16_crit_edge, label %if.then13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %regmap14 = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %regmap14 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regmap14, align 4
  %call.i406 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 12308, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end16

if.end16:                                         ; preds = %if.then13, %if.end.if.end16_crit_edge
  %regmap17 = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 6
  %15 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap17, align 4
  %call.i407 = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 12308, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %17 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap17, align 4
  %call.i408 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 12514, i32 noundef 192, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 1010, i32 noundef 2) #9
  %arrayidx = getelementptr inbounds [4 x [4 x i16]], ptr %d1_a, i32 0, i32 1
  %arrayidx21 = getelementptr inbounds [4 x %struct.wcd938x_mbhc_zdet_param], ptr %zdet_param, i32 0, i32 1
  call fastcc void @wcd938x_mbhc_zdet_ramp(ptr noundef %component, ptr noundef %arrayidx21, ptr noundef nonnull %z1L, ptr noundef null, ptr noundef %arrayidx)
  %19 = ptrtoint ptr %z1L to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %z1L, align 4
  %21 = add i32 %20, -400001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -368001, i32 %21)
  %22 = icmp ult i32 %21, -368001
  br i1 %22, label %if.end26, label %if.end16.if.else60_crit_edge

if.end16.if.else60_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else60

if.end26:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %20)
  %cmp23 = icmp slt i32 %20, 32000
  br i1 %cmp23, label %if.end26.left_ch_impedance_crit_edge, label %if.else

if.end26.left_ch_impedance_crit_edge:             ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %left_ch_impedance

if.else:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %21)
  %23 = icmp ult i32 %21, 800000
  br i1 %23, label %if.then37, label %if.then44

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx38 = getelementptr inbounds [4 x %struct.wcd938x_mbhc_zdet_param], ptr %zdet_param, i32 0, i32 2
  %arrayidx39 = getelementptr inbounds [4 x [4 x i16]], ptr %d1_a, i32 0, i32 2
  br label %left_ch_impedance

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx45 = getelementptr inbounds [4 x %struct.wcd938x_mbhc_zdet_param], ptr %zdet_param, i32 0, i32 3
  %arrayidx46 = getelementptr inbounds [4 x [4 x i16]], ptr %d1_a, i32 0, i32 3
  br label %left_ch_impedance

left_ch_impedance:                                ; preds = %if.then44, %if.then37, %if.end26.left_ch_impedance_crit_edge
  %d1.0 = phi ptr [ %arrayidx39, %if.then37 ], [ %arrayidx46, %if.then44 ], [ %d1_a, %if.end26.left_ch_impedance_crit_edge ]
  %zdet_param_ptr.0 = phi ptr [ %arrayidx38, %if.then37 ], [ %arrayidx45, %if.then44 ], [ %zdet_param, %if.end26.left_ch_impedance_crit_edge ]
  call fastcc void @wcd938x_mbhc_zdet_ramp(ptr noundef %component, ptr noundef %zdet_param_ptr.0, ptr noundef nonnull %z1L, ptr noundef null, ptr noundef %d1.0)
  %24 = ptrtoint ptr %z1L to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pr = load i32, ptr %z1L, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %.pr)
  %cmp54 = icmp sgt i32 %.pr, 100000000
  br i1 %cmp54, label %left_ch_impedance.do.body.sink.split_crit_edge, label %left_ch_impedance.if.else60_crit_edge

left_ch_impedance.if.else60_crit_edge:            ; preds = %left_ch_impedance
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else60

left_ch_impedance.do.body.sink.split_crit_edge:   ; preds = %left_ch_impedance
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.sink.split

if.else60:                                        ; preds = %left_ch_impedance.if.else60_crit_edge, %if.end16.if.else60_crit_edge
  %zdet_param_ptr.1456 = phi ptr [ %zdet_param_ptr.0, %left_ch_impedance.if.else60_crit_edge ], [ %arrayidx21, %if.end16.if.else60_crit_edge ]
  %d1.1455 = phi ptr [ %d1.0, %left_ch_impedance.if.else60_crit_edge ], [ %arrayidx, %if.end16.if.else60_crit_edge ]
  %25 = phi i32 [ %.pr, %left_ch_impedance.if.else60_crit_edge ], [ %20, %if.end16.if.else60_crit_edge ]
  %div = sdiv i32 %25, 1000
  %26 = ptrtoint ptr %zl to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div, ptr %zl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %25)
  %cmp.i = icmp slt i32 %25, 400000
  %..i = select i1 %cmp.i, i32 13511, i32 13512
  %call3.i = call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %..i) #9
  %and.i = and i32 %call3.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end14.i, label %if.end14.thread.i

if.end14.thread.i:                                ; preds = %if.else60
  call void @__sanitizer_cov_trace_pc() #11
  %and8.i = and i32 %call3.i, 127
  %mul9.neg.i = mul nsw i32 %and8.i, -25
  br label %if.then17.i

if.end14.i:                                       ; preds = %if.else60
  %sext.i = shl i32 %call3.i, 16
  %conv5.i = ashr exact i32 %sext.i, 16
  %mul12.i = mul nsw i32 %conv5.i, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10000, i32 %mul12.i)
  %cmp15.i = icmp sgt i32 %mul12.i, -10000
  br i1 %cmp15.i, label %if.end14.i.if.then17.i_crit_edge, label %if.end14.i.do.body_crit_edge

if.end14.i.do.body_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

if.end14.i.if.then17.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

if.then17.i:                                      ; preds = %if.end14.i.if.then17.i_crit_edge, %if.end14.thread.i
  %q1_cal.0.in29.i = phi i32 [ %mul9.neg.i, %if.end14.thread.i ], [ %mul12.i, %if.end14.i.if.then17.i_crit_edge ]
  %q1_cal.0.i = add nsw i32 %q1_cal.0.in29.i, 10000
  %27 = ptrtoint ptr %zl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %zl, align 4
  %mul18.i = mul i32 %28, 10000
  %div.i = sdiv i32 %mul18.i, %q1_cal.0.i
  br label %do.body.sink.split

do.body.sink.split:                               ; preds = %if.then17.i, %left_ch_impedance.do.body.sink.split_crit_edge
  %div.i.sink = phi i32 [ %div.i, %if.then17.i ], [ 268435454, %left_ch_impedance.do.body.sink.split_crit_edge ]
  %d1.2.ph = phi ptr [ %d1.1455, %if.then17.i ], [ %arrayidx, %left_ch_impedance.do.body.sink.split_crit_edge ]
  %zdet_param_ptr.2.ph = phi ptr [ %zdet_param_ptr.1456, %if.then17.i ], [ %arrayidx21, %left_ch_impedance.do.body.sink.split_crit_edge ]
  %29 = ptrtoint ptr %zl to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div.i.sink, ptr %zl, align 4
  br label %do.body

do.body:                                          ; preds = %do.body.sink.split, %if.end14.i.do.body_crit_edge
  %d1.2 = phi ptr [ %d1.1455, %if.end14.i.do.body_crit_edge ], [ %d1.2.ph, %do.body.sink.split ]
  %zdet_param_ptr.2 = phi ptr [ %zdet_param_ptr.1456, %if.end14.i.do.body_crit_edge ], [ %zdet_param_ptr.2.ph, %do.body.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd938x_wcd_mbhc_calc_impedance, %if.then66)) #9
          to label %do.end [label %if.then66], !srcloc !742

if.then66:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %32 = ptrtoint ptr %zl to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %zl, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug298, ptr noundef %31, ptr noundef nonnull @.str.319, ptr noundef nonnull @.str.318, i32 noundef %33) #9
  br label %do.end

do.end:                                           ; preds = %if.then66, %do.body
  call fastcc void @wcd938x_mbhc_zdet_ramp(ptr noundef %component, ptr noundef %zdet_param_ptr.2, ptr noundef null, ptr noundef nonnull %z1R, ptr noundef %d1.2)
  %34 = ptrtoint ptr %z1R to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %z1R, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32000, i32 %35)
  %cmp71 = icmp slt i32 %35, 32000
  %36 = add i32 %35, -400001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -368001, i32 %36)
  %37 = icmp ult i32 %36, -368001
  br i1 %37, label %if.then73, label %do.end.if.else118_crit_edge

do.end.if.else118_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else118

if.then73:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200000, i32 %35)
  %cmp74 = icmp sgt i32 %35, 1200000
  br i1 %cmp74, label %land.lhs.true76, label %if.then73.lor.lhs.false80_crit_edge

if.then73.lor.lhs.false80_crit_edge:              ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false80

land.lhs.true76:                                  ; preds = %if.then73
  %noff = getelementptr inbounds %struct.wcd938x_mbhc_zdet_param, ptr %zdet_param_ptr.2, i32 0, i32 1
  %38 = ptrtoint ptr %noff to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %noff, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 6, i16 %39)
  %cmp78 = icmp eq i16 %39, 6
  br i1 %cmp78, label %land.lhs.true76.right_ch_impedance_crit_edge, label %land.lhs.true76.lor.lhs.false80_crit_edge

land.lhs.true76.lor.lhs.false80_crit_edge:        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false80

land.lhs.true76.right_ch_impedance_crit_edge:     ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #11
  br label %right_ch_impedance

lor.lhs.false80:                                  ; preds = %land.lhs.true76.lor.lhs.false80_crit_edge, %if.then73.lor.lhs.false80_crit_edge
  %40 = ptrtoint ptr %zl to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %zl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435454, i32 %41)
  %cmp81.not = icmp eq i32 %41, 268435454
  br i1 %cmp81.not, label %if.end84, label %lor.lhs.false80.right_ch_impedance_crit_edge

lor.lhs.false80.right_ch_impedance_crit_edge:     ; preds = %lor.lhs.false80
  call void @__sanitizer_cov_trace_pc() #11
  br label %right_ch_impedance

if.end84:                                         ; preds = %lor.lhs.false80
  br i1 %cmp71, label %if.end84.if.end110_crit_edge, label %if.else91

if.end84.if.end110_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.else91:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_const_cmp4(i32 800000, i32 %36)
  %42 = icmp ult i32 %36, 800000
  br i1 %42, label %if.then97, label %if.else101

if.then97:                                        ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx98 = getelementptr inbounds [4 x %struct.wcd938x_mbhc_zdet_param], ptr %zdet_param, i32 0, i32 2
  %arrayidx99 = getelementptr inbounds [4 x [4 x i16]], ptr %d1_a, i32 0, i32 2
  br label %if.end110

if.else101:                                       ; preds = %if.else91
  br i1 %cmp74, label %if.then104, label %if.else101.if.end110_crit_edge

if.else101.if.end110_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end110

if.then104:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx105 = getelementptr inbounds [4 x %struct.wcd938x_mbhc_zdet_param], ptr %zdet_param, i32 0, i32 3
  %arrayidx106 = getelementptr inbounds [4 x [4 x i16]], ptr %d1_a, i32 0, i32 3
  br label %if.end110

if.end110:                                        ; preds = %if.then104, %if.else101.if.end110_crit_edge, %if.then97, %if.end84.if.end110_crit_edge
  %d1.3 = phi ptr [ %arrayidx99, %if.then97 ], [ %arrayidx106, %if.then104 ], [ %d1.2, %if.else101.if.end110_crit_edge ], [ %d1_a, %if.end84.if.end110_crit_edge ]
  %zdet_param_ptr.3 = phi ptr [ %arrayidx98, %if.then97 ], [ %arrayidx105, %if.then104 ], [ %zdet_param_ptr.2, %if.else101.if.end110_crit_edge ], [ %zdet_param, %if.end84.if.end110_crit_edge ]
  call fastcc void @wcd938x_mbhc_zdet_ramp(ptr noundef %component, ptr noundef %zdet_param_ptr.3, ptr noundef null, ptr noundef nonnull %z1R, ptr noundef %d1.3)
  br label %right_ch_impedance

right_ch_impedance:                               ; preds = %if.end110, %lor.lhs.false80.right_ch_impedance_crit_edge, %land.lhs.true76.right_ch_impedance_crit_edge
  %d1.4.ph = phi ptr [ %d1.3, %if.end110 ], [ %d1.2, %lor.lhs.false80.right_ch_impedance_crit_edge ], [ %d1.2, %land.lhs.true76.right_ch_impedance_crit_edge ]
  %43 = ptrtoint ptr %z1R to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr458 = load i32, ptr %z1R, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000000, i32 %.pr458)
  %cmp115 = icmp sgt i32 %.pr458, 100000000
  br i1 %cmp115, label %right_ch_impedance.do.body121.sink.split_crit_edge, label %right_ch_impedance.if.else118_crit_edge

right_ch_impedance.if.else118_crit_edge:          ; preds = %right_ch_impedance
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else118

right_ch_impedance.do.body121.sink.split_crit_edge: ; preds = %right_ch_impedance
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121.sink.split

if.else118:                                       ; preds = %right_ch_impedance.if.else118_crit_edge, %do.end.if.else118_crit_edge
  %d1.4463 = phi ptr [ %d1.4.ph, %right_ch_impedance.if.else118_crit_edge ], [ %d1.2, %do.end.if.else118_crit_edge ]
  %44 = phi i32 [ %.pr458, %right_ch_impedance.if.else118_crit_edge ], [ %35, %do.end.if.else118_crit_edge ]
  %div119 = sdiv i32 %44, 1000
  %45 = ptrtoint ptr %zr to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %div119, ptr %zr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %44)
  %cmp.i409 = icmp slt i32 %44, 400000
  %add2.i = select i1 %cmp.i409, i32 13513, i32 13514
  %call3.i411 = call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %add2.i) #9
  %and.i412 = and i32 %call3.i411, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i412)
  %tobool.not.i413 = icmp eq i32 %and.i412, 0
  br i1 %tobool.not.i413, label %if.end14.i421, label %if.end14.thread.i416

if.end14.thread.i416:                             ; preds = %if.else118
  call void @__sanitizer_cov_trace_pc() #11
  %and8.i414 = and i32 %call3.i411, 127
  %mul9.neg.i415 = mul nsw i32 %and8.i414, -25
  br label %if.then17.i426

if.end14.i421:                                    ; preds = %if.else118
  %sext.i417 = shl i32 %call3.i411, 16
  %conv5.i418 = ashr exact i32 %sext.i417, 16
  %mul12.i419 = mul nsw i32 %conv5.i418, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10000, i32 %mul12.i419)
  %cmp15.i420 = icmp sgt i32 %mul12.i419, -10000
  br i1 %cmp15.i420, label %if.end14.i421.if.then17.i426_crit_edge, label %if.end14.i421.do.body121_crit_edge

if.end14.i421.do.body121_crit_edge:               ; preds = %if.end14.i421
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body121

if.end14.i421.if.then17.i426_crit_edge:           ; preds = %if.end14.i421
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i426

if.then17.i426:                                   ; preds = %if.end14.i421.if.then17.i426_crit_edge, %if.end14.thread.i416
  %q1_cal.0.in29.i422 = phi i32 [ %mul9.neg.i415, %if.end14.thread.i416 ], [ %mul12.i419, %if.end14.i421.if.then17.i426_crit_edge ]
  %q1_cal.0.i423 = add nsw i32 %q1_cal.0.in29.i422, 10000
  %46 = ptrtoint ptr %zr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %zr, align 4
  %mul18.i424 = mul i32 %47, 10000
  %div.i425 = sdiv i32 %mul18.i424, %q1_cal.0.i423
  br label %do.body121.sink.split

do.body121.sink.split:                            ; preds = %if.then17.i426, %right_ch_impedance.do.body121.sink.split_crit_edge
  %div.i425.sink = phi i32 [ %div.i425, %if.then17.i426 ], [ 268435454, %right_ch_impedance.do.body121.sink.split_crit_edge ]
  %d1.4462.ph = phi ptr [ %d1.4463, %if.then17.i426 ], [ %d1.4.ph, %right_ch_impedance.do.body121.sink.split_crit_edge ]
  %48 = ptrtoint ptr %zr to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %div.i425.sink, ptr %zr, align 4
  br label %do.body121

do.body121:                                       ; preds = %do.body121.sink.split, %if.end14.i421.do.body121_crit_edge
  %d1.4462 = phi ptr [ %d1.4463, %if.end14.i421.do.body121_crit_edge ], [ %d1.4462.ph, %do.body121.sink.split ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd938x_wcd_mbhc_calc_impedance, %if.then133)) #9
          to label %do.end137 [label %if.then133], !srcloc !742

if.then133:                                       ; preds = %do.body121
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i, align 4
  %51 = ptrtoint ptr %zr to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %zr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug299, ptr noundef %50, ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.318, i32 noundef %52) #9
  br label %do.end137

do.end137:                                        ; preds = %if.then133, %do.body121
  %53 = ptrtoint ptr %zl to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %zl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435454, i32 %54)
  %cmp138 = icmp eq i32 %54, 268435454
  %55 = ptrtoint ptr %zr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %zr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435454, i32 %56)
  %cmp141 = icmp eq i32 %56, 268435454
  br i1 %cmp138, label %land.lhs.true140, label %lor.lhs.false164

land.lhs.true140:                                 ; preds = %do.end137
  br i1 %cmp141, label %do.body144, label %land.lhs.true140.do.body180_crit_edge

land.lhs.true140.do.body180_crit_edge:            ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body180

do.body144:                                       ; preds = %land.lhs.true140
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd938x_wcd_mbhc_calc_impedance, %if.then156)) #9
          to label %zdet_complete [label %if.then156], !srcloc !742

if.then156:                                       ; preds = %do.body144
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug300, ptr noundef %58, ptr noundef nonnull @.str.321, ptr noundef nonnull @.str.318) #9
  br label %zdet_complete

lor.lhs.false164:                                 ; preds = %do.end137
  br i1 %cmp141, label %lor.lhs.false164.do.body180_crit_edge, label %lor.lhs.false167

lor.lhs.false164.do.body180_crit_edge:            ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body180

lor.lhs.false167:                                 ; preds = %lor.lhs.false164
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp168 = icmp ult i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp171 = icmp ugt i32 %56, 2
  %or.cond390 = select i1 %cmp168, i1 %cmp171, i1 false
  br i1 %or.cond390, label %lor.lhs.false167.do.body180_crit_edge, label %lor.lhs.false173

lor.lhs.false167.do.body180_crit_edge:            ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body180

lor.lhs.false173:                                 ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %54)
  %cmp174 = icmp ugt i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp177 = icmp ult i32 %56, 2
  %or.cond469 = select i1 %cmp174, i1 %cmp177, i1 false
  br i1 %or.cond469, label %lor.lhs.false173.do.body180_crit_edge, label %if.end197

lor.lhs.false173.do.body180_crit_edge:            ; preds = %lor.lhs.false173
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body180

do.body180:                                       ; preds = %lor.lhs.false173.do.body180_crit_edge, %lor.lhs.false167.do.body180_crit_edge, %lor.lhs.false164.do.body180_crit_edge, %land.lhs.true140.do.body180_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd938x_wcd_mbhc_calc_impedance, %if.then192)) #9
          to label %do.end196 [label %if.then192], !srcloc !742

if.then192:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug301, ptr noundef %60, ptr noundef nonnull @.str.322, ptr noundef nonnull @.str.318) #9
  br label %do.end196

do.end196:                                        ; preds = %if.then192, %do.body180
  %wcd_mbhc = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 8
  %61 = ptrtoint ptr %wcd_mbhc to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %wcd_mbhc, align 4
  call void @wcd_mbhc_set_hph_type(ptr noundef %62, i32 noundef 1) #9
  br label %zdet_complete

if.end197:                                        ; preds = %lor.lhs.false173
  %call198 = call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12504, i32 noundef 2, i32 noundef 1) #9
  %call199 = call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12498, i32 noundef 64, i32 noundef 1) #9
  %63 = ptrtoint ptr %zl to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %zl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %64)
  %cmp200 = icmp ult i32 %64, 32
  br i1 %cmp200, label %if.then202, label %if.else204

if.then202:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @wcd938x_mbhc_zdet_ramp(ptr noundef %component, ptr noundef nonnull %zdet_param, ptr noundef nonnull %z1Ls, ptr noundef null, ptr noundef %d1.4462)
  br label %if.end206

if.else204:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @wcd938x_mbhc_zdet_ramp(ptr noundef %component, ptr noundef %arrayidx21, ptr noundef nonnull %z1Ls, ptr noundef null, ptr noundef %d1.4462)
  br label %if.end206

if.end206:                                        ; preds = %if.else204, %if.then202
  %call207 = call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12498, i32 noundef 64, i32 noundef 0) #9
  %call208 = call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12504, i32 noundef 2, i32 noundef 0) #9
  %65 = ptrtoint ptr %z1Ls to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %z1Ls, align 4
  %div209 = sdiv i32 %66, 1000
  store i32 %div209, ptr %z1Ls, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000, i32 %66)
  %cmp.i428 = icmp slt i32 %66, 400000
  %..i429 = select i1 %cmp.i428, i32 13511, i32 13512
  %call3.i430 = call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef %..i429) #9
  %and.i431 = and i32 %call3.i430, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i431)
  %tobool.not.i432 = icmp eq i32 %and.i431, 0
  br i1 %tobool.not.i432, label %if.end14.i440, label %if.end14.thread.i435

if.end14.thread.i435:                             ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  %and8.i433 = and i32 %call3.i430, 127
  %mul9.neg.i434 = mul nsw i32 %and8.i433, -25
  br label %if.then17.i445

if.end14.i440:                                    ; preds = %if.end206
  %sext.i436 = shl i32 %call3.i430, 16
  %conv5.i437 = ashr exact i32 %sext.i436, 16
  %mul12.i438 = mul nsw i32 %conv5.i437, 25
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10000, i32 %mul12.i438)
  %cmp15.i439 = icmp sgt i32 %mul12.i438, -10000
  br i1 %cmp15.i439, label %if.end14.i440.if.then17.i445_crit_edge, label %if.end14.i440.wcd938x_wcd_mbhc_qfuse_cal.exit446_crit_edge

if.end14.i440.wcd938x_wcd_mbhc_qfuse_cal.exit446_crit_edge: ; preds = %if.end14.i440
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcd938x_wcd_mbhc_qfuse_cal.exit446

if.end14.i440.if.then17.i445_crit_edge:           ; preds = %if.end14.i440
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i445

if.then17.i445:                                   ; preds = %if.end14.i440.if.then17.i445_crit_edge, %if.end14.thread.i435
  %q1_cal.0.in29.i441 = phi i32 [ %mul9.neg.i434, %if.end14.thread.i435 ], [ %mul12.i438, %if.end14.i440.if.then17.i445_crit_edge ]
  %q1_cal.0.i442 = add nsw i32 %q1_cal.0.in29.i441, 10000
  %67 = ptrtoint ptr %z1Ls to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %z1Ls, align 4
  %mul18.i443 = mul i32 %68, 10000
  %div.i444 = sdiv i32 %mul18.i443, %q1_cal.0.i442
  store i32 %div.i444, ptr %z1Ls, align 4
  br label %wcd938x_wcd_mbhc_qfuse_cal.exit446

wcd938x_wcd_mbhc_qfuse_cal.exit446:               ; preds = %if.then17.i445, %if.end14.i440.wcd938x_wcd_mbhc_qfuse_cal.exit446_crit_edge
  %69 = ptrtoint ptr %zl to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %zl, align 4
  %mul = mul i32 %70, 9
  %add = add i32 %70, 9
  %div210 = udiv i32 %mul, %add
  %71 = ptrtoint ptr %z1Ls to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %z1Ls, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %72, i32 %div210)
  %cmp211 = icmp sgt i32 %72, %div210
  %sub = sub i32 %72, %div210
  %sub213 = sub i32 %div210, %72
  %cond = select i1 %cmp211, i32 %sub, i32 %sub213
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %72)
  %cmp214 = icmp ugt i32 %70, %72
  %sub217 = sub i32 %70, %72
  %sub219 = sub i32 %72, %70
  %cond221 = select i1 %cmp214, i32 %sub217, i32 %sub219
  %add222 = add i32 %72, %70
  %mul223 = mul i32 %cond, %add222
  %add224 = add i32 %72, %div210
  %mul225 = mul i32 %cond221, %add224
  call void @__sanitizer_cov_trace_cmp4(i32 %mul223, i32 %mul225)
  %cmp226 = icmp ugt i32 %mul223, %mul225
  br i1 %cmp226, label %do.body229, label %do.body248

do.body229:                                       ; preds = %wcd938x_wcd_mbhc_qfuse_cal.exit446
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd938x_wcd_mbhc_calc_impedance, %if.then241)) #9
          to label %if.end266 [label %if.then241], !srcloc !742

if.then241:                                       ; preds = %do.body229
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug302, ptr noundef %74, ptr noundef nonnull @.str.323, ptr noundef nonnull @.str.318) #9
  br label %if.end266

do.body248:                                       ; preds = %wcd938x_wcd_mbhc_qfuse_cal.exit446
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd938x_wcd_mbhc_calc_impedance, %if.then260)) #9
          to label %if.end266 [label %if.then260], !srcloc !742

if.then260:                                       ; preds = %do.body248
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug303, ptr noundef %76, ptr noundef nonnull @.str.324, ptr noundef nonnull @.str.318) #9
  br label %if.end266

if.end266:                                        ; preds = %if.then260, %do.body248, %if.then241, %do.body229
  %.sink470 = phi i32 [ 2, %do.body229 ], [ 2, %if.then241 ], [ 1, %do.body248 ], [ 1, %if.then260 ]
  %wcd_mbhc265 = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 8
  %77 = ptrtoint ptr %wcd_mbhc265 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %wcd_mbhc265, align 4
  call void @wcd_mbhc_set_hph_type(ptr noundef %78, i32 noundef %.sink470) #9
  %79 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %regmap17, align 4
  %call.i447 = call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 12514, i32 noundef 192, i32 noundef 192, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %zdet_complete

zdet_complete:                                    ; preds = %if.end266, %do.end196, %if.then156, %do.body144
  %sext = shl i32 %call1, 16
  %conv269 = ashr exact i32 %sext, 16
  %call270 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 12319, i32 noundef %conv269) #9
  %sext381 = shl i32 %call2, 16
  %conv271 = ashr exact i32 %sext381, 16
  %call272 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 12320, i32 noundef %conv271) #9
  %sext382 = shl i32 %call4, 16
  %conv273 = ashr exact i32 %sext382, 16
  %call274 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 12321, i32 noundef %conv273) #9
  %81 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %regmap17, align 4
  %call.i448 = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 12308, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %83 = ptrtoint ptr %hphl_swh to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %hphl_swh, align 1, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool279.not = icmp eq i8 %84, 0
  br i1 %tobool279.not, label %zdet_complete.if.end283_crit_edge, label %if.then280

zdet_complete.if.end283_crit_edge:                ; preds = %zdet_complete
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end283

if.then280:                                       ; preds = %zdet_complete
  call void @__sanitizer_cov_trace_pc() #11
  %85 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %regmap17, align 4
  %call.i449 = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 12308, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end283

if.end283:                                        ; preds = %if.then280, %zdet_complete.if.end283_crit_edge
  %sext383 = shl i32 %call8, 16
  %conv284 = ashr exact i32 %sext383, 16
  %call285 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 12579, i32 noundef %conv284) #9
  %sext384 = shl i32 %call6, 16
  %conv286 = ashr exact i32 %sext384, 16
  %call287 = call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 12374, i32 noundef %conv286) #9
  br i1 %tobool.not, label %if.end283.if.end292_crit_edge, label %if.then289

if.end283.if.end292_crit_edge:                    ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end292

if.then289:                                       ; preds = %if.end283
  call void @__sanitizer_cov_trace_pc() #11
  %87 = ptrtoint ptr %regmap17 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %regmap17, align 4
  %call.i450 = call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 12309, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %if.end292

if.end292:                                        ; preds = %if.then289, %if.end283.if.end292_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %d1_a) #9
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %zdet_param) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %z1Ls) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %z1R) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %z1L) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_mbhc_clk_setup(ptr noundef %component, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i1 %enable to i32
  %call = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12576, i32 noundef 128, i32 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @wcd938x_mbhc_micb_en_status(ptr noundef %component, i32 noundef %micb_num) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %micb_num)
  %cmp = icmp eq i32 %micb_num, 2
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then:                                          ; preds = %entry
  %call = tail call i32 @snd_soc_component_read_field(ptr noundef %component, i32 noundef 12323, i32 noundef 192) #9
  %conv1 = and i32 %call, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %conv1)
  %cmp2 = icmp eq i32 %conv1, 1
  br i1 %cmp2, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.end5 ], [ true, %if.then.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_mbhc_mbhc_bias_control(ptr noundef %component, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i1 %enable to i32
  %call = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12309, i32 noundef 1, i32 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_mbhc_program_btn_thr(ptr noundef %component, ptr nocapture noundef readnone %btn_low, ptr nocapture noundef readonly %btn_high, i32 noundef %num_btn, i1 noundef zeroext %is_micbias) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %num_btn)
  %cmp = icmp sgt i32 %num_btn, 8
  br i1 %cmp, label %do.end, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_btn)
  %cmp126 = icmp sgt i32 %num_btn, 0
  br i1 %cmp126, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev8 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  br label %for.body

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.333, ptr noundef nonnull @.str.334, i32 noundef %num_btn) #12
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.027 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %btn_high, i32 %i.027
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %mul = shl i32 %3, 1
  %div = sdiv i32 %mul, 25
  %and = and i32 %div, 63
  %add = add nuw i32 %i.027, 12314
  %call = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef %add, i32 noundef 252, i32 noundef %and) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd938x_mbhc_program_btn_thr.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd938x_mbhc_program_btn_thr, %if.then7)) #9
          to label %for.inc [label %if.then7], !srcloc !742

if.then7:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %dev8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev8, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd938x_mbhc_program_btn_thr.__UNIQUE_ID_ddebug295, ptr noundef %5, ptr noundef nonnull @.str.335, ptr noundef nonnull @.str.334, i32 noundef %i.027, i32 noundef %7, i32 noundef %and) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %for.body
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, %num_btn
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_mbhc_request_micbias(ptr noundef %component, i32 noundef %micb_num, i32 noundef %req) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @wcd938x_micbias_control(ptr noundef %component, i32 noundef %micb_num, i32 noundef %req, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_mbhc_micb_ramp_control(ptr noundef %component, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12324, i32 noundef 28, i32 noundef 12) #9
  %call1 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12324, i32 noundef 128, i32 noundef 1) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12324, i32 noundef 128, i32 noundef 0) #9
  %call3 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12324, i32 noundef 28, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_mbhc_micb_ctrl_threshold_mic(ptr noundef %component, i32 noundef %micb_num, i1 noundef zeroext %req_en) #2 align 64 {
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %micb_num)
  %cmp.not = icmp eq i32 %micb_num, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %micb2_mv = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %micb2_mv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %micb2_mv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2699, i32 %5)
  %cmp1 = icmp ugt i32 %5, 2699
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %spec.select = select i1 %req_en, i32 2700, i32 %5
  %micb_lock.i = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %micb_lock.i, i32 noundef 0) #9
  %call4.i = tail call i32 @snd_soc_component_read_field(ptr noundef %component, i32 noundef 12323, i32 noundef 192) #9
  %call5.i = tail call i32 @snd_soc_component_read_field(ptr noundef %component, i32 noundef 12323, i32 noundef 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %spec.select)
  %6 = icmp ult i32 %spec.select, 1000
  %sub.i.i = add nsw i32 %spec.select, -1000
  %div.i.i = udiv i32 %sub.i.i, 50
  %retval.0.i.i = select i1 %6, i32 -22, i32 %div.i.i
  br i1 %6, label %if.end3.wcd938x_mbhc_micb_adjust_voltage.exit_crit_edge, label %if.end.i

if.end3.wcd938x_mbhc_micb_adjust_voltage.exit_crit_edge: ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcd938x_mbhc_micb_adjust_voltage.exit

if.end.i:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_cmp4(i32 %call5.i, i32 %retval.0.i.i)
  %cmp7.i = icmp eq i32 %call5.i, %retval.0.i.i
  br i1 %cmp7.i, label %if.end.i.wcd938x_mbhc_micb_adjust_voltage.exit_crit_edge, label %if.end9.i

if.end.i.wcd938x_mbhc_micb_adjust_voltage.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %wcd938x_mbhc_micb_adjust_voltage.exit

if.end9.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i)
  %cmp10.i = icmp eq i32 %call4.i, 1
  br i1 %cmp10.i, label %if.then11.i, label %exit.critedge.i

if.then11.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call12.i = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12323, i32 noundef 192, i32 noundef 2) #9
  %call14.c.i = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12323, i32 noundef 63, i32 noundef %retval.0.i.i) #9
  %call17.i = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12323, i32 noundef 192, i32 noundef 1) #9
  tail call void @usleep_range_state(i32 noundef 2000, i32 noundef 2100, i32 noundef 2) #9
  br label %wcd938x_mbhc_micb_adjust_voltage.exit

exit.critedge.i:                                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call14.c1.i = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12323, i32 noundef 63, i32 noundef %retval.0.i.i) #9
  br label %wcd938x_mbhc_micb_adjust_voltage.exit

wcd938x_mbhc_micb_adjust_voltage.exit:            ; preds = %exit.critedge.i, %if.then11.i, %if.end.i.wcd938x_mbhc_micb_adjust_voltage.exit_crit_edge, %if.end3.wcd938x_mbhc_micb_adjust_voltage.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %if.then11.i ], [ -22, %if.end3.wcd938x_mbhc_micb_adjust_voltage.exit_crit_edge ], [ 0, %if.end.i.wcd938x_mbhc_micb_adjust_voltage.exit_crit_edge ], [ 0, %exit.critedge.i ]
  tail call void @mutex_unlock(ptr noundef %micb_lock.i) #9
  br label %cleanup

cleanup:                                          ; preds = %wcd938x_mbhc_micb_adjust_voltage.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %wcd938x_mbhc_micb_adjust_voltage.exit ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_mbhc_gnd_det_ctrl(ptr noundef %component, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12308, i32 noundef 2, i32 noundef 1) #9
  %call1 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12308, i32 noundef 64, i32 noundef 1) #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12308, i32 noundef 64, i32 noundef 0) #9
  %call3 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12308, i32 noundef 2, i32 noundef 0) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_mbhc_hph_pull_down_ctrl(ptr noundef %component, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i1 %enable to i32
  %call = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12498, i32 noundef 64, i32 noundef %conv) #9
  %call3 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12498, i32 noundef 16, i32 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_mbhc_moisture_config(ptr noundef %component) #2 align 64 {
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
  %moist_rref = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 9, i32 20
  %4 = ptrtoint ptr %moist_rref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %moist_rref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %hphl_swh = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 9, i32 13
  %6 = ptrtoint ptr %hphl_swh to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hphl_swh, align 1, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd938x_mbhc_moisture_config.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd938x_mbhc_moisture_config, %if.then8)) #9
          to label %cleanup [label %if.then8], !srcloc !742

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd938x_mbhc_moisture_config.__UNIQUE_ID_ddebug304, ptr noundef %9, ptr noundef nonnull @.str.337, ptr noundef nonnull @.str.336) #9
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %do.body, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %.sink = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %do.body ], [ 0, %if.then8 ], [ %5, %if.end.cleanup_crit_edge ]
  %call14 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12577, i32 noundef 12, i32 noundef %.sink) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_mbhc_hph_l_pull_up_control(ptr noundef %component, i32 noundef %pull_up_cur) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %pull_up_cur)
  %0 = icmp ugt i32 %pull_up_cur, 24
  %pull_up_cur.addr.0 = select i1 %0, i32 8, i32 %pull_up_cur
  %call = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12721, i32 noundef 31, i32 noundef %pull_up_cur.addr.0) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @wcd938x_mbhc_get_moisture_status(ptr noundef %component) #2 align 64 {
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
  %moist_rref = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 9, i32 20
  %4 = ptrtoint ptr %moist_rref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %moist_rref, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call1 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12577, i32 noundef 12, i32 noundef 0) #9
  br label %done

if.end:                                           ; preds = %entry
  %hphl_swh = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 9, i32 13
  %6 = ptrtoint ptr %hphl_swh to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %hphl_swh, align 1, !range !740
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %do.body, label %if.end11

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd938x_mbhc_get_moisture_status.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd938x_mbhc_get_moisture_status, %if.then8)) #9
          to label %do.end [label %if.then8], !srcloc !742

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd938x_mbhc_get_moisture_status.__UNIQUE_ID_ddebug305, ptr noundef %9, ptr noundef nonnull @.str.337, ptr noundef nonnull @.str.338) #9
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %call10 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12577, i32 noundef 12, i32 noundef 0) #9
  br label %done

if.end11:                                         ; preds = %if.end
  %call12 = tail call i32 @snd_soc_component_read_field(ptr noundef %component, i32 noundef 12577, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.done_crit_edge

if.end11.done_crit_edge:                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %done

if.end15:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %driver_data.i.i.i, align 4
  %moist_rref.i = getelementptr inbounds %struct.wcd938x_priv, ptr %13, i32 0, i32 9, i32 20
  %14 = ptrtoint ptr %moist_rref.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %moist_rref.i, align 4
  %call2.i = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12577, i32 noundef 12, i32 noundef %15) #9
  %call16 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 12581) #9
  %16 = and i32 %call16, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18 = icmp eq i32 %16, 0
  br label %done

done:                                             ; preds = %if.end15, %if.end11.done_crit_edge, %do.end, %if.then
  %ret.0.off0 = phi i1 [ false, %if.then ], [ false, %if.end11.done_crit_edge ], [ %tobool18, %if.end15 ], [ false, %do.end ]
  ret i1 %ret.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_mbhc_moisture_polling_ctrl(ptr noundef %component, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i1 %enable to i32
  %call = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12720, i32 noundef 4, i32 noundef %conv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wcd938x_mbhc_moisture_detect_en(ptr noundef %component, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %enable, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %moist_rref = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 9, i32 20
  %4 = ptrtoint ptr %moist_rref to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %moist_rref, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink = phi i32 [ %5, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %call2 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12577, i32 noundef 12, i32 noundef %.sink) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wcd938x_mbhc_zdet_ramp(ptr noundef %component, ptr nocapture noundef readonly %zdet_param, ptr noundef writeonly %zl, ptr noundef writeonly %zr, ptr nocapture noundef readonly %d1_a) unnamed_addr #2 align 64 {
entry:
  %zdet = alloca i32, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zdet) #9
  %4 = ptrtoint ptr %zdet to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %zdet, align 4
  %5 = ptrtoint ptr %zdet_param to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %zdet_param, align 2
  %conv = zext i16 %6 to i32
  %call1 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12579, i32 noundef 112, i32 noundef %conv) #9
  %btn5 = getelementptr inbounds %struct.wcd938x_mbhc_zdet_param, ptr %zdet_param, i32 0, i32 3
  %7 = ptrtoint ptr %btn5 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %btn5, align 2
  %conv2 = zext i16 %8 to i32
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12319, i32 noundef 252, i32 noundef %conv2) #9
  %btn6 = getelementptr inbounds %struct.wcd938x_mbhc_zdet_param, ptr %zdet_param, i32 0, i32 4
  %9 = ptrtoint ptr %btn6 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %btn6, align 2
  %conv4 = zext i16 %10 to i32
  %call5 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12320, i32 noundef 252, i32 noundef %conv4) #9
  %btn7 = getelementptr inbounds %struct.wcd938x_mbhc_zdet_param, ptr %zdet_param, i32 0, i32 5
  %11 = ptrtoint ptr %btn7 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %btn7, align 2
  %conv6 = zext i16 %12 to i32
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12321, i32 noundef 252, i32 noundef %conv6) #9
  %noff = getelementptr inbounds %struct.wcd938x_mbhc_zdet_param, ptr %zdet_param, i32 0, i32 1
  %13 = ptrtoint ptr %noff to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %noff, align 2
  %conv8 = zext i16 %14 to i32
  %call9 = tail call i32 @snd_soc_component_write_field(ptr noundef %component, i32 noundef 12579, i32 noundef 15, i32 noundef %conv8) #9
  %nshift = getelementptr inbounds %struct.wcd938x_mbhc_zdet_param, ptr %zdet_param, i32 0, i32 2
  %15 = ptrtoint ptr %nshift to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %nshift, align 2
  %conv10 = zext i16 %16 to i32
  %call11 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 12580, i32 noundef 15, i32 noundef %conv10) #9
  %tobool.not = icmp eq ptr %zl, null
  br i1 %tobool.not, label %entry.z_right_crit_edge, label %if.end

entry.z_right_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %z_right

if.end:                                           ; preds = %entry
  %regmap = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 6
  %17 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 12310, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd938x_mbhc_zdet_ramp.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd938x_mbhc_zdet_ramp, %if.then17)) #9
          to label %do.end [label %if.then17], !srcloc !742

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %19 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i, align 4
  %21 = ptrtoint ptr %noff to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %noff, align 2
  %conv19 = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd938x_mbhc_zdet_ramp.__UNIQUE_ID_ddebug296, ptr noundef %20, ptr noundef nonnull @.str.326, ptr noundef nonnull @.str.325, i32 noundef %conv19) #9
  br label %do.end

do.end:                                           ; preds = %if.then17, %if.end
  %23 = ptrtoint ptr %noff to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %noff, align 2
  call fastcc void @wcd938x_mbhc_get_result_params(ptr noundef %3, ptr noundef %d1_a, i16 noundef zeroext %24, ptr noundef nonnull %zdet)
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i80 = tail call i32 @regmap_update_bits_base(ptr noundef %26, i32 noundef 12310, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %27 = ptrtoint ptr %zdet to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %zdet, align 4
  %29 = ptrtoint ptr %zl to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %zl, align 4
  br label %z_right

z_right:                                          ; preds = %do.end, %entry.z_right_crit_edge
  %tobool24.not = icmp eq ptr %zr, null
  br i1 %tobool24.not, label %z_right.cleanup_crit_edge, label %if.end26

z_right.cleanup_crit_edge:                        ; preds = %z_right
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end26:                                         ; preds = %z_right
  %regmap27 = getelementptr inbounds %struct.wcd938x_priv, ptr %3, i32 0, i32 6
  %30 = ptrtoint ptr %regmap27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap27, align 4
  %call.i81 = tail call i32 @regmap_update_bits_base(ptr noundef %31, i32 noundef 12310, i32 noundef 64, i32 noundef 64, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd938x_mbhc_zdet_ramp.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd938x_mbhc_zdet_ramp, %if.then41)) #9
          to label %do.end47 [label %if.then41], !srcloc !742

if.then41:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  %34 = ptrtoint ptr %noff to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %noff, align 2
  %conv44 = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd938x_mbhc_zdet_ramp.__UNIQUE_ID_ddebug297, ptr noundef %33, ptr noundef nonnull @.str.327, ptr noundef nonnull @.str.325, i32 noundef %conv44) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then41, %if.end26
  %36 = ptrtoint ptr %noff to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %noff, align 2
  call fastcc void @wcd938x_mbhc_get_result_params(ptr noundef %3, ptr noundef %d1_a, i16 noundef zeroext %37, ptr noundef nonnull %zdet)
  %38 = ptrtoint ptr %regmap27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap27, align 4
  %call.i82 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 12310, i32 noundef 64, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %40 = ptrtoint ptr %zdet to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %zdet, align 4
  %42 = ptrtoint ptr %zr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %zr, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end47, %z_right.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zdet) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wcd_mbhc_set_hph_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wcd938x_mbhc_get_result_params(ptr nocapture noundef readonly %wcd938x, ptr nocapture noundef readonly %d1_a, i16 noundef zeroext %noff, ptr nocapture noundef %zdet) unnamed_addr #8 align 64 {
entry:
  %val = alloca i32, align 4
  %val1 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !741
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val1) #9
  %1 = ptrtoint ptr %val1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val1, align 4, !annotation !741
  %regmap = getelementptr inbounds %struct.wcd938x_priv, ptr %wcd938x, i32 0, i32 6
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12310, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.080 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_read(ptr noundef %5, i32 noundef 12312, ptr noundef nonnull %val) #9
  %6 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %val, align 4
  %and = and i32 %7, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %inc = add nuw nsw i32 %i.080, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 900
  %or.cond81 = select i1 %tobool.not, i1 true, i1 %exitcond.not
  br i1 %or.cond81, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %8 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %val, align 4
  %shl = shl i32 %9, 8
  store i32 %shl, ptr %val, align 4
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %call4 = call i32 @regmap_read(ptr noundef %11, i32 noundef 12311, ptr noundef nonnull %val1) #9
  %12 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %val1, align 4
  %14 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %val, align 4
  %or = or i32 %15, %13
  store i32 %or, ptr %val, align 4
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  %call.i78 = call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 12310, i32 noundef 32, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  %18 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %val, align 4
  %and7 = and i32 %19, 16383
  %20 = trunc i32 %19 to i16
  %21 = lshr i32 %19, 14
  %22 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %cmp10 = icmp slt i16 %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool12.not = icmp eq i32 %and7, 0
  %or.cond = or i1 %cmp10, %tobool12.not
  br i1 %or.cond, label %for.end.if.end14_crit_edge, label %if.then13

for.end.if.end14_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then13:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @usleep_range_state(i32 noundef 5000, i32 noundef 5050, i32 noundef 2) #9
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %for.end.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %20)
  %tobool15.not = icmp ult i16 %20, 16384
  %or.cond77 = or i1 %tobool15.not, %tobool12.not
  br i1 %or.cond77, label %do.end, label %if.end20

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328, ptr noundef nonnull @.str.329, i32 noundef %22, i32 noundef %and7) #12
  br label %while.cond.preheader

if.end20:                                         ; preds = %if.end14
  %arrayidx = getelementptr i16, ptr %d1_a, i32 %22
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx, align 2
  %conv21 = sext i16 %24 to i32
  %mul = mul nsw i32 %and7, %conv21
  %conv22 = zext i16 %noff to i32
  %sub = sub nsw i32 14, %conv22
  %shl23.neg = shl nsw i32 -1, %sub
  %sub24 = add i32 %mul, %shl23.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub24)
  %cmp25 = icmp sgt i32 %sub24, 0
  br i1 %cmp25, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  %div79 = udiv i32 1409024000, %sub24
  br label %do.end37.sink.split

if.else:                                          ; preds = %if.end20
  %arrayidx29 = getelementptr [8 x i32], ptr @__const.wcd938x_mbhc_get_result_params.minCode_param, i32 0, i32 %conv22
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %26)
  %cmp30 = icmp slt i32 %and7, %26
  br i1 %cmp30, label %if.else.do.end37.sink.split_crit_edge, label %if.else.do.end37_crit_edge

if.else.do.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37

if.else.do.end37.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end37.sink.split

do.end37.sink.split:                              ; preds = %if.else.do.end37.sink.split_crit_edge, %if.then27
  %div79.sink = phi i32 [ %div79, %if.then27 ], [ 268435454, %if.else.do.end37.sink.split_crit_edge ]
  %27 = ptrtoint ptr %zdet to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %div79.sink, ptr %zdet, align 4
  br label %do.end37

do.end37:                                         ; preds = %do.end37.sink.split, %if.else.do.end37_crit_edge
  %28 = ptrtoint ptr %zdet to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %zdet, align 4
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, ptr noundef nonnull @.str.329, i32 noundef %conv21, i32 noundef %22, i32 noundef %and7, i32 noundef %29) #12
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %do.end37, %do.end
  br label %while.cond

while.cond:                                       ; preds = %while.body.while.cond_crit_edge, %while.cond.preheader
  %x1.0 = phi i32 [ %and48, %while.body.while.cond_crit_edge ], [ %and7, %while.cond.preheader ]
  %i.1 = phi i32 [ %inc49, %while.body.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %x1.0)
  %tobool41.not = icmp eq i32 %x1.0, 0
  br i1 %tobool41.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body:                                       ; preds = %while.cond
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call43 = call i32 @regmap_read(ptr noundef %31, i32 noundef 12311, ptr noundef nonnull %val) #9
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call45 = call i32 @regmap_read(ptr noundef %33, i32 noundef 12312, ptr noundef nonnull %val1) #9
  %34 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %val, align 4
  %shl46 = shl i32 %35, 8
  %36 = ptrtoint ptr %val1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %val1, align 4
  %or47 = or i32 %37, %shl46
  store i32 %or47, ptr %val, align 4
  %and48 = and i32 %or47, 16383
  %inc49 = add nuw nsw i32 %i.1, 1
  %cmp50 = icmp eq i32 %inc49, 900
  br i1 %cmp50, label %while.body.while.end_crit_edge, label %while.body.while.cond_crit_edge

while.body.while.cond_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_hph_impedance_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  %zl = alloca i32, align 4
  %zr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zl) #9
  %0 = ptrtoint ptr %zl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %zl, align 4, !annotation !741
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zr) #9
  %1 = ptrtoint ptr %zr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %zr, align 4, !annotation !741
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %2 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data.i, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %8 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %private_value, align 4
  %10 = inttoptr i32 %9 to ptr
  %shift = getelementptr inbounds %struct.soc_mixer_control, ptr %10, i32 0, i32 5
  %11 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %shift, align 4
  %wcd_mbhc = getelementptr inbounds %struct.wcd938x_priv, ptr %7, i32 0, i32 8
  %13 = ptrtoint ptr %wcd_mbhc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %wcd_mbhc, align 4
  %call2 = call i32 @wcd_mbhc_get_impedance(ptr noundef %14, ptr noundef nonnull %zl, ptr noundef nonnull %zr) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wcd938x_hph_impedance_get.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wcd938x_hph_impedance_get, %if.then)) #9
          to label %do.end [label %if.then], !srcloc !742

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %17 = ptrtoint ptr %zl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %zl, align 4
  %19 = ptrtoint ptr %zr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %zr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wcd938x_hph_impedance_get.__UNIQUE_ID_ddebug306, ptr noundef %16, ptr noundef nonnull @.str.344, ptr noundef nonnull @.str.343, i32 noundef %18, i32 noundef %20) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  %21 = ptrtoint ptr %zl to i32
  call void @__asan_load4_noabort(i32 %21)
  %zl.val = load i32, ptr %zl, align 4
  %22 = ptrtoint ptr %zr to i32
  call void @__asan_load4_noabort(i32 %22)
  %zr.val = load i32, ptr %zr, align 4
  %cond = select i1 %tobool.not, i32 %zl.val, i32 %zr.val
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %23 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %cond, ptr %value, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zr) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zl) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcd_mbhc_get_impedance(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_get_hph_type(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
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
  %wcd_mbhc = getelementptr inbounds %struct.wcd938x_priv, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %wcd_mbhc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %wcd_mbhc, align 4
  %call2 = tail call i32 @wcd_mbhc_get_hph_type(ptr noundef %7) #9
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call2, ptr %value, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcd_mbhc_get_hph_type(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcd_mbhc_start(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wcd_mbhc_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_set_sdw_stream(ptr noundef %dai, ptr noundef %stream, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.wcd938x_priv, ptr %3, i32 0, i32 1, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @wcd938x_sdw_set_sdw_stream(ptr noundef %7, ptr noundef %dai, ptr noundef %stream, i32 noundef %direction) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_hw_params(ptr noundef %substream, ptr noundef %params, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.wcd938x_priv, ptr %3, i32 0, i32 1, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @wcd938x_sdw_hw_params(ptr noundef %7, ptr noundef %substream, ptr noundef %params, ptr noundef %dai) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wcd938x_codec_free(ptr noundef %substream, ptr noundef %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %id = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.wcd938x_priv, ptr %3, i32 0, i32 1, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call1 = tail call i32 @wcd938x_sdw_free(ptr noundef %7, ptr noundef %substream, ptr noundef %dai) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcd938x_sdw_set_sdw_stream(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcd938x_sdw_hw_params(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wcd938x_sdw_free(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_link_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_unbind_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_master_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 428)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 428)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !30, !32, !34, !36, !38, !40, !41, !42, !44, !45, !46, !48, !50, !51, !52, !53, !54, !56, !58, !59, !60, !62, !64, !65, !66, !68, !70, !71, !72, !74, !76, !77, !78, !79, !81, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !139, !141, !143, !144, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !227, !228, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !420, !421, !422, !424, !425, !426, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !520, !521, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !545, !546, !547, !549, !551, !552, !553, !555, !557, !558, !559, !561, !562, !563, !565, !566, !568, !569, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !653, !654, !655, !657, !658, !660, !661, !663, !664, !666, !667, !669, !670, !672, !673, !674, !676, !677, !679, !680, !681, !682, !684, !685, !686, !688, !689, !690, !691, !693, !694, !696, !697, !698, !700, !701, !703, !705, !707, !709, !711, !712, !713, !715, !717, !719, !721, !723, !725, !727, !729}
!llvm.module.flags = !{!731, !732, !733, !734, !735, !736, !737, !738}
!llvm.ident = !{!739}

!0 = !{ptr @__initcall__kmod_snd_soc_wcd938x__307_4529_wcd938x_codec_driver_init6, !1, !"__initcall__kmod_snd_soc_wcd938x__307_4529_wcd938x_codec_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wcd938x.c", i32 4529, i32 1}
!2 = !{ptr @__exitcall_wcd938x_codec_driver_exit, !1, !"__exitcall_wcd938x_codec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description308, !4, !"__UNIQUE_ID_description308", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/wcd938x.c", i32 4530, i32 1}
!5 = !{ptr @__UNIQUE_ID_file309, !6, !"__UNIQUE_ID_file309", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/wcd938x.c", i32 4531, i32 1}
!7 = !{ptr @__UNIQUE_ID_license310, !6, !"__UNIQUE_ID_license310", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/codecs/wcd938x.c", i32 4523, i32 11}
!10 = !{ptr @wcd938x_codec_driver, !11, !"wcd938x_codec_driver", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wcd938x.c", i32 4519, i32 31}
!12 = !{ptr @wcd938x_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/wcd938x.c", i32 4475, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/soc/codecs/wcd938x.c", i32 4479, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @wcd938x_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @wcd938x_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/soc/codecs/wcd938x.c", i32 4207, i32 56}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/wcd938x.c", i32 4209, i32 3}
!27 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wcd938x_populate_dt_data._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @wcd938x_populate_dt_data._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/wcd938x.c", i32 4214, i32 32}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/wcd938x.c", i32 4215, i32 32}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/wcd938x.c", i32 4216, i32 32}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/codecs/wcd938x.c", i32 4217, i32 32}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/wcd938x.c", i32 4221, i32 3}
!40 = !{ptr @wcd938x_populate_dt_data._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @wcd938x_populate_dt_data._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/wcd938x.c", i32 4227, i32 3}
!44 = !{ptr @wcd938x_populate_dt_data._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @wcd938x_populate_dt_data._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/wcd938x.c", i32 4177, i32 32}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/wcd938x.c", i32 4181, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @wcd938x_dt_parse_micbias_info._entry, !49, !"_entry", i1 false, i1 false}
!53 = !{ptr @wcd938x_dt_parse_micbias_info._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/wcd938x.c", i32 4183, i32 32}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/wcd938x.c", i32 4187, i32 3}
!58 = !{ptr @wcd938x_dt_parse_micbias_info._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @wcd938x_dt_parse_micbias_info._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/wcd938x.c", i32 4189, i32 32}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/wcd938x.c", i32 4193, i32 3}
!64 = !{ptr @wcd938x_dt_parse_micbias_info._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @wcd938x_dt_parse_micbias_info._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/wcd938x.c", i32 4195, i32 32}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/wcd938x.c", i32 4199, i32 3}
!70 = !{ptr @wcd938x_dt_parse_micbias_info._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @wcd938x_dt_parse_micbias_info._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/wcd938x.c", i32 4441, i32 41}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/wcd938x.c", i32 4443, i32 3}
!76 = !{ptr @.str.38, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @wcd938x_add_slave_components._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @wcd938x_add_slave_components._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/soc/codecs/wcd938x.c", i32 4451, i32 41}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/soc/codecs/wcd938x.c", i32 4453, i32 3}
!83 = !{ptr @wcd938x_add_slave_components._entry.40, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @wcd938x_add_slave_components._entry_ptr.42, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @wcd938x_comp_ops, !86, !"wcd938x_comp_ops", i1 false, i1 false}
!86 = !{!"../sound/soc/codecs/wcd938x.c", i32 4418, i32 42}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/wcd938x.c", i32 4330, i32 3}
!89 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @wcd938x_bind._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @wcd938x_bind._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/wcd938x.c", i32 4337, i32 3}
!94 = !{ptr @wcd938x_bind._entry.45, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @wcd938x_bind._entry_ptr.47, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.49, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/wcd938x.c", i32 4345, i32 3}
!98 = !{ptr @wcd938x_bind._entry.48, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @wcd938x_bind._entry_ptr.50, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.52, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/wcd938x.c", i32 4352, i32 3}
!102 = !{ptr @wcd938x_bind._entry.51, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @wcd938x_bind._entry_ptr.53, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/wcd938x.c", i32 4360, i32 3}
!106 = !{ptr @wcd938x_bind._entry.54, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @wcd938x_bind._entry_ptr.56, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.58, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/soc/codecs/wcd938x.c", i32 4366, i32 3}
!110 = !{ptr @wcd938x_bind._entry.57, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @wcd938x_bind._entry_ptr.59, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.61, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/soc/codecs/wcd938x.c", i32 4372, i32 3}
!114 = !{ptr @wcd938x_bind._entry.60, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @wcd938x_bind._entry_ptr.62, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @wcd938x_bind._key, !117, !"_key", i1 false, i1 false}
!117 = !{!"../sound/soc/codecs/wcd938x.c", i32 4376, i32 20}
!118 = !{ptr @.str.63, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/wcd938x.c", i32 4378, i32 3}
!121 = !{ptr @wcd938x_bind._entry.64, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @wcd938x_bind._entry_ptr.66, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.68, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/wcd938x.c", i32 4384, i32 3}
!125 = !{ptr @wcd938x_bind._entry.67, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @wcd938x_bind._entry_ptr.69, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.71, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/wcd938x.c", i32 4393, i32 3}
!129 = !{ptr @wcd938x_bind._entry.70, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @wcd938x_bind._entry_ptr.72, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.74, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/wcd938x.c", i32 4400, i32 3}
!133 = !{ptr @wcd938x_bind._entry.73, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @wcd938x_bind._entry_ptr.75, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.76, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/wcd938x.c", i32 1256, i32 10}
!137 = !{ptr @wcd938x_regmap_config, !138, !"wcd938x_regmap_config", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/wcd938x.c", i32 1255, i32 29}
!139 = !{ptr @wcd938x_defaults, !140, !"wcd938x_defaults", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/wcd938x.c", i32 274, i32 33}
!141 = !{ptr @.str.77, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/wcd938x.c", i32 4052, i32 3}
!143 = !{ptr @.str.78, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @wcd938x_irq_init._entry, !142, !"_entry", i1 false, i1 false}
!145 = !{ptr @wcd938x_irq_init._entry_ptr, !142, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @wcd_domain_ops, !147, !"wcd_domain_ops", i1 false, i1 false}
!147 = !{!"../sound/soc/codecs/wcd938x.c", i32 4043, i32 36}
!148 = !{ptr @.str.79, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/codecs/wcd938x.c", i32 4030, i32 10}
!150 = !{ptr @wcd_irq_chip, !151, !"wcd_irq_chip", i1 false, i1 false}
!151 = !{!"../sound/soc/codecs/wcd938x.c", i32 4029, i32 24}
!152 = !{ptr @.str.80, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/soc/codecs/wcd938x.c", i32 1293, i32 10}
!154 = !{ptr @wcd938x_regmap_irq_chip, !155, !"wcd938x_regmap_irq_chip", i1 false, i1 false}
!155 = !{!"../sound/soc/codecs/wcd938x.c", i32 1292, i32 31}
!156 = !{ptr @wcd938x_irqs, !157, !"wcd938x_irqs", i1 false, i1 false}
!157 = !{!"../sound/soc/codecs/wcd938x.c", i32 1269, i32 32}
!158 = !{ptr @soc_codec_dev_wcd938x, !159, !"soc_codec_dev_wcd938x", i1 false, i1 false}
!159 = !{!"../sound/soc/codecs/wcd938x.c", i32 4159, i32 46}
!160 = !{ptr @.str.82, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/soc/codecs/wcd938x.c", i32 3621, i32 2}
!162 = !{ptr @.str.83, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/soc/codecs/wcd938x.c", i32 3623, i32 2}
!164 = !{ptr @.str.85, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/soc/codecs/wcd938x.c", i32 3625, i32 2}
!166 = !{ptr @.str.87, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/soc/codecs/wcd938x.c", i32 3627, i32 2}
!168 = !{ptr @.str.89, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/wcd938x.c", i32 3629, i32 2}
!170 = !{ptr @.str.91, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/soc/codecs/wcd938x.c", i32 3631, i32 2}
!172 = !{ptr @.str.93, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/wcd938x.c", i32 3633, i32 2}
!174 = !{ptr @.str.95, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/soc/codecs/wcd938x.c", i32 3635, i32 2}
!176 = !{ptr @.str.97, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/wcd938x.c", i32 3637, i32 2}
!178 = !{ptr @.str.99, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/soc/codecs/wcd938x.c", i32 3638, i32 2}
!180 = !{ptr @.str.101, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../sound/soc/codecs/wcd938x.c", i32 3639, i32 2}
!182 = !{ptr @.str.103, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/soc/codecs/wcd938x.c", i32 3641, i32 2}
!184 = !{ptr @.str.105, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../sound/soc/codecs/wcd938x.c", i32 3643, i32 2}
!186 = !{ptr @.str.107, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/wcd938x.c", i32 3645, i32 2}
!188 = !{ptr @.str.109, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../sound/soc/codecs/wcd938x.c", i32 3647, i32 2}
!190 = !{ptr @.str.111, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../sound/soc/codecs/wcd938x.c", i32 3649, i32 2}
!192 = !{ptr @.str.113, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../sound/soc/codecs/wcd938x.c", i32 3651, i32 2}
!194 = !{ptr @.str.115, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../sound/soc/codecs/wcd938x.c", i32 3653, i32 2}
!196 = !{ptr @.str.117, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/wcd938x.c", i32 3655, i32 2}
!198 = !{ptr @.str.119, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../sound/soc/codecs/wcd938x.c", i32 3657, i32 2}
!200 = !{ptr @.str.121, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../sound/soc/codecs/wcd938x.c", i32 3659, i32 2}
!202 = !{ptr @.str.123, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../sound/soc/codecs/wcd938x.c", i32 3661, i32 2}
!204 = !{ptr @.str.125, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/wcd938x.c", i32 3663, i32 2}
!206 = !{ptr @.str.127, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/wcd938x.c", i32 3665, i32 2}
!208 = !{ptr @.str.129, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/wcd938x.c", i32 3667, i32 2}
!210 = !{ptr @.str.131, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../sound/soc/codecs/wcd938x.c", i32 3669, i32 2}
!212 = !{ptr @.str.133, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/wcd938x.c", i32 3672, i32 2}
!214 = !{ptr @.str.135, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../sound/soc/codecs/wcd938x.c", i32 3673, i32 2}
!216 = !{ptr @.str.137, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../sound/soc/codecs/wcd938x.c", i32 3674, i32 2}
!218 = !{ptr @.str.139, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/wcd938x.c", i32 3675, i32 2}
!220 = !{ptr @wcd938x_snd_controls, !221, !"wcd938x_snd_controls", i1 false, i1 false}
!221 = !{!"../sound/soc/codecs/wcd938x.c", i32 3620, i32 38}
!222 = !{ptr @line_gain, !223, !"line_gain", i1 false, i1 false}
!223 = !{!"../sound/soc/codecs/wcd938x.c", i32 211, i32 14}
!224 = !{ptr @.str.141, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/wcd938x.c", i32 2554, i32 3}
!226 = !{ptr @.str.142, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @wcd938x_ear_pa_put_gain._entry, !225, !"_entry", i1 false, i1 false}
!228 = !{ptr @wcd938x_ear_pa_put_gain._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @ear_pa_gain, !230, !"ear_pa_gain", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/wcd938x.c", i32 210, i32 14}
!231 = !{ptr @analog_gain, !232, !"analog_gain", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/wcd938x.c", i32 212, i32 14}
!233 = !{ptr @.str.143, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/wcd938x.c", i32 3681, i32 2}
!235 = !{ptr @.str.144, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/wcd938x.c", i32 3682, i32 2}
!237 = !{ptr @.str.145, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/wcd938x.c", i32 3683, i32 2}
!239 = !{ptr @.str.146, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/wcd938x.c", i32 3684, i32 2}
!241 = !{ptr @.str.147, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/wcd938x.c", i32 3685, i32 2}
!243 = !{ptr @.str.148, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/wcd938x.c", i32 3686, i32 2}
!245 = !{ptr @.str.149, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/wcd938x.c", i32 3687, i32 2}
!247 = !{ptr @.str.150, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/wcd938x.c", i32 3688, i32 2}
!249 = !{ptr @.str.151, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/wcd938x.c", i32 3689, i32 2}
!251 = !{ptr @.str.152, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/wcd938x.c", i32 3690, i32 2}
!253 = !{ptr @.str.153, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/wcd938x.c", i32 3691, i32 2}
!255 = !{ptr @.str.154, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../sound/soc/codecs/wcd938x.c", i32 3692, i32 2}
!257 = !{ptr @.str.155, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/wcd938x.c", i32 3695, i32 2}
!259 = !{ptr @.str.156, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../sound/soc/codecs/wcd938x.c", i32 3698, i32 2}
!261 = !{ptr @.str.157, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/wcd938x.c", i32 3701, i32 2}
!263 = !{ptr @.str.158, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../sound/soc/codecs/wcd938x.c", i32 3704, i32 2}
!265 = !{ptr @.str.159, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/wcd938x.c", i32 3707, i32 2}
!267 = !{ptr @.str.160, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../sound/soc/codecs/wcd938x.c", i32 3710, i32 2}
!269 = !{ptr @.str.161, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/wcd938x.c", i32 3713, i32 2}
!271 = !{ptr @.str.162, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/wcd938x.c", i32 3716, i32 2}
!273 = !{ptr @.str.163, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/wcd938x.c", i32 3719, i32 2}
!275 = !{ptr @.str.164, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../sound/soc/codecs/wcd938x.c", i32 3722, i32 2}
!277 = !{ptr @.str.165, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../sound/soc/codecs/wcd938x.c", i32 3725, i32 2}
!279 = !{ptr @.str.166, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../sound/soc/codecs/wcd938x.c", i32 3728, i32 2}
!281 = !{ptr @.str.167, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../sound/soc/codecs/wcd938x.c", i32 3732, i32 2}
!283 = !{ptr @.str.168, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../sound/soc/codecs/wcd938x.c", i32 3735, i32 2}
!285 = !{ptr @.str.169, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../sound/soc/codecs/wcd938x.c", i32 3738, i32 2}
!287 = !{ptr @.str.170, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../sound/soc/codecs/wcd938x.c", i32 3741, i32 2}
!289 = !{ptr @.str.171, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../sound/soc/codecs/wcd938x.c", i32 3745, i32 2}
!291 = !{ptr @.str.172, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../sound/soc/codecs/wcd938x.c", i32 3746, i32 2}
!293 = !{ptr @.str.173, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../sound/soc/codecs/wcd938x.c", i32 3747, i32 2}
!295 = !{ptr @.str.174, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../sound/soc/codecs/wcd938x.c", i32 3748, i32 2}
!297 = !{ptr @.str.175, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../sound/soc/codecs/wcd938x.c", i32 3749, i32 2}
!299 = !{ptr @.str.176, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../sound/soc/codecs/wcd938x.c", i32 3752, i32 2}
!301 = !{ptr @.str.177, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../sound/soc/codecs/wcd938x.c", i32 3755, i32 2}
!303 = !{ptr @.str.178, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../sound/soc/codecs/wcd938x.c", i32 3758, i32 2}
!305 = !{ptr @.str.179, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../sound/soc/codecs/wcd938x.c", i32 3761, i32 2}
!307 = !{ptr @.str.180, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../sound/soc/codecs/wcd938x.c", i32 3764, i32 2}
!309 = !{ptr @.str.181, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../sound/soc/codecs/wcd938x.c", i32 3767, i32 2}
!311 = !{ptr @.str.182, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../sound/soc/codecs/wcd938x.c", i32 3770, i32 2}
!313 = !{ptr @.str.183, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../sound/soc/codecs/wcd938x.c", i32 3773, i32 2}
!315 = !{ptr @.str.184, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../sound/soc/codecs/wcd938x.c", i32 3776, i32 2}
!317 = !{ptr @.str.185, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../sound/soc/codecs/wcd938x.c", i32 3779, i32 2}
!319 = !{ptr @.str.186, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../sound/soc/codecs/wcd938x.c", i32 3782, i32 2}
!321 = !{ptr @.str.187, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../sound/soc/codecs/wcd938x.c", i32 3785, i32 2}
!323 = !{ptr @.str.188, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../sound/soc/codecs/wcd938x.c", i32 3789, i32 2}
!325 = !{ptr @.str.189, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../sound/soc/codecs/wcd938x.c", i32 3793, i32 2}
!327 = !{ptr @.str.190, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../sound/soc/codecs/wcd938x.c", i32 3797, i32 2}
!329 = !{ptr @.str.191, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../sound/soc/codecs/wcd938x.c", i32 3801, i32 2}
!331 = !{ptr @.str.192, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../sound/soc/codecs/wcd938x.c", i32 3807, i32 2}
!333 = !{ptr @.str.193, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../sound/soc/codecs/wcd938x.c", i32 3811, i32 2}
!335 = !{ptr @.str.194, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../sound/soc/codecs/wcd938x.c", i32 3815, i32 2}
!337 = !{ptr @.str.195, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../sound/soc/codecs/wcd938x.c", i32 3819, i32 2}
!339 = !{ptr @.str.196, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../sound/soc/codecs/wcd938x.c", i32 3825, i32 2}
!341 = !{ptr @.str.197, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../sound/soc/codecs/wcd938x.c", i32 3826, i32 2}
!343 = !{ptr @.str.198, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../sound/soc/codecs/wcd938x.c", i32 3827, i32 2}
!345 = !{ptr @.str.199, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../sound/soc/codecs/wcd938x.c", i32 3828, i32 2}
!347 = !{ptr @.str.200, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../sound/soc/codecs/wcd938x.c", i32 3829, i32 2}
!349 = !{ptr @.str.201, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../sound/soc/codecs/wcd938x.c", i32 3830, i32 2}
!351 = !{ptr @.str.202, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../sound/soc/codecs/wcd938x.c", i32 3831, i32 2}
!353 = !{ptr @.str.203, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../sound/soc/codecs/wcd938x.c", i32 3832, i32 2}
!355 = !{ptr @.str.204, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../sound/soc/codecs/wcd938x.c", i32 3833, i32 2}
!357 = !{ptr @.str.205, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../sound/soc/codecs/wcd938x.c", i32 3834, i32 2}
!359 = !{ptr @.str.206, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../sound/soc/codecs/wcd938x.c", i32 3835, i32 2}
!361 = !{ptr @.str.207, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../sound/soc/codecs/wcd938x.c", i32 3836, i32 2}
!363 = !{ptr @.str.208, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../sound/soc/codecs/wcd938x.c", i32 3838, i32 2}
!365 = !{ptr @.str.209, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../sound/soc/codecs/wcd938x.c", i32 3839, i32 2}
!367 = !{ptr @.str.210, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../sound/soc/codecs/wcd938x.c", i32 3840, i32 2}
!369 = !{ptr @.str.211, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../sound/soc/codecs/wcd938x.c", i32 3843, i32 2}
!371 = !{ptr @.str.212, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../sound/soc/codecs/wcd938x.c", i32 3847, i32 2}
!373 = !{ptr @.str.213, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../sound/soc/codecs/wcd938x.c", i32 3851, i32 2}
!375 = !{ptr @.str.214, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../sound/soc/codecs/wcd938x.c", i32 3855, i32 2}
!377 = !{ptr @.str.215, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../sound/soc/codecs/wcd938x.c", i32 3860, i32 2}
!379 = !{ptr @.str.216, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../sound/soc/codecs/wcd938x.c", i32 3864, i32 2}
!381 = !{ptr @.str.217, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../sound/soc/codecs/wcd938x.c", i32 3868, i32 2}
!383 = !{ptr @.str.218, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../sound/soc/codecs/wcd938x.c", i32 3872, i32 2}
!385 = !{ptr @.str.219, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../sound/soc/codecs/wcd938x.c", i32 3877, i32 2}
!387 = !{ptr @.str.220, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../sound/soc/codecs/wcd938x.c", i32 3879, i32 2}
!389 = !{ptr @.str.221, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../sound/soc/codecs/wcd938x.c", i32 3880, i32 2}
!391 = !{ptr @.str.222, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../sound/soc/codecs/wcd938x.c", i32 3885, i32 2}
!393 = !{ptr @.str.223, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../sound/soc/codecs/wcd938x.c", i32 3887, i32 2}
!395 = !{ptr @.str.224, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../sound/soc/codecs/wcd938x.c", i32 3888, i32 2}
!397 = !{ptr @.str.225, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../sound/soc/codecs/wcd938x.c", i32 3889, i32 2}
!399 = !{ptr @.str.226, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../sound/soc/codecs/wcd938x.c", i32 3892, i32 2}
!401 = !{ptr @.str.227, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../sound/soc/codecs/wcd938x.c", i32 3894, i32 2}
!403 = !{ptr @.str.228, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../sound/soc/codecs/wcd938x.c", i32 3896, i32 2}
!405 = !{ptr @.str.229, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../sound/soc/codecs/wcd938x.c", i32 3898, i32 2}
!407 = !{ptr @.str.230, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../sound/soc/codecs/wcd938x.c", i32 3902, i32 2}
!409 = !{ptr @.str.231, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../sound/soc/codecs/wcd938x.c", i32 3903, i32 2}
!411 = !{ptr @.str.232, !412, !"<string literal>", i1 false, i1 false}
!412 = !{!"../sound/soc/codecs/wcd938x.c", i32 3904, i32 2}
!413 = !{ptr @.str.233, !414, !"<string literal>", i1 false, i1 false}
!414 = !{!"../sound/soc/codecs/wcd938x.c", i32 3905, i32 2}
!415 = !{ptr @wcd938x_dapm_widgets, !416, !"wcd938x_dapm_widgets", i1 false, i1 false}
!416 = !{!"../sound/soc/codecs/wcd938x.c", i32 3678, i32 41}
!417 = !{ptr @.str.235, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../sound/soc/codecs/wcd938x.c", i32 2072, i32 3}
!419 = !{ptr @.str.236, !418, !"<string literal>", i1 false, i1 false}
!420 = !{ptr @wcd938x_codec_enable_dmic._entry, !418, !"_entry", i1 false, i1 false}
!421 = !{ptr @wcd938x_codec_enable_dmic._entry_ptr, !418, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @.str.237, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../sound/soc/codecs/wcd938x.c", i32 2263, i32 4}
!424 = !{ptr @.str.238, !423, !"<string literal>", i1 false, i1 false}
!425 = !{ptr @wcd938x_adc_enable_req._entry, !423, !"_entry", i1 false, i1 false}
!426 = !{ptr @wcd938x_adc_enable_req._entry_ptr, !423, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.239, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../sound/soc/codecs/wcd938x.c", i32 2833, i32 2}
!429 = !{ptr @tx_adc2_mux, !430, !"tx_adc2_mux", i1 false, i1 false}
!430 = !{!"../sound/soc/codecs/wcd938x.c", i32 2832, i32 38}
!431 = !{ptr @adc2_enum, !432, !"adc2_enum", i1 false, i1 false}
!432 = !{!"../sound/soc/codecs/wcd938x.c", i32 2744, i32 30}
!433 = !{ptr @.str.240, !434, !"<string literal>", i1 false, i1 false}
!434 = !{!"../sound/soc/codecs/wcd938x.c", i32 2681, i32 2}
!435 = !{ptr @.str.241, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../sound/soc/codecs/wcd938x.c", i32 2681, i32 10}
!437 = !{ptr @adc2_mux_text, !438, !"adc2_mux_text", i1 false, i1 false}
!438 = !{!"../sound/soc/codecs/wcd938x.c", i32 2680, i32 27}
!439 = !{ptr @.str.242, !440, !"<string literal>", i1 false, i1 false}
!440 = !{!"../sound/soc/codecs/wcd938x.c", i32 2836, i32 2}
!441 = !{ptr @tx_adc3_mux, !442, !"tx_adc3_mux", i1 false, i1 false}
!442 = !{!"../sound/soc/codecs/wcd938x.c", i32 2835, i32 38}
!443 = !{ptr @adc3_enum, !444, !"adc3_enum", i1 false, i1 false}
!444 = !{!"../sound/soc/codecs/wcd938x.c", i32 2748, i32 30}
!445 = !{ptr @.str.243, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../sound/soc/codecs/wcd938x.c", i32 2685, i32 2}
!447 = !{ptr @.str.244, !448, !"<string literal>", i1 false, i1 false}
!448 = !{!"../sound/soc/codecs/wcd938x.c", i32 2685, i32 10}
!449 = !{ptr @adc3_mux_text, !450, !"adc3_mux_text", i1 false, i1 false}
!450 = !{!"../sound/soc/codecs/wcd938x.c", i32 2684, i32 27}
!451 = !{ptr @.str.245, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../sound/soc/codecs/wcd938x.c", i32 2839, i32 2}
!453 = !{ptr @tx_adc4_mux, !454, !"tx_adc4_mux", i1 false, i1 false}
!454 = !{!"../sound/soc/codecs/wcd938x.c", i32 2838, i32 38}
!455 = !{ptr @adc4_enum, !456, !"adc4_enum", i1 false, i1 false}
!456 = !{!"../sound/soc/codecs/wcd938x.c", i32 2752, i32 30}
!457 = !{ptr @.str.246, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../sound/soc/codecs/wcd938x.c", i32 2689, i32 2}
!459 = !{ptr @.str.247, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../sound/soc/codecs/wcd938x.c", i32 2689, i32 10}
!461 = !{ptr @adc4_mux_text, !462, !"adc4_mux_text", i1 false, i1 false}
!462 = !{!"../sound/soc/codecs/wcd938x.c", i32 2688, i32 27}
!463 = !{ptr @.str.248, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../sound/soc/codecs/wcd938x.c", i32 2842, i32 2}
!465 = !{ptr @tx_hdr12_mux, !466, !"tx_hdr12_mux", i1 false, i1 false}
!466 = !{!"../sound/soc/codecs/wcd938x.c", i32 2841, i32 38}
!467 = !{ptr @hdr12_enum, !468, !"hdr12_enum", i1 false, i1 false}
!468 = !{!"../sound/soc/codecs/wcd938x.c", i32 2756, i32 30}
!469 = !{ptr @.str.249, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../sound/soc/codecs/wcd938x.c", i32 2697, i32 2}
!471 = !{ptr @.str.250, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../sound/soc/codecs/wcd938x.c", i32 2697, i32 14}
!473 = !{ptr @hdr12_mux_text, !474, !"hdr12_mux_text", i1 false, i1 false}
!474 = !{!"../sound/soc/codecs/wcd938x.c", i32 2696, i32 27}
!475 = !{ptr @.str.251, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../sound/soc/codecs/wcd938x.c", i32 2845, i32 2}
!477 = !{ptr @tx_hdr34_mux, !478, !"tx_hdr34_mux", i1 false, i1 false}
!478 = !{!"../sound/soc/codecs/wcd938x.c", i32 2844, i32 38}
!479 = !{ptr @hdr34_enum, !480, !"hdr34_enum", i1 false, i1 false}
!480 = !{!"../sound/soc/codecs/wcd938x.c", i32 2760, i32 30}
!481 = !{ptr @.str.252, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../sound/soc/codecs/wcd938x.c", i32 2701, i32 2}
!483 = !{ptr @.str.253, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../sound/soc/codecs/wcd938x.c", i32 2701, i32 14}
!485 = !{ptr @hdr34_mux_text, !486, !"hdr34_mux_text", i1 false, i1 false}
!486 = !{!"../sound/soc/codecs/wcd938x.c", i32 2700, i32 27}
!487 = !{ptr @.str.254, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../sound/soc/codecs/wcd938x.c", i32 2119, i32 24}
!489 = !{ptr @tx_mode_bit, !490, !"tx_mode_bit", i1 false, i1 false}
!490 = !{!"../sound/soc/codecs/wcd938x.c", i32 160, i32 11}
!491 = !{ptr @.str.255, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../sound/soc/codecs/wcd938x.c", i32 2769, i32 2}
!493 = !{ptr @adc1_switch, !494, !"adc1_switch", i1 false, i1 false}
!494 = !{!"../sound/soc/codecs/wcd938x.c", i32 2768, i32 38}
!495 = !{ptr @adc2_switch, !496, !"adc2_switch", i1 false, i1 false}
!496 = !{!"../sound/soc/codecs/wcd938x.c", i32 2772, i32 38}
!497 = !{ptr @adc3_switch, !498, !"adc3_switch", i1 false, i1 false}
!498 = !{!"../sound/soc/codecs/wcd938x.c", i32 2776, i32 38}
!499 = !{ptr @adc4_switch, !500, !"adc4_switch", i1 false, i1 false}
!500 = !{!"../sound/soc/codecs/wcd938x.c", i32 2780, i32 38}
!501 = !{ptr @dmic1_switch, !502, !"dmic1_switch", i1 false, i1 false}
!502 = !{!"../sound/soc/codecs/wcd938x.c", i32 2784, i32 38}
!503 = !{ptr @dmic2_switch, !504, !"dmic2_switch", i1 false, i1 false}
!504 = !{!"../sound/soc/codecs/wcd938x.c", i32 2788, i32 38}
!505 = !{ptr @dmic3_switch, !506, !"dmic3_switch", i1 false, i1 false}
!506 = !{!"../sound/soc/codecs/wcd938x.c", i32 2792, i32 38}
!507 = !{ptr @dmic4_switch, !508, !"dmic4_switch", i1 false, i1 false}
!508 = !{!"../sound/soc/codecs/wcd938x.c", i32 2796, i32 38}
!509 = !{ptr @dmic5_switch, !510, !"dmic5_switch", i1 false, i1 false}
!510 = !{!"../sound/soc/codecs/wcd938x.c", i32 2800, i32 38}
!511 = !{ptr @dmic6_switch, !512, !"dmic6_switch", i1 false, i1 false}
!512 = !{!"../sound/soc/codecs/wcd938x.c", i32 2804, i32 38}
!513 = !{ptr @dmic7_switch, !514, !"dmic7_switch", i1 false, i1 false}
!514 = !{!"../sound/soc/codecs/wcd938x.c", i32 2808, i32 38}
!515 = !{ptr @dmic8_switch, !516, !"dmic8_switch", i1 false, i1 false}
!516 = !{!"../sound/soc/codecs/wcd938x.c", i32 2812, i32 38}
!517 = !{ptr @.str.268, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../sound/soc/codecs/wcd938x.c", i32 2372, i32 3}
!519 = !{ptr @.str.269, !518, !"<string literal>", i1 false, i1 false}
!520 = !{ptr @wcd938x_micbias_control._entry, !518, !"_entry", i1 false, i1 false}
!521 = !{ptr @wcd938x_micbias_control._entry_ptr, !518, !"_entry_ptr", i1 false, i1 false}
!522 = !{ptr @.str.270, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../sound/soc/codecs/wcd938x.c", i32 2848, i32 2}
!524 = !{ptr @rx_rdac3_mux, !525, !"rx_rdac3_mux", i1 false, i1 false}
!525 = !{!"../sound/soc/codecs/wcd938x.c", i32 2847, i32 38}
!526 = !{ptr @rdac3_enum, !527, !"rdac3_enum", i1 false, i1 false}
!527 = !{!"../sound/soc/codecs/wcd938x.c", i32 2764, i32 30}
!528 = !{ptr @rdac3_mux_text, !529, !"rdac3_mux_text", i1 false, i1 false}
!529 = !{!"../sound/soc/codecs/wcd938x.c", i32 2692, i32 27}
!530 = !{ptr @ear_rdac_switch, !531, !"ear_rdac_switch", i1 false, i1 false}
!531 = !{!"../sound/soc/codecs/wcd938x.c", i32 2816, i32 38}
!532 = !{ptr @aux_rdac_switch, !533, !"aux_rdac_switch", i1 false, i1 false}
!533 = !{!"../sound/soc/codecs/wcd938x.c", i32 2820, i32 38}
!534 = !{ptr @hphl_rdac_switch, !535, !"hphl_rdac_switch", i1 false, i1 false}
!535 = !{!"../sound/soc/codecs/wcd938x.c", i32 2824, i32 38}
!536 = !{ptr @hphr_rdac_switch, !537, !"hphr_rdac_switch", i1 false, i1 false}
!537 = !{!"../sound/soc/codecs/wcd938x.c", i32 2828, i32 38}
!538 = !{ptr @wcd938x_audio_map, !539, !"wcd938x_audio_map", i1 false, i1 false}
!539 = !{!"../sound/soc/codecs/wcd938x.c", i32 3909, i32 40}
!540 = !{ptr @.str.275, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../sound/soc/codecs/wcd938x.c", i32 4093, i32 8}
!542 = !{ptr @.str.276, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../sound/soc/codecs/wcd938x.c", i32 4095, i32 3}
!544 = !{ptr @.str.277, !543, !"<string literal>", i1 false, i1 false}
!545 = !{ptr @wcd938x_soc_codec_probe._entry, !543, !"_entry", i1 false, i1 false}
!546 = !{ptr @wcd938x_soc_codec_probe._entry_ptr, !543, !"_entry_ptr", i1 false, i1 false}
!547 = !{ptr @.str.278, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../sound/soc/codecs/wcd938x.c", i32 4099, i32 8}
!549 = !{ptr @.str.280, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../sound/soc/codecs/wcd938x.c", i32 4101, i32 3}
!551 = !{ptr @wcd938x_soc_codec_probe._entry.279, !550, !"_entry", i1 false, i1 false}
!552 = !{ptr @wcd938x_soc_codec_probe._entry_ptr.281, !550, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @.str.282, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../sound/soc/codecs/wcd938x.c", i32 4105, i32 8}
!555 = !{ptr @.str.284, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../sound/soc/codecs/wcd938x.c", i32 4107, i32 3}
!557 = !{ptr @wcd938x_soc_codec_probe._entry.283, !556, !"_entry", i1 false, i1 false}
!558 = !{ptr @wcd938x_soc_codec_probe._entry_ptr.285, !556, !"_entry_ptr", i1 false, i1 false}
!559 = !{ptr @.str.287, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../sound/soc/codecs/wcd938x.c", i32 4119, i32 4}
!561 = !{ptr @wcd938x_soc_codec_probe._entry.286, !560, !"_entry", i1 false, i1 false}
!562 = !{ptr @wcd938x_soc_codec_probe._entry_ptr.288, !560, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @wcd938x_soc_codec_probe._entry.289, !564, !"_entry", i1 false, i1 false}
!564 = !{!"../sound/soc/codecs/wcd938x.c", i32 4129, i32 4}
!565 = !{ptr @wcd938x_soc_codec_probe._entry_ptr.290, !564, !"_entry_ptr", i1 false, i1 false}
!566 = !{ptr @.str.292, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../sound/soc/codecs/wcd938x.c", i32 4141, i32 3}
!568 = !{ptr @wcd938x_soc_codec_probe._entry.291, !567, !"_entry", i1 false, i1 false}
!569 = !{ptr @wcd938x_soc_codec_probe._entry_ptr.293, !567, !"_entry_ptr", i1 false, i1 false}
!570 = !{ptr @.str.294, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../sound/soc/codecs/wcd938x.c", i32 2851, i32 2}
!572 = !{ptr @.str.295, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../sound/soc/codecs/wcd938x.c", i32 2853, i32 2}
!574 = !{ptr @.str.296, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../sound/soc/codecs/wcd938x.c", i32 2855, i32 2}
!576 = !{ptr @.str.297, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../sound/soc/codecs/wcd938x.c", i32 2857, i32 2}
!578 = !{ptr @.str.298, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../sound/soc/codecs/wcd938x.c", i32 2859, i32 2}
!580 = !{ptr @wcd9380_snd_controls, !581, !"wcd9380_snd_controls", i1 false, i1 false}
!581 = !{!"../sound/soc/codecs/wcd938x.c", i32 2850, i32 38}
!582 = !{ptr @rx_hph_mode_mux_enum_wcd9380, !583, !"rx_hph_mode_mux_enum_wcd9380", i1 false, i1 false}
!583 = !{!"../sound/soc/codecs/wcd938x.c", i32 2736, i32 30}
!584 = !{ptr @.str.299, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../sound/soc/codecs/wcd938x.c", i32 2670, i32 2}
!586 = !{ptr @.str.300, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../sound/soc/codecs/wcd938x.c", i32 2670, i32 19}
!588 = !{ptr @.str.301, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../sound/soc/codecs/wcd938x.c", i32 2670, i32 38}
!590 = !{ptr @.str.302, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../sound/soc/codecs/wcd938x.c", i32 2670, i32 50}
!592 = !{ptr @.str.303, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../sound/soc/codecs/wcd938x.c", i32 2671, i32 2}
!594 = !{ptr @.str.304, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../sound/soc/codecs/wcd938x.c", i32 2671, i32 18}
!596 = !{ptr @.str.305, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../sound/soc/codecs/wcd938x.c", i32 2671, i32 31}
!598 = !{ptr @.str.306, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../sound/soc/codecs/wcd938x.c", i32 2671, i32 50}
!600 = !{ptr @.str.307, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../sound/soc/codecs/wcd938x.c", i32 2672, i32 2}
!602 = !{ptr @rx_hph_mode_mux_text_wcd9380, !603, !"rx_hph_mode_mux_text_wcd9380", i1 false, i1 false}
!603 = !{!"../sound/soc/codecs/wcd938x.c", i32 2669, i32 27}
!604 = !{ptr @tx0_mode_enum_wcd9380, !605, !"tx0_mode_enum_wcd9380", i1 false, i1 false}
!605 = !{!"../sound/soc/codecs/wcd938x.c", i32 2704, i32 30}
!606 = !{ptr @.str.308, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../sound/soc/codecs/wcd938x.c", i32 2661, i32 2}
!608 = !{ptr @.str.309, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../sound/soc/codecs/wcd938x.c", i32 2661, i32 17}
!610 = !{ptr @.str.310, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../sound/soc/codecs/wcd938x.c", i32 2661, i32 29}
!612 = !{ptr @.str.311, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../sound/soc/codecs/wcd938x.c", i32 2661, i32 43}
!614 = !{ptr @.str.312, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../sound/soc/codecs/wcd938x.c", i32 2661, i32 57}
!616 = !{ptr @tx_mode_mux_text_wcd9380, !617, !"tx_mode_mux_text_wcd9380", i1 false, i1 false}
!617 = !{!"../sound/soc/codecs/wcd938x.c", i32 2660, i32 27}
!618 = !{ptr @tx1_mode_enum_wcd9380, !619, !"tx1_mode_enum_wcd9380", i1 false, i1 false}
!619 = !{!"../sound/soc/codecs/wcd938x.c", i32 2708, i32 30}
!620 = !{ptr @tx2_mode_enum_wcd9380, !621, !"tx2_mode_enum_wcd9380", i1 false, i1 false}
!621 = !{!"../sound/soc/codecs/wcd938x.c", i32 2712, i32 30}
!622 = !{ptr @tx3_mode_enum_wcd9380, !623, !"tx3_mode_enum_wcd9380", i1 false, i1 false}
!623 = !{!"../sound/soc/codecs/wcd938x.c", i32 2716, i32 30}
!624 = !{ptr @wcd9385_snd_controls, !625, !"wcd9385_snd_controls", i1 false, i1 false}
!625 = !{!"../sound/soc/codecs/wcd938x.c", i32 2863, i32 38}
!626 = !{ptr @rx_hph_mode_mux_enum, !627, !"rx_hph_mode_mux_enum", i1 false, i1 false}
!627 = !{!"../sound/soc/codecs/wcd938x.c", i32 2740, i32 30}
!628 = !{ptr @.str.313, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../sound/soc/codecs/wcd938x.c", i32 2676, i32 19}
!630 = !{ptr @.str.314, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../sound/soc/codecs/wcd938x.c", i32 2677, i32 15}
!632 = !{ptr @rx_hph_mode_mux_text, !633, !"rx_hph_mode_mux_text", i1 false, i1 false}
!633 = !{!"../sound/soc/codecs/wcd938x.c", i32 2675, i32 27}
!634 = !{ptr @tx0_mode_enum_wcd9385, !635, !"tx0_mode_enum_wcd9385", i1 false, i1 false}
!635 = !{!"../sound/soc/codecs/wcd938x.c", i32 2720, i32 30}
!636 = !{ptr @.str.315, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../sound/soc/codecs/wcd938x.c", i32 2666, i32 2}
!638 = !{ptr @.str.316, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../sound/soc/codecs/wcd938x.c", i32 2666, i32 14}
!640 = !{ptr @tx_mode_mux_text, !641, !"tx_mode_mux_text", i1 false, i1 false}
!641 = !{!"../sound/soc/codecs/wcd938x.c", i32 2664, i32 27}
!642 = !{ptr @tx1_mode_enum_wcd9385, !643, !"tx1_mode_enum_wcd9385", i1 false, i1 false}
!643 = !{!"../sound/soc/codecs/wcd938x.c", i32 2724, i32 30}
!644 = !{ptr @tx2_mode_enum_wcd9385, !645, !"tx2_mode_enum_wcd9385", i1 false, i1 false}
!645 = !{!"../sound/soc/codecs/wcd938x.c", i32 2728, i32 30}
!646 = !{ptr @tx3_mode_enum_wcd9385, !647, !"tx3_mode_enum_wcd9385", i1 false, i1 false}
!647 = !{!"../sound/soc/codecs/wcd938x.c", i32 2732, i32 30}
!648 = !{ptr @mbhc_cb, !649, !"mbhc_cb", i1 false, i1 false}
!649 = !{!"../sound/soc/codecs/wcd938x.c", i32 3529, i32 33}
!650 = !{ptr @.str.317, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../sound/soc/codecs/wcd938x.c", i32 3320, i32 2}
!652 = !{ptr @.str.318, !651, !"<string literal>", i1 false, i1 false}
!653 = !{ptr @.str.319, !651, !"<string literal>", i1 false, i1 false}
!654 = !{ptr @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug298, !651, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!655 = !{ptr @.str.320, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../sound/soc/codecs/wcd938x.c", i32 3352, i32 2}
!657 = !{ptr @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug299, !656, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!658 = !{ptr @.str.321, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../sound/soc/codecs/wcd938x.c", i32 3358, i32 3}
!660 = !{ptr @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug300, !659, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!661 = !{ptr @.str.322, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../sound/soc/codecs/wcd938x.c", i32 3367, i32 3}
!663 = !{ptr @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug301, !662, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!664 = !{ptr @.str.323, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../sound/soc/codecs/wcd938x.c", i32 3392, i32 3}
!666 = !{ptr @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug302, !665, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!667 = !{ptr @.str.324, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../sound/soc/codecs/wcd938x.c", i32 3396, i32 3}
!669 = !{ptr @wcd938x_wcd_mbhc_calc_impedance.__UNIQUE_ID_ddebug303, !668, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!670 = !{ptr @.str.325, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../sound/soc/codecs/wcd938x.c", i32 3193, i32 2}
!672 = !{ptr @.str.326, !671, !"<string literal>", i1 false, i1 false}
!673 = !{ptr @wcd938x_mbhc_zdet_ramp.__UNIQUE_ID_ddebug296, !671, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!674 = !{ptr @.str.327, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../sound/soc/codecs/wcd938x.c", i32 3207, i32 2}
!676 = !{ptr @wcd938x_mbhc_zdet_ramp.__UNIQUE_ID_ddebug297, !675, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!677 = !{ptr @.str.328, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../sound/soc/codecs/wcd938x.c", i32 3139, i32 3}
!679 = !{ptr @.str.329, !678, !"<string literal>", i1 false, i1 false}
!680 = !{ptr @wcd938x_mbhc_get_result_params._entry, !678, !"_entry", i1 false, i1 false}
!681 = !{ptr @wcd938x_mbhc_get_result_params._entry_ptr, !678, !"_entry_ptr", i1 false, i1 false}
!682 = !{ptr @.str.331, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../sound/soc/codecs/wcd938x.c", i32 3150, i32 2}
!684 = !{ptr @wcd938x_mbhc_get_result_params._entry.330, !683, !"_entry", i1 false, i1 false}
!685 = !{ptr @wcd938x_mbhc_get_result_params._entry_ptr.332, !683, !"_entry_ptr", i1 false, i1 false}
!686 = !{ptr @.str.333, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../sound/soc/codecs/wcd938x.c", i32 2946, i32 3}
!688 = !{ptr @.str.334, !687, !"<string literal>", i1 false, i1 false}
!689 = !{ptr @wcd938x_mbhc_program_btn_thr._entry, !687, !"_entry", i1 false, i1 false}
!690 = !{ptr @wcd938x_mbhc_program_btn_thr._entry_ptr, !687, !"_entry_ptr", i1 false, i1 false}
!691 = !{ptr @.str.335, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../sound/soc/codecs/wcd938x.c", i32 2955, i32 3}
!693 = !{ptr @wcd938x_mbhc_program_btn_thr.__UNIQUE_ID_ddebug295, !692, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!694 = !{ptr @.str.336, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../sound/soc/codecs/wcd938x.c", i32 3461, i32 3}
!696 = !{ptr @.str.337, !695, !"<string literal>", i1 false, i1 false}
!697 = !{ptr @wcd938x_mbhc_moisture_config.__UNIQUE_ID_ddebug304, !695, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!698 = !{ptr @.str.338, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../sound/soc/codecs/wcd938x.c", i32 3497, i32 3}
!700 = !{ptr @wcd938x_mbhc_get_moisture_status.__UNIQUE_ID_ddebug305, !699, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!701 = !{ptr @wcd_mbhc_fields, !702, !"wcd_mbhc_fields", i1 false, i1 false}
!702 = !{!"../sound/soc/codecs/wcd938x.c", i32 223, i32 30}
!703 = !{ptr @.str.339, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../sound/soc/codecs/wcd938x.c", i32 3583, i32 2}
!705 = !{ptr @.str.341, !706, !"<string literal>", i1 false, i1 false}
!706 = !{!"../sound/soc/codecs/wcd938x.c", i32 3585, i32 2}
!707 = !{ptr @impedance_detect_controls, !708, !"impedance_detect_controls", i1 false, i1 false}
!708 = !{!"../sound/soc/codecs/wcd938x.c", i32 3582, i32 38}
!709 = !{ptr @.str.343, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../sound/soc/codecs/wcd938x.c", i32 3571, i32 2}
!711 = !{ptr @.str.344, !710, !"<string literal>", i1 false, i1 false}
!712 = !{ptr @wcd938x_hph_impedance_get.__UNIQUE_ID_ddebug306, !710, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!713 = !{ptr @.str.345, !714, !"<string literal>", i1 false, i1 false}
!714 = !{!"../sound/soc/codecs/wcd938x.c", i32 3578, i32 2}
!715 = !{ptr @hph_type_detect_controls, !716, !"hph_type_detect_controls", i1 false, i1 false}
!716 = !{!"../sound/soc/codecs/wcd938x.c", i32 3577, i32 38}
!717 = !{ptr @.str.347, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../sound/soc/codecs/wcd938x.c", i32 4296, i32 11}
!719 = !{ptr @.str.348, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../sound/soc/codecs/wcd938x.c", i32 4298, i32 19}
!721 = !{ptr @.str.349, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../sound/soc/codecs/wcd938x.c", i32 4309, i32 11}
!723 = !{ptr @.str.350, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../sound/soc/codecs/wcd938x.c", i32 4311, i32 19}
!725 = !{ptr @wcd938x_dais, !726, !"wcd938x_dais", i1 false, i1 false}
!726 = !{!"../sound/soc/codecs/wcd938x.c", i32 4294, i32 34}
!727 = !{ptr @wcd938x_sdw_dai_ops, !728, !"wcd938x_sdw_dai_ops", i1 false, i1 false}
!728 = !{!"../sound/soc/codecs/wcd938x.c", i32 4288, i32 37}
!729 = !{ptr @wcd938x_dt_match, !730, !"wcd938x_dt_match", i1 false, i1 false}
!730 = !{!"../sound/soc/codecs/wcd938x.c", i32 4511, i32 34}
!731 = !{i32 1, !"wchar_size", i32 2}
!732 = !{i32 1, !"min_enum_size", i32 4}
!733 = !{i32 8, !"branch-target-enforcement", i32 0}
!734 = !{i32 8, !"sign-return-address", i32 0}
!735 = !{i32 8, !"sign-return-address-all", i32 0}
!736 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!737 = !{i32 7, !"uwtable", i32 1}
!738 = !{i32 7, !"frame-pointer", i32 2}
!739 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!740 = !{i8 0, i8 2}
!741 = !{!"auto-init"}
!742 = !{i64 2149113234, i64 2149113239, i64 2149113252, i64 2149113296, i64 2149113330, i64 2149113351}
