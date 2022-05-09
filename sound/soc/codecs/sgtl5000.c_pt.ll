; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/sgtl5000.c_pt.bc'
source_filename = "../sound/soc/codecs/sgtl5000.c"
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.107, ptr }
%union.anon.107 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.reg_default = type { i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.99, i32 }
%union.anon.99 = type { ptr }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.soc_mixer_control = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, %struct.snd_soc_dobj }
%struct.soc_enum = type { i32, i8, i8, i32, i32, ptr, ptr, i8, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.sgtl5000_priv = type { i32, i32, i32, [3 x %struct.regulator_bulk_data], i32, ptr, ptr, i32, i8, i8, i8, i8, [3 x i16] }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.95, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.95 = type { %struct.anon.98, [40 x i8] }
%struct.anon.98 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.93, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
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

@__initcall__kmod_snd_soc_sgtl5000__311_1829_sgtl5000_i2c_driver_init6 = internal global ptr @sgtl5000_i2c_driver_init, section ".initcall6.init", align 4
@sgtl5000_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @sgtl5000_i2c_probe, ptr @sgtl5000_i2c_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sgtl5000_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @sgtl5000_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_sgtl5000_i2c_driver_exit = internal global ptr @sgtl5000_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description312 = internal constant [70 x i8] c"snd_soc_sgtl5000.description=Freescale SGTL5000 ALSA SoC Codec Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author313 = internal constant [64 x i8] c"snd_soc_sgtl5000.author=Zeng Zhaoming <zengzm.kernel@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file314 = internal constant [56 x i8] c"snd_soc_sgtl5000.file=sound/soc/codecs/snd-soc-sgtl5000\00", section ".modinfo", align 1
@__UNIQUE_ID_license315 = internal constant [29 x i8] c"snd_soc_sgtl5000.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sgtl5000\00", [23 x i8] zeroinitializer }, align 32
@sgtl5000_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,sgtl5000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sgtl5000_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"sgtl5000\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sgtl5000_regmap = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 16, i32 2, i32 0, i32 16, ptr null, ptr @sgtl5000_readable, ptr @sgtl5000_volatile, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 314, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sgtl5000_reg_defaults, i32 35, i32 1, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"sgtl5000:1601:(&sgtl5000_regmap)->lock\00", [57 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1604, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate regmap: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sgtl5000_i2c_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sound/soc/codecs/sgtl5000.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr = internal global ptr @sgtl5000_i2c_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to get mclock\0A\00", [42 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1622, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Error enabling clock %d\0A\00", [39 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr.10 = internal global ptr @sgtl5000_i2c_probe._entry.8, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sgtl5000_i2c_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 1632, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Error reading chip id %d\0A\00", [38 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr.13 = internal global ptr @sgtl5000_i2c_probe._entry.11, section ".printk_index", align 4
@sgtl5000_i2c_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.3, ptr @.str.4, i32 1639, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Device with ID register %x is not a sgtl5000\0A\00", [50 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr.16 = internal global ptr @sgtl5000_i2c_probe._entry.14, section ".printk_index", align 4
@sgtl5000_i2c_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 1645, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sgtl5000 revision 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr.20 = internal global ptr @sgtl5000_i2c_probe._entry.17, section ".printk_index", align 4
@sgtl5000_i2c_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.3, ptr @.str.4, i32 1654, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Error %d initializing CHIP_CLK_CTRL\0A\00", [59 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr.23 = internal global ptr @sgtl5000_i2c_probe._entry.21, section ".printk_index", align 4
@sgtl5000_i2c_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.3, ptr @.str.4, i32 1661, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Error %d muting outputs via CHIP_ANA_CTRL\0A\00", [53 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr.26 = internal global ptr @sgtl5000_i2c_probe._entry.24, section ".printk_index", align 4
@sgtl5000_i2c_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.3, ptr @.str.4, i32 1674, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to read ANA_POWER: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr.29 = internal global ptr @sgtl5000_i2c_probe._entry.27, section ".printk_index", align 4
@sgtl5000_i2c_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.3, ptr @.str.4, i32 1683, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Error %d disabling VAG\0A\00", [40 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr.32 = internal global ptr @sgtl5000_i2c_probe._entry.30, section ".printk_index", align 4
@sgtl5000_i2c_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.3, ptr @.str.4, i32 1700, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Error %d setting LINREG_VDDD\0A\00", [34 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr.35 = internal global ptr @sgtl5000_i2c_probe._entry.33, section ".printk_index", align 4
@sgtl5000_i2c_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.3, ptr @.str.4, i32 1704, ptr @.str.19, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"Using internal LDO instead of VDDD: check ER1 erratum\0A\00", [41 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr.38 = internal global ptr @sgtl5000_i2c_probe._entry.36, section ".printk_index", align 4
@sgtl5000_i2c_probe.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.3, ptr @.str.4, ptr @.str.40, i8 1, i8 -84, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_sgtl5000\00", [47 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Using external VDDD\0A\00", [43 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.3, ptr @.str.4, i32 1718, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Error %d setting CHIP_ANA_POWER to %04x\0A\00", [55 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr.43 = internal global ptr @sgtl5000_i2c_probe._entry.41, section ".printk_index", align 4
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"micbias-resistor-k-ohms\00", [40 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.3, ptr @.str.4, i32 1739, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Unsuitable MicBias resistor\0A\00", [35 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr.47 = internal global ptr @sgtl5000_i2c_probe._entry.45, section ".printk_index", align 4
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"micbias-voltage-m-volts\00", [40 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.3, ptr @.str.4, i32 1754, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Unsuitable MicBias voltage\0A\00", [36 x i8] zeroinitializer }, align 32
@sgtl5000_i2c_probe._entry_ptr.51 = internal global ptr @sgtl5000_i2c_probe._entry.49, section ".printk_index", align 4
@.str.52 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lrclk-strength\00", [17 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sclk-strength\00", [18 x i8] zeroinitializer }, align 32
@sgtl5000_driver = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr @sgtl5000_snd_controls, i32 23, ptr @sgtl5000_dapm_widgets, i32 17, ptr @sgtl5000_dapm_routes, i32 20, ptr @sgtl5000_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sgtl5000_of_xlate_dai_id, ptr null, ptr null, ptr @sgtl5000_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 124, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@sgtl5000_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @sgtl5000_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.120, i64 68719477828, i32 1278, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.118, i64 68719477828, i32 1278, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 -128, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDDD\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"VDDA\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VDDIO\00", [26 x i8] zeroinitializer }, align 32
@sgtl5000_reg_defaults = internal constant { [35 x %struct.reg_default], [72 x i8] } { [35 x %struct.reg_default] [%struct.reg_default { i32 2, i32 0 }, %struct.reg_default { i32 6, i32 16 }, %struct.reg_default { i32 10, i32 16 }, %struct.reg_default { i32 14, i32 524 }, %struct.reg_default { i32 16, i32 15420 }, %struct.reg_default { i32 20, i32 351 }, %struct.reg_default { i32 32, i32 0 }, %struct.reg_default { i32 34, i32 6168 }, %struct.reg_default { i32 36, i32 273 }, %struct.reg_default { i32 40, i32 0 }, %struct.reg_default { i32 42, i32 0 }, %struct.reg_default { i32 44, i32 0 }, %struct.reg_default { i32 46, i32 1028 }, %struct.reg_default { i32 50, i32 20480 }, %struct.reg_default { i32 52, i32 0 }, %struct.reg_default { i32 54, i32 0 }, %struct.reg_default { i32 60, i32 0 }, %struct.reg_default { i32 58, i32 0 }, %struct.reg_default { i32 256, i32 0 }, %struct.reg_default { i32 258, i32 0 }, %struct.reg_default { i32 260, i32 64 }, %struct.reg_default { i32 262, i32 1311 }, %struct.reg_default { i32 264, i32 0 }, %struct.reg_default { i32 266, i32 64 }, %struct.reg_default { i32 278, i32 47 }, %struct.reg_default { i32 280, i32 47 }, %struct.reg_default { i32 282, i32 47 }, %struct.reg_default { i32 284, i32 47 }, %struct.reg_default { i32 286, i32 47 }, %struct.reg_default { i32 288, i32 32768 }, %struct.reg_default { i32 290, i32 0 }, %struct.reg_default { i32 292, i32 20736 }, %struct.reg_default { i32 294, i32 5235 }, %struct.reg_default { i32 296, i32 40 }, %struct.reg_default { i32 298, i32 80 }], [72 x i8] zeroinitializer }, align 32
@sgtl5000_fill_defaults._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.4, i32 1578, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: error %d setting reg 0x%02x to 0x%04x\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sgtl5000_fill_defaults\00", [41 x i8] zeroinitializer }, align 32
@sgtl5000_fill_defaults._entry_ptr = internal global ptr @sgtl5000_fill_defaults._entry, section ".printk_index", align 4
@sgtl5000_snd_controls = internal constant { [23 x %struct.snd_kcontrol_new], [272 x i8] } { [23 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.59, i32 0, i32 19, i32 0, ptr @dac_info_volsw, ptr @dac_get_volsw, ptr @dac_put_volsw, %union.anon.99 zeroinitializer, i32 0 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.60, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.61, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 { ptr @capture_6db_attenuate }, i32 ptrtoint (ptr @.compoundliteral.62 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.63, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.64 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.65, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.66 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.67, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 { ptr @headphone_volume }, i32 ptrtoint (ptr @.compoundliteral.68 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.69, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.70 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.71, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.72 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.73, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 { ptr @mic_gain_tlv }, i32 ptrtoint (ptr @.compoundliteral.74 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.75, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 { ptr @lineout_volume }, i32 ptrtoint (ptr @.compoundliteral.76 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.77, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.78 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.79, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 { ptr @dap_volume }, i32 ptrtoint (ptr @.compoundliteral.80 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.81, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 { ptr @dap_volume }, i32 ptrtoint (ptr @.compoundliteral.82 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.83, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.84 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.85, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.86 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.87, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 { ptr @avc_max_gain }, i32 ptrtoint (ptr @.compoundliteral.88 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.89, i32 0, i32 0, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @.compoundliteral.90 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.91, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @avc_get_threshold, ptr @avc_put_threshold, %union.anon.99 { ptr @avc_threshold }, i32 ptrtoint (ptr @.compoundliteral.92 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.93, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 { ptr @bass_band }, i32 ptrtoint (ptr @.compoundliteral.94 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.95, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 { ptr @bass_band }, i32 ptrtoint (ptr @.compoundliteral.96 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.97, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 { ptr @bass_band }, i32 ptrtoint (ptr @.compoundliteral.98 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.99, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 { ptr @bass_band }, i32 ptrtoint (ptr @.compoundliteral.100 to i32) }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.101, i32 0, i32 19, i32 0, ptr @snd_soc_info_volsw, ptr @snd_soc_get_volsw, ptr @snd_soc_put_volsw, %union.anon.99 { ptr @bass_band }, i32 ptrtoint (ptr @.compoundliteral.102 to i32) }], [272 x i8] zeroinitializer }, align 32
@sgtl5000_dapm_routes = internal constant { [20 x %struct.snd_soc_dapm_route], [272 x i8] } { [20 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.104, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.111, ptr @.str.105, ptr @.str.105, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.121, ptr null, ptr @.str.111, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.119, ptr null, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr @.str.121, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.114, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.114, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr @.str.121, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.115, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.116, ptr null, ptr @.str.115, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr @.str.121, ptr @.str.121, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.117, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.113, ptr null, ptr @.str.116, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.122, ptr null, ptr @.str.113, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.122, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.110, ptr null, ptr @.str.122, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.112, ptr @.str.104, ptr @.str.104, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.109, ptr null, ptr @.str.112, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.107, ptr null, ptr @.str.110, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.106, ptr null, ptr @.str.109, ptr null, %struct.snd_soc_dobj zeroinitializer }], [272 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Volume\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 15, i32 15, i32 32, i32 32, i32 0, i32 4, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Capture Attenuate Switch (-6dB)\00", [32 x i8] zeroinitializer }, align 32
@capture_6db_attenuate = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -600, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 32, i32 32, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Capture ZC Switch\00", [46 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 1, i32 1, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Switch\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 0, i32 0, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Volume\00", [38 x i8] zeroinitializer }, align 32
@headphone_volume = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5150, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 127, i32 127, i32 34, i32 34, i32 0, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Headphone Playback Switch\00", [38 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 4, i32 4, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Headphone Playback ZC Switch\00", [35 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Volume\00", [21 x i8] zeroinitializer }, align 32
@mic_gain_tlv = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 3, i32 48, i32 0, i32 0, i32 1, i32 8, i32 0, i32 0, i32 1, i32 3, i32 1, i32 8, i32 2000, i32 1000], [40 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 42, i32 42, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Lineout Playback Volume\00", [40 x i8] zeroinitializer }, align 32
@lineout_volume = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1550, i32 50], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 31, i32 31, i32 46, i32 46, i32 0, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Lineout Playback Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 36, i32 36, i32 8, i32 8, i32 0, i8 -128, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DAP Main channel\00", [47 x i8] zeroinitializer }, align 32
@dap_volume = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 1], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 65535, i32 65535, i32 288, i32 288, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DAP Mix channel\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 65535, i32 65535, i32 290, i32 290, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"AVC Switch\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 292, i32 292, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AVC Hard Limiter Switch\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.86 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 1, i32 1, i32 292, i32 292, i32 5, i32 5, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"AVC Max Gain Volume\00", [44 x i8] zeroinitializer }, align 32
@avc_max_gain = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 0, i32 600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.88 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 2, i32 2, i32 292, i32 292, i32 12, i32 12, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"AVC Integrator Response\00", [40 x i8] zeroinitializer }, align 32
@.compoundliteral.90 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 3, i32 3, i32 292, i32 292, i32 8, i32 8, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"AVC Threshold Volume\00", [43 x i8] zeroinitializer }, align 32
@avc_threshold = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 4, i32 8, i32 0, i32 9600], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.92 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 96, i32 96, i32 294, i32 294, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BASS 0\00", [25 x i8] zeroinitializer }, align 32
@bass_band = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -1175, i32 25], [16 x i8] zeroinitializer }, align 32
@.compoundliteral.94 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 95, i32 95, i32 278, i32 278, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BASS 1\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.96 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 95, i32 95, i32 280, i32 280, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BASS 2\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.98 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 95, i32 95, i32 282, i32 282, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BASS 3\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.100 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 95, i32 95, i32 284, i32 284, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"BASS 4\00", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.102 = internal global { %struct.soc_mixer_control, [56 x i8] } { %struct.soc_mixer_control { i32 0, i32 95, i32 95, i32 286, i32 286, i32 0, i32 0, i32 0, i8 0, %struct.snd_soc_dobj zeroinitializer }, [56 x i8] zeroinitializer }, align 32
@avc_thr_db2reg = internal constant { <{ [87 x i16], [10 x i16] }>, [62 x i8] } { <{ [87 x i16], [10 x i16] }> <{ [87 x i16] [i16 20840, i16 18574, i16 16554, i16 14753, i16 13149, i16 11719, i16 10444, i16 9309, i16 8296, i16 7394, i16 6590, i16 5873, i16 5234, i16 4665, i16 4158, i16 3706, i16 3302, i16 2943, i16 2623, i16 2338, i16 2084, i16 1857, i16 1655, i16 1475, i16 1314, i16 1171, i16 1044, i16 930, i16 829, i16 739, i16 659, i16 587, i16 523, i16 466, i16 415, i16 370, i16 330, i16 294, i16 262, i16 233, i16 208, i16 185, i16 165, i16 147, i16 131, i16 117, i16 104, i16 93, i16 82, i16 73, i16 65, i16 58, i16 52, i16 46, i16 41, i16 37, i16 33, i16 29, i16 26, i16 23, i16 20, i16 18, i16 16, i16 14, i16 13, i16 11, i16 10, i16 9, i16 8, i16 7, i16 6, i16 5, i16 5, i16 4, i16 4, i16 3, i16 3, i16 2, i16 2, i16 2, i16 2, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1], [10 x i16] zeroinitializer }>, [62 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"LINE_IN\00", [24 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"MIC_IN\00", [25 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"HP_OUT\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"LINE_OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"LO\00", [29 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Capture Mux\00", [20 x i8] zeroinitializer }, align 32
@adc_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.111, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @adc_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Headphone Mux\00", [18 x i8] zeroinitializer }, align 32
@hp_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.112, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @hp_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Digital Input Mux\00", [46 x i8] zeroinitializer }, align 32
@dac_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.113, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @dac_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DAP Mux\00", [24 x i8] zeroinitializer }, align 32
@dap_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.114, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @dap_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DAP MIX Mux\00", [20 x i8] zeroinitializer }, align 32
@dapmix_mux = internal constant { %struct.snd_kcontrol_new, [48 x i8] } { %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.115, i32 0, i32 0, i32 0, ptr @snd_soc_info_enum_double, ptr @snd_soc_dapm_get_enum_double, ptr @snd_soc_dapm_put_enum_double, %union.anon.99 zeroinitializer, i32 ptrtoint (ptr @dapmix_enum to i32) }, [48 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAP\00", [28 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AIFIN\00", [26 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AIFOUT\00", [25 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@sgtl5000_dapm_widgets = internal constant { [17 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [748 x i8] } { [17 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.104, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.105, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.106, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.107, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.108, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 42, i8 8, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr @mic_bias_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.109, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 48, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @headphone_pga_event, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 6, ptr @.str.110, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 48, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.111, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @adc_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.112, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @hp_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.113, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dac_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.114, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 256, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dap_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 2, ptr @.str.115, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 256, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 1, ptr @dapmix_mux, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 4, ptr @.str.116, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 4, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 23, ptr @.str.117, ptr @.str.118, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 24, ptr @.str.119, ptr @.str.120, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 2, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.121, ptr @.str.120, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 48, i8 1, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @adc_updown_depop, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.122, ptr @.str.118, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 48, i8 3, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 15, ptr @dac_updown_depop, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [748 x i8] zeroinitializer }, align 32
@vag_and_mute_control.mute_mask = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 16, i16 272, i16 272], [26 x i8] zeroinitializer }, align 32
@adc_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 36, i8 2, i8 2, i32 2, i32 1, ptr @adc_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@adc_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.105, ptr @.str.104], [24 x i8] zeroinitializer }, align 32
@hp_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 36, i8 6, i8 6, i32 2, i32 1, ptr @hp_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@hp_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.122, ptr @.str.104], [24 x i8] zeroinitializer }, align 32
@dac_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 10, i8 4, i8 4, i32 4, i32 3, ptr @dac_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dac_mux_text = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.121, ptr @.str.124, ptr @.str.125, ptr @.str.116], [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I2S\00", [28 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Rsvrd\00", [26 x i8] zeroinitializer }, align 32
@dap_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 10, i8 6, i8 6, i32 2, i32 1, ptr @dap_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dap_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.121, ptr @.str.124], [24 x i8] zeroinitializer }, align 32
@dapmix_enum = internal constant { %struct.soc_enum, [32 x i8] } { %struct.soc_enum { i32 10, i8 8, i8 8, i32 2, i32 1, ptr @dapmix_mux_text, ptr null, i8 0, %struct.snd_soc_dobj zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@dapmix_mux_text = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.121, ptr @.str.124], [24 x i8] zeroinitializer }, align 32
@sgtl5000_set_power_regs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.4, i32 1314, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"regulator voltage not set correctly\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sgtl5000_set_power_regs\00", [40 x i8] zeroinitializer }, align 32
@sgtl5000_set_power_regs._entry_ptr = internal global ptr @sgtl5000_set_power_regs._entry, section ".printk_index", align 4
@sgtl5000_set_power_regs._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.129, ptr @.str.127, ptr @.str.4, i32 1323, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"exceed max voltage vdda %dmV vddio %dmV vddd %dmV\0A\00", [45 x i8] zeroinitializer }, align 32
@sgtl5000_set_power_regs._entry_ptr.130 = internal global ptr @sgtl5000_set_power_regs._entry.128, section ".printk_index", align 4
@vol_quot_table = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*-/258<?CGKOTY^djpw~\85\8D\96\9E\A8\B2\BC\C8\D3\E0\ED\FB", [32 x i8] zeroinitializer }, align 32
@sgtl5000_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr @sgtl5000_set_dai_sysclk, ptr null, ptr null, ptr null, ptr @sgtl5000_set_dai_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sgtl5000_mute_stream, ptr null, ptr null, ptr @sgtl5000_pcm_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 -128 }, [32 x i8] zeroinitializer }, align 32
@sgtl5000_pcm_hw_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.4, i32 1060, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: set sysclk first!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sgtl5000_pcm_hw_params\00", [41 x i8] zeroinitializer }, align 32
@sgtl5000_pcm_hw_params._entry_ptr = internal global ptr @sgtl5000_pcm_hw_params._entry, section ".printk_index", align 4
@sgtl5000_set_clock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.134, ptr @.str.4, i32 948, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"frame rate %d not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sgtl5000_set_clock\00", [45 x i8] zeroinitializer }, align 32
@sgtl5000_set_clock._entry_ptr = internal global ptr @sgtl5000_set_clock._entry, section ".printk_index", align 4
@sgtl5000_set_clock._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.134, ptr @.str.4, i32 977, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"PLL not supported in slave mode\0A\00", [63 x i8] zeroinitializer }, align 32
@sgtl5000_set_clock._entry_ptr.137 = internal global ptr @sgtl5000_set_clock._entry.135, section ".printk_index", align 4
@sgtl5000_set_clock._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.134, ptr @.str.4, i32 980, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"%d ratio is not supported. SYS_MCLK needs to be 256, 384 or 512 * fs\0A\00", [58 x i8] zeroinitializer }, align 32
@sgtl5000_set_clock._entry_ptr.140 = internal global ptr @sgtl5000_set_clock._entry.138, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.141 = internal global [52 x i64] [i64 50, i64 32, i64 0, i64 2, i64 4, i64 6, i64 10, i64 14, i64 16, i64 20, i64 32, i64 34, i64 36, i64 38, i64 40, i64 42, i64 44, i64 46, i64 48, i64 50, i64 52, i64 54, i64 58, i64 60, i64 256, i64 258, i64 260, i64 262, i64 264, i64 266, i64 268, i64 270, i64 272, i64 278, i64 280, i64 282, i64 284, i64 286, i64 288, i64 290, i64 292, i64 294, i64 296, i64 298, i64 300, i64 302, i64 304, i64 306, i64 308, i64 310, i64 312, i64 314]
@__sancov_gen_cov_switch_values.142 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 14, i64 54]
@__sancov_gen_cov_switch_values.143 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.144 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.145 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.146 = internal global [4 x i64] [i64 2, i64 16, i64 4096, i64 16384]
@__sancov_gen_cov_switch_values.147 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.148 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 768]
@__sancov_gen_cov_switch_values.149 = internal global [6 x i64] [i64 4, i64 32, i64 8000, i64 11025, i64 16000, i64 22050]
@__sancov_gen_cov_switch_values.150 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.151 = internal global [6 x i64] [i64 4, i64 32, i64 32000, i64 44100, i64 48000, i64 96000]
@__sancov_gen_cov_switch_values.152 = internal global [5 x i64] [i64 3, i64 32, i64 256, i64 384, i64 512]
@__sancov_gen_cov_switch_values.153 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"sgtl5000_i2c_driver\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1819, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1821, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant [16 x i8] c"sgtl5000_dt_ids\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1813, i32 34 }
@___asan_gen_.163 = private unnamed_addr constant [12 x i8] c"sgtl5000_id\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1806, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [16 x i8] c"sgtl5000_regmap\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1542, i32 35 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1601, i32 21 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1604, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1615, i32 36 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1622, i32 3 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1632, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1638, i32 3 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1645, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1653, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1660, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1674, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1683, i32 4 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1699, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1703, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1712, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1716, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1722, i32 4 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1738, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1746, i32 4 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1753, i32 5 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1762, i32 32 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1769, i32 32 }
@___asan_gen_.295 = private unnamed_addr constant [16 x i8] c"sgtl5000_driver\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1525, i32 46 }
@___asan_gen_.298 = private unnamed_addr constant [13 x i8] c"sgtl5000_dai\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1169, i32 34 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1430, i32 46 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 104, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 105, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant [22 x i8] c"sgtl5000_reg_defaults\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 42, i32 33 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1576, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant [22 x i8] c"sgtl5000_snd_controls\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 706, i32 38 }
@___asan_gen_.325 = private unnamed_addr constant [21 x i8] c"sgtl5000_dapm_routes\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 476, i32 40 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 710, i32 11 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 718, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 719, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [22 x i8] c"capture_6db_attenuate\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 680, i32 14 }
@___asan_gen_.341 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 722, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 723, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 725, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant [17 x i8] c"headphone_volume\00", align 1
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 695, i32 14 }
@___asan_gen_.356 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 730, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 732, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 735, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant [13 x i8] c"mic_gain_tlv\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 683, i32 14 }
@___asan_gen_.371 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 738, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant [15 x i8] c"lineout_volume\00", align 1
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 698, i32 14 }
@___asan_gen_.378 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 744, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 746, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant [11 x i8] c"dap_volume\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 689, i32 14 }
@___asan_gen_.389 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 749, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 752, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 753, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant [20 x i8] c".compoundliteral.86\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 754, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant [13 x i8] c"avc_max_gain\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 701, i32 14 }
@___asan_gen_.408 = private unnamed_addr constant [20 x i8] c".compoundliteral.88\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 756, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [20 x i8] c".compoundliteral.90\00", align 1
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 757, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant [14 x i8] c"avc_threshold\00", align 1
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 704, i32 14 }
@___asan_gen_.419 = private unnamed_addr constant [20 x i8] c".compoundliteral.92\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 761, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant [10 x i8] c"bass_band\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 692, i32 14 }
@___asan_gen_.426 = private unnamed_addr constant [20 x i8] c".compoundliteral.94\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 764, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant [20 x i8] c".compoundliteral.96\00", align 1
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 767, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant [20 x i8] c".compoundliteral.98\00", align 1
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 770, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant [21 x i8] c".compoundliteral.100\00", align 1
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 773, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant [21 x i8] c".compoundliteral.102\00", align 1
@___asan_gen_.443 = private unnamed_addr constant [15 x i8] c"avc_thr_db2reg\00", align 1
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 81, i32 18 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 433, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 434, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 436, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 437, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 439, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 443, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 447, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 449, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant [8 x i8] c"adc_mux\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 380, i32 38 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 450, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant [7 x i8] c"hp_mux\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 392, i32 38 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 451, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant [8 x i8] c"dac_mux\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 404, i32 38 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 452, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [8 x i8] c"dap_mux\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 416, i32 38 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 453, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant [11 x i8] c"dapmix_mux\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 428, i32 38 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 454, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 458, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 463, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 467, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 470, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [22 x i8] c"sgtl5000_dapm_widgets\00", align 1
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 432, i32 41 }
@___asan_gen_.521 = private unnamed_addr constant [10 x i8] c"mute_mask\00", align 1
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 291, i32 19 }
@___asan_gen_.524 = private unnamed_addr constant [9 x i8] c"adc_enum\00", align 1
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 376, i32 8 }
@___asan_gen_.527 = private unnamed_addr constant [13 x i8] c"adc_mux_text\00", align 1
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 372, i32 20 }
@___asan_gen_.530 = private unnamed_addr constant [8 x i8] c"hp_enum\00", align 1
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 388, i32 8 }
@___asan_gen_.533 = private unnamed_addr constant [12 x i8] c"hp_mux_text\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 384, i32 20 }
@___asan_gen_.536 = private unnamed_addr constant [9 x i8] c"dac_enum\00", align 1
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 400, i32 8 }
@___asan_gen_.539 = private unnamed_addr constant [13 x i8] c"dac_mux_text\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 396, i32 20 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 397, i32 9 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 397, i32 16 }
@___asan_gen_.548 = private unnamed_addr constant [9 x i8] c"dap_enum\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 412, i32 8 }
@___asan_gen_.551 = private unnamed_addr constant [13 x i8] c"dap_mux_text\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 408, i32 20 }
@___asan_gen_.554 = private unnamed_addr constant [12 x i8] c"dapmix_enum\00", align 1
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 424, i32 8 }
@___asan_gen_.557 = private unnamed_addr constant [16 x i8] c"dapmix_mux_text\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 420, i32 20 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1314, i32 3 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1321, i32 3 }
@___asan_gen_.575 = private unnamed_addr constant [15 x i8] c"vol_quot_table\00", align 1
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1271, i32 17 }
@___asan_gen_.578 = private unnamed_addr constant [13 x i8] c"sgtl5000_ops\00", align 1
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1161, i32 37 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 1060, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 947, i32 3 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 976, i32 4 }
@___asan_gen_.605 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.608 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.609 = private constant [31 x i8] c"../sound/soc/codecs/sgtl5000.c\00", align 1
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.609, i32 978, i32 4 }
@llvm.compiler.used = appending global [195 x ptr] [ptr @__UNIQUE_ID_author313, ptr @__UNIQUE_ID_description312, ptr @__UNIQUE_ID_file314, ptr @__UNIQUE_ID_license315, ptr @__exitcall_sgtl5000_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_sgtl5000__311_1829_sgtl5000_i2c_driver_init6, ptr @sgtl5000_fill_defaults._entry, ptr @sgtl5000_fill_defaults._entry_ptr, ptr @sgtl5000_i2c_driver_exit, ptr @sgtl5000_i2c_probe._entry, ptr @sgtl5000_i2c_probe._entry.11, ptr @sgtl5000_i2c_probe._entry.14, ptr @sgtl5000_i2c_probe._entry.17, ptr @sgtl5000_i2c_probe._entry.21, ptr @sgtl5000_i2c_probe._entry.24, ptr @sgtl5000_i2c_probe._entry.27, ptr @sgtl5000_i2c_probe._entry.30, ptr @sgtl5000_i2c_probe._entry.33, ptr @sgtl5000_i2c_probe._entry.36, ptr @sgtl5000_i2c_probe._entry.41, ptr @sgtl5000_i2c_probe._entry.45, ptr @sgtl5000_i2c_probe._entry.49, ptr @sgtl5000_i2c_probe._entry.8, ptr @sgtl5000_i2c_probe._entry_ptr, ptr @sgtl5000_i2c_probe._entry_ptr.10, ptr @sgtl5000_i2c_probe._entry_ptr.13, ptr @sgtl5000_i2c_probe._entry_ptr.16, ptr @sgtl5000_i2c_probe._entry_ptr.20, ptr @sgtl5000_i2c_probe._entry_ptr.23, ptr @sgtl5000_i2c_probe._entry_ptr.26, ptr @sgtl5000_i2c_probe._entry_ptr.29, ptr @sgtl5000_i2c_probe._entry_ptr.32, ptr @sgtl5000_i2c_probe._entry_ptr.35, ptr @sgtl5000_i2c_probe._entry_ptr.38, ptr @sgtl5000_i2c_probe._entry_ptr.43, ptr @sgtl5000_i2c_probe._entry_ptr.47, ptr @sgtl5000_i2c_probe._entry_ptr.51, ptr @sgtl5000_pcm_hw_params._entry, ptr @sgtl5000_pcm_hw_params._entry_ptr, ptr @sgtl5000_set_clock._entry, ptr @sgtl5000_set_clock._entry.135, ptr @sgtl5000_set_clock._entry.138, ptr @sgtl5000_set_clock._entry_ptr, ptr @sgtl5000_set_clock._entry_ptr.137, ptr @sgtl5000_set_clock._entry_ptr.140, ptr @sgtl5000_set_power_regs._entry, ptr @sgtl5000_set_power_regs._entry.128, ptr @sgtl5000_set_power_regs._entry_ptr, ptr @sgtl5000_set_power_regs._entry_ptr.130, ptr @sgtl5000_i2c_driver, ptr @.str, ptr @sgtl5000_dt_ids, ptr @sgtl5000_id, ptr @sgtl5000_i2c_probe._key, ptr @sgtl5000_regmap, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.19, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @.str.42, ptr @.str.44, ptr @.str.46, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @sgtl5000_driver, ptr @sgtl5000_dai, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @sgtl5000_reg_defaults, ptr @.str.57, ptr @.str.58, ptr @sgtl5000_snd_controls, ptr @sgtl5000_dapm_routes, ptr @.str.59, ptr @.str.60, ptr @.compoundliteral, ptr @.str.61, ptr @capture_6db_attenuate, ptr @.compoundliteral.62, ptr @.str.63, ptr @.compoundliteral.64, ptr @.str.65, ptr @.compoundliteral.66, ptr @.str.67, ptr @headphone_volume, ptr @.compoundliteral.68, ptr @.str.69, ptr @.compoundliteral.70, ptr @.str.71, ptr @.compoundliteral.72, ptr @.str.73, ptr @mic_gain_tlv, ptr @.compoundliteral.74, ptr @.str.75, ptr @lineout_volume, ptr @.compoundliteral.76, ptr @.str.77, ptr @.compoundliteral.78, ptr @.str.79, ptr @dap_volume, ptr @.compoundliteral.80, ptr @.str.81, ptr @.compoundliteral.82, ptr @.str.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.compoundliteral.86, ptr @.str.87, ptr @avc_max_gain, ptr @.compoundliteral.88, ptr @.str.89, ptr @.compoundliteral.90, ptr @.str.91, ptr @avc_threshold, ptr @.compoundliteral.92, ptr @.str.93, ptr @bass_band, ptr @.compoundliteral.94, ptr @.str.95, ptr @.compoundliteral.96, ptr @.str.97, ptr @.compoundliteral.98, ptr @.str.99, ptr @.compoundliteral.100, ptr @.str.101, ptr @.compoundliteral.102, ptr @avc_thr_db2reg, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @adc_mux, ptr @.str.112, ptr @hp_mux, ptr @.str.113, ptr @dac_mux, ptr @.str.114, ptr @dap_mux, ptr @.str.115, ptr @dapmix_mux, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @sgtl5000_dapm_widgets, ptr @vag_and_mute_control.mute_mask, ptr @adc_enum, ptr @adc_mux_text, ptr @hp_enum, ptr @hp_mux_text, ptr @dac_enum, ptr @dac_mux_text, ptr @.str.124, ptr @.str.125, ptr @dap_enum, ptr @dap_mux_text, ptr @dapmix_enum, ptr @dapmix_mux_text, ptr @.str.126, ptr @.str.127, ptr @.str.129, ptr @vol_quot_table, ptr @sgtl5000_ops, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.136, ptr @.str.139], section "llvm.metadata"
@0 = internal global [167 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_regmap to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_i2c_probe._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_driver to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_reg_defaults to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_fill_defaults._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_snd_controls to i32), i32 1104, i32 1376, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_dapm_routes to i32), i32 1040, i32 1312, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @capture_6db_attenuate to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @headphone_volume to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mic_gain_tlv to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lineout_volume to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dap_volume to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.86 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_max_gain to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.88 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.90 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_threshold to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.92 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bass_band to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.94 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.96 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.98 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.100 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @avc_thr_db2reg to i32), i32 194, i32 256, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dap_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapmix_mux to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_dapm_widgets to i32), i32 3060, i32 3808, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vag_and_mute_control.mute_mask to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hp_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dac_mux_text to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dap_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dap_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapmix_enum to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dapmix_mux_text to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_set_power_regs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_set_power_regs._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vol_quot_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_pcm_hw_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_set_clock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_set_clock._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgtl5000_set_clock._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sgtl5000_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @sgtl5000_i2c_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sgtl5000_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @i2c_del_driver(ptr noundef nonnull @sgtl5000_i2c_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgtl5000_i2c_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %reg = alloca i32, align 4
  %value = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #10
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !299
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %value) #10
  %3 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %value, align 4, !annotation !299
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 76, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %arrayidx1.i = getelementptr %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 3, i32 0
  %5 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str.55, ptr %arrayidx1.i, align 4
  %arrayidx1.1.i = getelementptr %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %arrayidx1.1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.56, ptr %arrayidx1.1.i, align 4
  %arrayidx1.2.i = getelementptr %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %arrayidx1.2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.54, ptr %arrayidx1.2.i, align 4
  %call2.i = tail call ptr @regulator_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.54) #10
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end
  %cmp5.i = icmp eq ptr %call2.i, inttoptr (i32 -517 to ptr)
  br i1 %cmp5.i, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end7.i_crit_edge

if.then.i.if.end7.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @regulator_put(ptr noundef %call2.i) #10
  br label %if.end7.i

if.end7.i:                                        ; preds = %if.else.i, %if.then.i.if.end7.i_crit_edge
  %external_vddd.0.i = phi i32 [ 2, %if.then.i.if.end7.i_crit_edge ], [ 3, %if.else.i ]
  %num_supplies.i = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %external_vddd.0.i, ptr %num_supplies.i, align 4
  %call11.i = tail call i32 @regulator_bulk_get(ptr noundef %dev, i32 noundef %external_vddd.0.i, ptr noundef %arrayidx1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool.not.i, label %if.end13.i, label %if.end7.i.cleanup_crit_edge

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end13.i:                                       ; preds = %if.end7.i
  %9 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_supplies.i, align 4
  %call17.i = tail call i32 @regulator_bulk_enable(i32 noundef %10, ptr noundef %arrayidx1.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end5, label %if.else20.i

if.else20.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_supplies.i, align 4
  tail call void @regulator_bulk_free(i32 noundef %12, ptr noundef %arrayidx1.i) #10
  br label %cleanup

if.end5:                                          ; preds = %if.end13.i
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #10
  %call6 = tail call ptr @__devm_regmap_init_i2c(ptr noundef %client, ptr noundef nonnull @sgtl5000_regmap, ptr noundef nonnull @sgtl5000_i2c_probe._key, ptr noundef nonnull @.str.1) #10
  %regmap = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call6, ptr %regmap, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end13

if.then9:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %call6 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %14) #13
  br label %disable_regs

if.end13:                                         ; preds = %if.end5
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #10
  %mclk = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %mclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call15, ptr %mclk, align 4
  %cmp.i305 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i305, label %if.then18, label %if.end25

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %call15 to i32
  %cmp = icmp eq ptr %call15, inttoptr (i32 -2 to ptr)
  %spec.store.select = select i1 %cmp, i32 -517, i32 %16
  %call24 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %spec.store.select, ptr noundef nonnull @.str.7) #10
  br label %disable_regs

if.end25:                                         ; preds = %if.end13
  %call27 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %call15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end34, label %do.end32

do.end32:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call27) #13
  br label %disable_regs

if.end34:                                         ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #10
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call36 = call i32 @regmap_read(ptr noundef %19, i32 noundef 0, ptr noundef nonnull %reg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call36) #13
  br label %disable_clk

if.end43:                                         ; preds = %if.end34
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg, align 4
  %22 = and i32 %21, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 40960, i32 %22)
  %cmp44.not = icmp eq i32 %22, 40960
  br i1 %cmp44.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %21) #13
  br label %disable_clk

if.end50:                                         ; preds = %if.end43
  %and51 = and i32 %21, 255
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %and51) #13
  %revision = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 7
  %23 = ptrtoint ptr %revision to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and51, ptr %revision, align 4
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call58 = call i32 @regmap_write(ptr noundef %25, i32 noundef 4, i32 noundef 8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end50.if.end65_crit_edge, label %do.end63

if.end50.if.end65_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

do.end63:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call58) #13
  br label %if.end65

if.end65:                                         ; preds = %do.end63, %if.end50.if.end65_crit_edge
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call67 = call i32 @regmap_write(ptr noundef %27, i32 noundef 36, i32 noundef 307) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end74, label %do.end72

do.end72:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %call67) #13
  br label %disable_clk

if.end74:                                         ; preds = %if.end65
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call76 = call i32 @regmap_read(ptr noundef %29, i32 noundef 48, ptr noundef nonnull %value) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %if.end83, label %do.end81

do.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.28, i32 noundef %call76) #13
  br label %disable_clk

if.end83:                                         ; preds = %if.end74
  %30 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %value, align 4
  %and84 = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and84)
  %tobool85.not = icmp eq i32 %and84, 0
  br i1 %tobool85.not, label %if.end83.if.end96_crit_edge, label %if.then86

if.end83.if.end96_crit_edge:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

if.then86:                                        ; preds = %if.end83
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call.i306 = call i32 @regmap_update_bits_base(ptr noundef %33, i32 noundef 48, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i306)
  %tobool89.not = icmp eq i32 %call.i306, 0
  br i1 %tobool89.not, label %if.end95, label %do.end93

do.end93:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31, i32 noundef %call.i306) #13
  br label %disable_clk

if.end95:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef 500) #10
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %if.end83.if.end96_crit_edge
  %34 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_supplies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp97 = icmp slt i32 %35, 3
  br i1 %cmp97, label %if.then98, label %if.else

if.then98:                                        ; preds = %if.end96
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call.i307 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 38, i32 noundef 15, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i307)
  %tobool101.not = icmp eq i32 %call.i307, 0
  br i1 %tobool101.not, label %if.then98.if.end107_crit_edge, label %do.end105

if.then98.if.end107_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

do.end105:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.34, i32 noundef %call.i307) #13
  br label %if.end107

if.end107:                                        ; preds = %do.end105, %if.then98.if.end107_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.37) #13
  br label %if.end127

if.else:                                          ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sgtl5000_i2c_probe.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sgtl5000_i2c_probe, %if.then122)) #10
          to label %if.end127 [label %if.then122], !srcloc !300

if.then122:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sgtl5000_i2c_probe.__UNIQUE_ID_ddebug310, ptr noundef %dev, ptr noundef nonnull @.str.40) #10
  br label %if.end127

if.end127:                                        ; preds = %if.then122, %if.else, %if.end107
  %ana_pwr.0 = phi i32 [ 29280, %if.end107 ], [ 16480, %if.then122 ], [ 16480, %if.else ]
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call130 = call i32 @regmap_write(ptr noundef %39, i32 noundef 48, i32 noundef %ana_pwr.0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call130)
  %tobool131.not = icmp eq i32 %call130, 0
  br i1 %tobool131.not, label %if.end127.if.end138_crit_edge, label %do.end135

if.end127.if.end138_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end138

do.end135:                                        ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %call130, i32 noundef %ana_pwr.0) #13
  br label %if.end138

if.end138:                                        ; preds = %do.end135, %if.end127.if.end138_crit_edge
  %tobool139.not = icmp eq ptr %2, null
  br i1 %tobool139.not, label %if.end138.if.end177_crit_edge, label %if.then140

if.end138.if.end177_crit_edge:                    ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end177

if.then140:                                       ; preds = %if.end138
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.44, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool142.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool142.not, label %if.then143, label %if.else155

if.then143:                                       ; preds = %if.then140
  %40 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %value, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values)
  switch i32 %41, label %sw.default [
    i32 0, label %sw.bb
    i32 2, label %sw.bb144
    i32 4, label %sw.bb146
    i32 8, label %sw.bb148
  ]

sw.bb:                                            ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  %micbias_resistor = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 8
  %43 = ptrtoint ptr %micbias_resistor to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %micbias_resistor, align 4
  br label %if.end157

sw.bb144:                                         ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  %micbias_resistor145 = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 8
  %44 = ptrtoint ptr %micbias_resistor145 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %micbias_resistor145, align 4
  br label %if.end157

sw.bb146:                                         ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  %micbias_resistor147 = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 8
  %45 = ptrtoint ptr %micbias_resistor147 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 2, ptr %micbias_resistor147, align 4
  br label %if.end157

sw.bb148:                                         ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  %micbias_resistor149 = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 8
  %46 = ptrtoint ptr %micbias_resistor149 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 3, ptr %micbias_resistor149, align 4
  br label %if.end157

sw.default:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #12
  %micbias_resistor150 = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 8
  %47 = ptrtoint ptr %micbias_resistor150 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 2, ptr %micbias_resistor150, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #13
  br label %if.end157

if.else155:                                       ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #12
  %micbias_resistor156 = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 8
  %48 = ptrtoint ptr %micbias_resistor156 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %micbias_resistor156, align 4
  br label %if.end157

if.end157:                                        ; preds = %if.else155, %sw.default, %sw.bb148, %sw.bb146, %sw.bb144, %sw.bb
  %call.i.i308 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %2, ptr noundef nonnull @.str.48, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i308)
  %tobool159.not = icmp sgt i32 %call.i.i308, -1
  br i1 %tobool159.not, label %if.then160, label %if.else174

if.then160:                                       ; preds = %if.end157
  %49 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %value, align 4
  %51 = add i32 %50, -1250
  call void @__sanitizer_cov_trace_const_cmp4(i32 1751, i32 %51)
  %52 = icmp ult i32 %51, 1751
  br i1 %52, label %if.then165, label %if.else167

if.then165:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #12
  %div.lhs.trunc = trunc i32 %50 to i16
  %div314 = udiv i16 %div.lhs.trunc, 250
  %53 = trunc i16 %div314 to i8
  %conv166 = add nsw i8 %53, -5
  %micbias_voltage = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 9
  %54 = ptrtoint ptr %micbias_voltage to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv166, ptr %micbias_voltage, align 1
  br label %if.end177

if.else167:                                       ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #12
  %micbias_voltage168 = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 9
  %55 = ptrtoint ptr %micbias_voltage168 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %micbias_voltage168, align 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.50) #13
  br label %if.end177

if.else174:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #12
  %micbias_voltage175 = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 9
  %56 = ptrtoint ptr %micbias_voltage175 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %micbias_voltage175, align 1
  br label %if.end177

if.end177:                                        ; preds = %if.else174, %if.else167, %if.then165, %if.end138.if.end177_crit_edge
  %lrclk_strength = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 10
  %57 = ptrtoint ptr %lrclk_strength to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %lrclk_strength, align 2
  %call.i.i309 = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.52, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i309)
  %tobool179.not = icmp sgt i32 %call.i.i309, -1
  br i1 %tobool179.not, label %if.then180, label %if.end177.if.end187_crit_edge

if.end177.if.end187_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187

if.then180:                                       ; preds = %if.end177
  %58 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %59)
  %cmp181 = icmp ugt i32 %59, 3
  br i1 %cmp181, label %if.then183, label %if.then180.if.end184_crit_edge

if.then180.if.end184_crit_edge:                   ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end184

if.then183:                                       ; preds = %if.then180
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %value, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.then183, %if.then180.if.end184_crit_edge
  %61 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %value, align 4
  %conv185 = trunc i32 %62 to i8
  %63 = ptrtoint ptr %lrclk_strength to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %conv185, ptr %lrclk_strength, align 2
  br label %if.end187

if.end187:                                        ; preds = %if.end184, %if.end177.if.end187_crit_edge
  %sclk_strength = getelementptr inbounds %struct.sgtl5000_priv, ptr %call.i, i32 0, i32 11
  %64 = ptrtoint ptr %sclk_strength to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %sclk_strength, align 1
  %call.i.i310 = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.53, ptr noundef nonnull %value, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i310)
  %tobool189.not = icmp sgt i32 %call.i.i310, -1
  br i1 %tobool189.not, label %if.then190, label %if.end187.if.end197_crit_edge

if.end187.if.end197_crit_edge:                    ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end197

if.then190:                                       ; preds = %if.end187
  %65 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %66)
  %cmp191 = icmp ugt i32 %66, 3
  br i1 %cmp191, label %if.then193, label %if.then190.if.end194_crit_edge

if.then190.if.end194_crit_edge:                   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end194

if.then193:                                       ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 1, ptr %value, align 4
  br label %if.end194

if.end194:                                        ; preds = %if.then193, %if.then190.if.end194_crit_edge
  %68 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %value, align 4
  %conv195 = trunc i32 %69 to i8
  %70 = ptrtoint ptr %sclk_strength to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv195, ptr %sclk_strength, align 1
  br label %if.end197

if.end197:                                        ; preds = %if.end194, %if.end187.if.end197_crit_edge
  call fastcc void @sgtl5000_fill_defaults(ptr noundef %client)
  %call199 = call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @sgtl5000_driver, ptr noundef nonnull @sgtl5000_dai, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call199)
  %tobool200.not = icmp eq i32 %call199, 0
  br i1 %tobool200.not, label %if.end197.cleanup_crit_edge, label %if.end197.disable_clk_crit_edge

if.end197.disable_clk_crit_edge:                  ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %disable_clk

if.end197.cleanup_crit_edge:                      ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

disable_clk:                                      ; preds = %if.end197.disable_clk_crit_edge, %do.end93, %do.end81, %do.end72, %do.end48, %do.end41
  %ret.0 = phi i32 [ %call36, %do.end41 ], [ -19, %do.end48 ], [ %call67, %do.end72 ], [ %call76, %do.end81 ], [ %call.i306, %do.end93 ], [ %call199, %if.end197.disable_clk_crit_edge ]
  %71 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %mclk, align 4
  call void @clk_disable(ptr noundef %72) #10
  call void @clk_unprepare(ptr noundef %72) #10
  br label %disable_regs

disable_regs:                                     ; preds = %disable_clk, %do.end32, %if.then18, %if.then9
  %ret.1 = phi i32 [ %14, %if.then9 ], [ %spec.store.select, %if.then18 ], [ %call27, %do.end32 ], [ %ret.0, %disable_clk ]
  %73 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_supplies.i, align 4
  %call205 = call i32 @regulator_bulk_disable(i32 noundef %74, ptr noundef %arrayidx1.i) #10
  %75 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_supplies.i, align 4
  call void @regulator_bulk_free(i32 noundef %76, ptr noundef %arrayidx1.i) #10
  br label %cleanup

cleanup:                                          ; preds = %disable_regs, %if.end197.cleanup_crit_edge, %if.else20.i, %if.end7.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %disable_regs ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end197.cleanup_crit_edge ], [ %call17.i, %if.else20.i ], [ %call11.i, %if.end7.i.cleanup_crit_edge ], [ -517, %if.then.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %value) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgtl5000_i2c_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %mclk = getelementptr inbounds %struct.sgtl5000_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mclk, align 4
  tail call void @clk_disable(ptr noundef %3) #10
  tail call void @clk_unprepare(ptr noundef %3) #10
  %num_supplies = getelementptr inbounds %struct.sgtl5000_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.sgtl5000_priv, ptr %1, i32 0, i32 3
  %call1 = tail call i32 @regulator_bulk_disable(i32 noundef %5, ptr noundef %supplies) #10
  %6 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_supplies, align 4
  tail call void @regulator_bulk_free(i32 noundef %7, ptr noundef %supplies) #10
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_i2c(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %clk) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sgtl5000_fill_defaults(ptr noundef %client) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regmap = getelementptr inbounds %struct.sgtl5000_priv, ptr %1, i32 0, i32 5
  %dev = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.010 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [35 x %struct.reg_default], ptr @sgtl5000_reg_defaults, i32 0, i32 %i.010
  %def = getelementptr [35 x %struct.reg_default], ptr @sgtl5000_reg_defaults, i32 0, i32 %i.010, i32 1
  %2 = ptrtoint ptr %def to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %def, align 4
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef %5, i32 noundef %3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %call2, i32 noundef %5, i32 noundef %3) #13
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.010, 1
  %exitcond.not = icmp eq i32 %inc, 35
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_bulk_free(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regulator_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sgtl5000_readable(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.141)
  switch i32 %reg, label %sw.default [
    i32 0, label %entry.return_crit_edge
    i32 2, label %entry.return_crit_edge1
    i32 4, label %entry.return_crit_edge2
    i32 6, label %entry.return_crit_edge3
    i32 10, label %entry.return_crit_edge4
    i32 14, label %entry.return_crit_edge5
    i32 16, label %entry.return_crit_edge6
    i32 20, label %entry.return_crit_edge7
    i32 32, label %entry.return_crit_edge8
    i32 34, label %entry.return_crit_edge9
    i32 36, label %entry.return_crit_edge10
    i32 38, label %entry.return_crit_edge11
    i32 40, label %entry.return_crit_edge12
    i32 42, label %entry.return_crit_edge13
    i32 44, label %entry.return_crit_edge14
    i32 46, label %entry.return_crit_edge15
    i32 48, label %entry.return_crit_edge16
    i32 50, label %entry.return_crit_edge17
    i32 52, label %entry.return_crit_edge18
    i32 54, label %entry.return_crit_edge19
    i32 60, label %entry.return_crit_edge20
    i32 58, label %entry.return_crit_edge21
    i32 256, label %entry.return_crit_edge22
    i32 258, label %entry.return_crit_edge23
    i32 260, label %entry.return_crit_edge24
    i32 262, label %entry.return_crit_edge25
    i32 264, label %entry.return_crit_edge26
    i32 266, label %entry.return_crit_edge27
    i32 268, label %entry.return_crit_edge28
    i32 270, label %entry.return_crit_edge29
    i32 272, label %entry.return_crit_edge30
    i32 278, label %entry.return_crit_edge31
    i32 280, label %entry.return_crit_edge32
    i32 282, label %entry.return_crit_edge33
    i32 284, label %entry.return_crit_edge34
    i32 286, label %entry.return_crit_edge35
    i32 288, label %entry.return_crit_edge36
    i32 290, label %entry.return_crit_edge37
    i32 292, label %entry.return_crit_edge38
    i32 294, label %entry.return_crit_edge39
    i32 296, label %entry.return_crit_edge40
    i32 298, label %entry.return_crit_edge41
    i32 300, label %entry.return_crit_edge42
    i32 302, label %entry.return_crit_edge43
    i32 304, label %entry.return_crit_edge44
    i32 306, label %entry.return_crit_edge45
    i32 308, label %entry.return_crit_edge46
    i32 310, label %entry.return_crit_edge47
    i32 312, label %entry.return_crit_edge48
    i32 314, label %entry.return_crit_edge49
  ]

entry.return_crit_edge49:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge47:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge46:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge43:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge42:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge38:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge37:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge36:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge33:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge32:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge31:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge30:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge29:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge28:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge27:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge26:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge25:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge24:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge21:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge20:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge16:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge5:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge4:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge3:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.default, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2, %entry.return_crit_edge3, %entry.return_crit_edge4, %entry.return_crit_edge5, %entry.return_crit_edge6, %entry.return_crit_edge7, %entry.return_crit_edge8, %entry.return_crit_edge9, %entry.return_crit_edge10, %entry.return_crit_edge11, %entry.return_crit_edge12, %entry.return_crit_edge13, %entry.return_crit_edge14, %entry.return_crit_edge15, %entry.return_crit_edge16, %entry.return_crit_edge17, %entry.return_crit_edge18, %entry.return_crit_edge19, %entry.return_crit_edge20, %entry.return_crit_edge21, %entry.return_crit_edge22, %entry.return_crit_edge23, %entry.return_crit_edge24, %entry.return_crit_edge25, %entry.return_crit_edge26, %entry.return_crit_edge27, %entry.return_crit_edge28, %entry.return_crit_edge29, %entry.return_crit_edge30, %entry.return_crit_edge31, %entry.return_crit_edge32, %entry.return_crit_edge33, %entry.return_crit_edge34, %entry.return_crit_edge35, %entry.return_crit_edge36, %entry.return_crit_edge37, %entry.return_crit_edge38, %entry.return_crit_edge39, %entry.return_crit_edge40, %entry.return_crit_edge41, %entry.return_crit_edge42, %entry.return_crit_edge43, %entry.return_crit_edge44, %entry.return_crit_edge45, %entry.return_crit_edge46, %entry.return_crit_edge47, %entry.return_crit_edge48, %entry.return_crit_edge49
  %retval.0 = phi i1 [ false, %sw.default ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ], [ true, %entry.return_crit_edge3 ], [ true, %entry.return_crit_edge4 ], [ true, %entry.return_crit_edge5 ], [ true, %entry.return_crit_edge6 ], [ true, %entry.return_crit_edge7 ], [ true, %entry.return_crit_edge8 ], [ true, %entry.return_crit_edge9 ], [ true, %entry.return_crit_edge10 ], [ true, %entry.return_crit_edge11 ], [ true, %entry.return_crit_edge12 ], [ true, %entry.return_crit_edge13 ], [ true, %entry.return_crit_edge14 ], [ true, %entry.return_crit_edge15 ], [ true, %entry.return_crit_edge16 ], [ true, %entry.return_crit_edge17 ], [ true, %entry.return_crit_edge18 ], [ true, %entry.return_crit_edge19 ], [ true, %entry.return_crit_edge20 ], [ true, %entry.return_crit_edge21 ], [ true, %entry.return_crit_edge22 ], [ true, %entry.return_crit_edge23 ], [ true, %entry.return_crit_edge24 ], [ true, %entry.return_crit_edge25 ], [ true, %entry.return_crit_edge26 ], [ true, %entry.return_crit_edge27 ], [ true, %entry.return_crit_edge28 ], [ true, %entry.return_crit_edge29 ], [ true, %entry.return_crit_edge30 ], [ true, %entry.return_crit_edge31 ], [ true, %entry.return_crit_edge32 ], [ true, %entry.return_crit_edge33 ], [ true, %entry.return_crit_edge34 ], [ true, %entry.return_crit_edge35 ], [ true, %entry.return_crit_edge36 ], [ true, %entry.return_crit_edge37 ], [ true, %entry.return_crit_edge38 ], [ true, %entry.return_crit_edge39 ], [ true, %entry.return_crit_edge40 ], [ true, %entry.return_crit_edge41 ], [ true, %entry.return_crit_edge42 ], [ true, %entry.return_crit_edge43 ], [ true, %entry.return_crit_edge44 ], [ true, %entry.return_crit_edge45 ], [ true, %entry.return_crit_edge46 ], [ true, %entry.return_crit_edge47 ], [ true, %entry.return_crit_edge48 ], [ true, %entry.return_crit_edge49 ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @sgtl5000_volatile(ptr nocapture noundef readnone %dev, i32 noundef %reg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %reg to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.142)
  switch i32 %reg, label %sw.epilog [
    i32 0, label %entry.return_crit_edge
    i32 14, label %entry.return_crit_edge1
    i32 54, label %entry.return_crit_edge2
  ]

entry.return_crit_edge2:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge1:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.epilog:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge, %entry.return_crit_edge1, %entry.return_crit_edge2
  %retval.0 = phi i1 [ false, %sw.epilog ], [ true, %entry.return_crit_edge ], [ true, %entry.return_crit_edge1 ], [ true, %entry.return_crit_edge2 ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgtl5000_probe(ptr noundef %component) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %consumer.i = getelementptr inbounds %struct.sgtl5000_priv, ptr %3, i32 0, i32 3, i32 0, i32 1
  %4 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %consumer.i, align 4
  %call1.i = tail call i32 @regulator_get_voltage(ptr noundef %5) #10
  %consumer4.i = getelementptr %struct.sgtl5000_priv, ptr %3, i32 0, i32 3, i32 1, i32 1
  %6 = ptrtoint ptr %consumer4.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %consumer4.i, align 4
  %call5.i = tail call i32 @regulator_get_voltage(ptr noundef %7) #10
  %num_supplies.i = getelementptr inbounds %struct.sgtl5000_priv, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %num_supplies.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_supplies.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i = icmp sgt i32 %9, 2
  br i1 %cmp.i, label %cond.true.i, label %entry.cond.end.i_crit_edge

entry.cond.end.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %consumer8.i = getelementptr %struct.sgtl5000_priv, ptr %3, i32 0, i32 3, i32 2, i32 1
  %10 = ptrtoint ptr %consumer8.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %consumer8.i, align 4
  %call9.i = tail call i32 @regulator_get_voltage(ptr noundef %11) #10
  %phi.bo.i = sdiv i32 %call9.i, 1000
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %entry.cond.end.i_crit_edge
  %cond.i = phi i32 [ %phi.bo.i, %cond.true.i ], [ 1200, %entry.cond.end.i_crit_edge ]
  %div.i = sdiv i32 %call1.i, 1000
  %div10.i = sdiv i32 %call5.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call1.i)
  %cmp12.i = icmp slt i32 %call1.i, 1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000, i32 %call5.i)
  %cmp13.i = icmp slt i32 %call5.i, 1000
  %or.cond.i = select i1 %cmp12.i, i1 true, i1 %cmp13.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp15.i = icmp slt i32 %cond.i, 0
  %or.cond166.i = select i1 %or.cond.i, i1 true, i1 %cmp15.i
  br i1 %or.cond166.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.126) #13
  br label %cleanup

if.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600999, i32 %call1.i)
  %cmp16.i = icmp ugt i32 %call1.i, 3600999
  call void @__sanitizer_cov_trace_const_cmp4(i32 3600999, i32 %call5.i)
  %cmp18.i = icmp ugt i32 %call5.i, 3600999
  %or.cond167.i = select i1 %cmp16.i, i1 true, i1 %cmp18.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1980, i32 %cond.i)
  %cmp20.i = icmp ugt i32 %cond.i, 1980
  %or.cond168.i = select i1 %or.cond167.i, i1 true, i1 %cmp20.i
  br i1 %or.cond168.i, label %do.end24.i, label %if.end26.i

do.end24.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.129, i32 noundef %div.i, i32 noundef %div10.i, i32 noundef %cond.i) #13
  br label %cleanup

if.end26.i:                                       ; preds = %if.end.i
  %call27.i = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 48) #10
  %16 = trunc i32 %call27.i to i16
  %call30.i = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3100000, i32 %call5.i)
  %cmp32.i = icmp ult i32 %call5.i, 3100000
  call void @__sanitizer_cov_trace_const_cmp4(i32 3100000, i32 %call1.i)
  %cmp34.i = icmp ult i32 %call1.i, 3100000
  %or.cond169.i = select i1 %cmp32.i, i1 %cmp34.i, i1 false
  br i1 %or.cond169.i, label %if.then36.i, label %if.else.i

if.then36.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #12
  %call37.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 52, i32 noundef 2048, i32 noundef 2048) #10
  %17 = or i16 %16, 18528
  br label %if.end58.i

if.else.i:                                        ; preds = %if.end26.i
  %conv29.i = and i16 %16, -18529
  %18 = or i16 %conv29.i, 16480
  %19 = ptrtoint ptr %consumer.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %consumer.i, align 4
  %21 = ptrtoint ptr %consumer4.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %consumer4.i, align 4
  %call49.i = tail call zeroext i1 @regulator_is_equal(ptr noundef %20, ptr noundef %22) #10
  br i1 %call49.i, label %if.then50.i, label %if.else.i.if.end58.i_crit_edge

if.else.i.if.end58.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58.i

if.then50.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv53.i = and i32 %call30.i, 65439
  %or55.i = or i32 %conv53.i, 96
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.then50.i, %if.else.i.if.end58.i_crit_edge, %if.then36.i
  %ana_pwr.0.i = phi i16 [ %17, %if.then36.i ], [ %18, %if.then50.i ], [ %18, %if.else.i.if.end58.i_crit_edge ]
  %lreg_ctrl.0.i = phi i32 [ %call30.i, %if.then36.i ], [ %or55.i, %if.then50.i ], [ %call30.i, %if.else.i.if.end58.i_crit_edge ]
  %conv59.i = and i32 %lreg_ctrl.0.i, 65535
  %call60.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 38, i32 noundef %conv59.i) #10
  %conv61.i = zext i16 %ana_pwr.0.i to i32
  %call62.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 48, i32 noundef %conv61.i) #10
  %div63180.i = udiv i32 %call1.i, 2000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1602000, i32 %call1.i)
  %cmp64.i = icmp ult i32 %call1.i, 1602000
  br i1 %cmp64.i, label %if.end58.i.if.end74.i_crit_edge, label %if.else67.i

if.end58.i.if.end74.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.else67.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3149999, i32 %call1.i)
  %cmp68.i = icmp ugt i32 %call1.i, 3149999
  br i1 %cmp68.i, label %if.else67.i.if.end74.i_crit_edge, label %if.else71.i

if.else67.i.if.end74.i_crit_edge:                 ; preds = %if.else67.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end74.i

if.else71.i:                                      ; preds = %if.else67.i
  call void @__sanitizer_cov_trace_pc() #12
  %23 = trunc i32 %div63180.i to i16
  %div72.lhs.trunc.i = add nsw i16 %23, -800
  %div72184.i = sdiv i16 %div72.lhs.trunc.i, 25
  %div72.sext.i = sext i16 %div72184.i to i32
  br label %if.end74.i

if.end74.i:                                       ; preds = %if.else71.i, %if.else67.i.if.end74.i_crit_edge, %if.end58.i.if.end74.i_crit_edge
  %vag.0.i = phi i32 [ %div72.sext.i, %if.else71.i ], [ 0, %if.end58.i.if.end74.i_crit_edge ], [ 31, %if.else67.i.if.end74.i_crit_edge ]
  %shl.i = shl nsw i32 %vag.0.i, 4
  %call75.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 40, i32 noundef 496, i32 noundef %shl.i) #10
  %div76181.i = udiv i32 %call5.i, 2000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1602000, i32 %call5.i)
  %cmp77.i = icmp ult i32 %call5.i, 1602000
  br i1 %cmp77.i, label %if.end88.thread.i, label %if.else80.i

if.end88.thread.i:                                ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #12
  %call91172.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 44, i32 noundef 3903, i32 noundef 768) #10
  br label %if.end

if.else80.i:                                      ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3349999, i32 %call5.i)
  %cmp81.i = icmp ugt i32 %call5.i, 3349999
  br i1 %cmp81.i, label %if.end88.thread174.i, label %if.end88.i

if.end88.thread174.i:                             ; preds = %if.else80.i
  call void @__sanitizer_cov_trace_pc() #12
  %call91177.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 44, i32 noundef 3903, i32 noundef 803) #10
  br label %cond.end95.i

if.end88.i:                                       ; preds = %if.else80.i
  %24 = trunc i32 %div76181.i to i16
  %div86.lhs.trunc.i = add nsw i16 %24, -800
  %div86183.i = sdiv i16 %div86.lhs.trunc.i, 25
  %25 = or i16 %div86183.i, 768
  %or90.i = sext i16 %25 to i32
  %call91.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 44, i32 noundef 3903, i32 noundef %or90.i) #10
  %div86.lhs.trunc.off.i = add nsw i16 %24, -776
  call void @__sanitizer_cov_trace_const_cmp2(i16 49, i16 %div86.lhs.trunc.off.i)
  %26 = icmp ult i16 %div86.lhs.trunc.off.i, 49
  br i1 %26, label %if.end88.i.if.end_crit_edge, label %if.end88.i.cond.end95.i_crit_edge

if.end88.i.cond.end95.i_crit_edge:                ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end95.i

if.end88.i.if.end_crit_edge:                      ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

cond.end95.i:                                     ; preds = %if.end88.i.cond.end95.i_crit_edge, %if.end88.thread174.i
  %lo_vag.0179.i = phi i16 [ 35, %if.end88.thread174.i ], [ %div86183.i, %if.end88.i.cond.end95.i_crit_edge ]
  %27 = trunc i32 %vag.0.i to i16
  %div93.lhs.trunc.i = mul nsw i16 %27, 100
  %div93182.i = sdiv i16 %div93.lhs.trunc.i, %lo_vag.0179.i
  %div93.sext.i = sext i16 %div93182.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 42, i16 %div93182.i)
  %cmp101.not.i42 = icmp slt i16 %div93182.i, 42
  br i1 %cmp101.not.i42, label %cond.end95.i.if.end_crit_edge, label %cond.end95.i.for.cond.i_crit_edge

cond.end95.i.for.cond.i_crit_edge:                ; preds = %cond.end95.i
  br label %for.cond.i

cond.end95.i.if.end_crit_edge:                    ; preds = %cond.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %cond.end95.i.for.cond.i_crit_edge
  %i.0186.i43 = phi i32 [ %inc.i, %for.body.i.for.cond.i_crit_edge ], [ 0, %cond.end95.i.for.cond.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.0186.i43, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.cond.i.if.end_crit_edge, label %for.body.i

for.cond.i.if.end_crit_edge:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx99.i = getelementptr [32 x i8], ptr @vol_quot_table, i32 0, i32 %inc.i
  %28 = ptrtoint ptr %arrayidx99.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx99.i, align 1
  %conv100.i = zext i8 %29 to i32
  %cmp101.not.i = icmp slt i32 %div93.sext.i, %conv100.i
  br i1 %cmp101.not.i, label %for.body.i.if.end_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %for.cond.i.if.end_crit_edge, %cond.end95.i.if.end_crit_edge, %if.end88.i.if.end_crit_edge, %if.end88.thread.i
  %lo_vol.0.lcssa.i = phi i32 [ 0, %cond.end95.i.if.end_crit_edge ], [ 0, %if.end88.i.if.end_crit_edge ], [ 0, %if.end88.thread.i ], [ %i.0186.i43, %for.body.i.if.end_crit_edge ], [ 31, %for.cond.i.if.end_crit_edge ]
  %shl106.i = shl nuw nsw i32 %lo_vol.0.lcssa.i, 8
  %or108.i = or i32 %shl106.i, %lo_vol.0.lcssa.i
  %call109.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 46, i32 noundef 7967, i32 noundef %or108.i) #10
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 40, i32 noundef 1, i32 noundef 1) #10
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 60, i32 noundef 0) #10
  %call4 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 2, i32 noundef 96) #10
  %call5 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 14, i32 noundef 524) #10
  %lrclk_strength = getelementptr inbounds %struct.sgtl5000_priv, ptr %3, i32 0, i32 10
  %30 = ptrtoint ptr %lrclk_strength to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %lrclk_strength, align 2
  %conv = zext i8 %31 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %sclk_strength = getelementptr inbounds %struct.sgtl5000_priv, ptr %3, i32 0, i32 11
  %32 = ptrtoint ptr %sclk_strength to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sclk_strength, align 1
  %conv6 = zext i8 %33 to i32
  %shl7 = shl nuw nsw i32 %conv6, 6
  %or = or i32 %shl, %shl7
  %or8 = or i32 %or, 31
  %call11 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 20, i32 noundef %or8) #10
  %call12 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 36, i32 noundef 34, i32 noundef 34) #10
  %micbias_resistor = getelementptr inbounds %struct.sgtl5000_priv, ptr %3, i32 0, i32 8
  %34 = ptrtoint ptr %micbias_resistor to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %micbias_resistor, align 4
  %conv13 = zext i8 %35 to i32
  %shl14 = shl nuw nsw i32 %conv13, 8
  %call15 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 42, i32 noundef 768, i32 noundef %shl14) #10
  %micbias_voltage = getelementptr inbounds %struct.sgtl5000_priv, ptr %3, i32 0, i32 9
  %36 = ptrtoint ptr %micbias_voltage to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %micbias_voltage, align 1
  %conv16 = zext i8 %37 to i32
  %shl17 = shl nuw nsw i32 %conv16, 4
  %call18 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 42, i32 noundef 112, i32 noundef %shl17) #10
  %call19 = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 264, i32 noundef 3) #10
  %call20 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 14, i32 noundef 12, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end24.i, %do.end.i
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %do.end.i ], [ -22, %do.end24.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sgtl5000_of_xlate_dai_id(ptr nocapture noundef readnone %component, ptr nocapture noundef readnone %endpoint) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgtl5000_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.143)
  switch i32 %level, label %entry.cleanup_crit_edge [
    i32 3, label %entry.sw.bb_crit_edge
    i32 2, label %entry.sw.bb_crit_edge15
    i32 1, label %entry.sw.bb_crit_edge16
    i32 0, label %sw.bb5
  ]

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16
  %regmap = getelementptr inbounds %struct.sgtl5000_priv, ptr %3, i32 0, i32 5
  %5 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %6, i1 noundef zeroext false) #10
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = tail call i32 @regcache_sync(ptr noundef %8) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_only(ptr noundef %10, i1 noundef zeroext true) #10
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 48, i32 noundef 32, i32 noundef 32) #10
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %regmap6 = getelementptr inbounds %struct.sgtl5000_priv, ptr %3, i32 0, i32 5
  %11 = ptrtoint ptr %regmap6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap6, align 4
  tail call void @regcache_cache_only(ptr noundef %12, i1 noundef zeroext true) #10
  %call7 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 48, i32 noundef 32, i32 noundef 0) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb5, %if.end, %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then ], [ 0, %entry.cleanup_crit_edge ], [ 0, %sw.bb5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @dac_info_volsw(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 192, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac_get_volsw(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 16) #10
  %and = and i32 %call1, 255
  %and2 = lshr i32 %call1, 8
  %2 = and i32 %and2, 255
  %3 = tail call i32 @llvm.umax.i32(i32 %and, i32 60)
  %4 = tail call i32 @llvm.umax.i32(i32 %2, i32 60)
  %5 = tail call i32 @llvm.usub.sat.i32(i32 252, i32 %3)
  %6 = tail call i32 @llvm.usub.sat.i32(i32 252, i32 %4)
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %5, ptr %value, align 8
  %arrayidx24 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %arrayidx24, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac_put_volsw(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %2 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %value, align 8
  %arrayidx2 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %4 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2, align 4
  %6 = tail call i32 @llvm.smax.i32(i32 %3, i32 0)
  %7 = tail call i32 @llvm.umin.i32(i32 %6, i32 192)
  %8 = tail call i32 @llvm.smax.i32(i32 %5, i32 0)
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 192)
  %sub = sub nuw nsw i32 252, %7
  %.neg = mul nsw i32 %9, -256
  %shl22 = add nsw i32 %.neg, 64512
  %or = or i32 %shl22, %sub
  %call23 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 16, i32 noundef %or) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_get_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_put_volsw(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @avc_get_threshold(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %call1 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 294) #10
  %conv = trunc i32 %call1 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv)
  %tobool.not = icmp eq i16 %conv, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = trunc i32 %call1 to i16
  br label %for.cond

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %for.cond.preheader
  %i.0 = phi i32 [ %inc, %for.cond.for.cond_crit_edge ], [ 0, %for.cond.preheader ]
  %arrayidx4 = getelementptr [97 x i16], ptr @avc_thr_db2reg, i32 0, i32 %i.0
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx4, align 2
  %cmp = icmp ugt i16 %4, %2
  %inc = add i32 %i.0, 1
  br i1 %cmp, label %for.cond.for.cond_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

cleanup:                                          ; preds = %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %i.0.sink = phi i32 [ 96, %entry.cleanup_crit_edge ], [ %i.0, %for.cond.cleanup_crit_edge ]
  %value8 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %5 = ptrtoint ptr %value8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %i.0.sink, ptr %value8, align 8
  %6 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %arrayidx11 = getelementptr [128 x i32], ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %i.0.sink, ptr %arrayidx11, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @avc_put_threshold(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %0 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 96, i32 %1)
  %2 = icmp ugt i32 %1, 96
  br i1 %2, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_data.i, align 4
  %arrayidx2 = getelementptr [97 x i16], ptr @avc_thr_db2reg, i32 0, i32 %1
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx2, align 2
  %conv = zext i16 %6 to i32
  %call3 = tail call i32 @snd_soc_component_write(ptr noundef %4, i32 noundef 294, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mic_bias_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 4, label %entry.sw.epilog.sink.split_crit_edge
  ]

entry.sw.epilog.sink.split_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr i8, ptr %1, i32 -164
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  %micbias_resistor = getelementptr inbounds %struct.sgtl5000_priv, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %micbias_resistor to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %micbias_resistor, align 4
  %conv = zext i8 %8 to i32
  %shl = shl nuw nsw i32 %conv, 8
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb, %entry.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ %shl, %sw.bb ], [ 0, %entry.sw.epilog.sink.split_crit_edge ]
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %add.ptr.i, i32 noundef 42, i32 noundef 768, i32 noundef %.sink) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @headphone_pga_event(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  tail call fastcc void @vag_and_mute_control(ptr noundef %add.ptr.i, i32 noundef %event, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adc_updown_depop(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  tail call fastcc void @vag_and_mute_control(ptr noundef %add.ptr.i, i32 noundef %event, i32 noundef 2)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dac_updown_depop(ptr nocapture noundef readonly %w, ptr nocapture noundef readnone %kcontrol, i32 noundef %event) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dapm = getelementptr inbounds %struct.snd_soc_dapm_widget, ptr %w, i32 0, i32 4
  %0 = ptrtoint ptr %dapm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dapm, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -176
  tail call fastcc void @vag_and_mute_control(ptr noundef %add.ptr.i, i32 noundef %event, i32 noundef 1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @vag_and_mute_control(ptr noundef %component, i32 noundef %event, i32 noundef %event_source) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.145)
  switch i32 %event, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 4, label %sw.bb7
    i32 8, label %sw.bb12
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx = getelementptr [3 x i16], ptr @vag_and_mute_control.mute_mask, i32 0, i32 %event_source
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %arrayidx, align 2
  %call.i = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 36) #10
  %conv.i = trunc i32 %call.i to i16
  %conv1.i = zext i16 %6 to i32
  %call3.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 36, i32 noundef %conv1.i, i32 noundef %conv1.i) #10
  %arrayidx2 = getelementptr %struct.sgtl5000_priv, ptr %3, i32 0, i32 12, i32 %event_source
  %7 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv.i, ptr %arrayidx2, align 2
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %call.i1 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 48) #10
  %and.i = and i32 %call.i1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb3.vag_power_on.exit_crit_edge

sw.bb3.vag_power_on.exit_crit_edge:               ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %vag_power_on.exit

if.end.i:                                         ; preds = %sw.bb3
  %call1.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 48, i32 noundef 128, i32 noundef 128) #10
  %call.i.i = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 36) #10
  %8 = and i32 %call.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i = icmp ne i32 %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event_source)
  %cmp3.i = icmp eq i32 %event_source, 0
  %or.cond.i = and i1 %cmp3.i, %cmp.i
  br i1 %or.cond.i, label %if.then4.i, label %if.end.i.vag_power_on.exit_crit_edge

if.end.i.vag_power_on.exit_crit_edge:             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vag_power_on.exit

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 500) #10
  br label %vag_power_on.exit

vag_power_on.exit:                                ; preds = %if.then4.i, %if.end.i.vag_power_on.exit_crit_edge, %sw.bb3.vag_power_on.exit_crit_edge
  %arrayidx4 = getelementptr [3 x i16], ptr @vag_and_mute_control.mute_mask, i32 0, i32 %event_source
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx4, align 2
  %arrayidx6 = getelementptr %struct.sgtl5000_priv, ptr %3, i32 0, i32 12, i32 %event_source
  %11 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx6, align 2
  %conv.i2 = zext i16 %10 to i32
  %conv1.i3 = zext i16 %12 to i32
  %call.i4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 36, i32 noundef %conv.i2, i32 noundef %conv1.i3) #10
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %arrayidx8 = getelementptr [3 x i16], ptr @vag_and_mute_control.mute_mask, i32 0, i32 %event_source
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx8, align 2
  %call.i5 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 36) #10
  %conv.i6 = trunc i32 %call.i5 to i16
  %conv1.i7 = zext i16 %14 to i32
  %call3.i8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 36, i32 noundef %conv1.i7, i32 noundef %conv1.i7) #10
  %arrayidx11 = getelementptr %struct.sgtl5000_priv, ptr %3, i32 0, i32 12, i32 %event_source
  %15 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i6, ptr %arrayidx11, align 2
  %call.i9 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 48) #10
  %and.i10 = and i32 %call.i9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i10)
  %tobool.not.i11 = icmp eq i32 %and.i10, 0
  br i1 %tobool.not.i11, label %sw.bb7.sw.epilog_crit_edge, label %if.end.i12

sw.bb7.sw.epilog_crit_edge:                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i12:                                       ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %event_source)
  %cmp.i.i = icmp eq i32 %event_source, 0
  br i1 %cmp.i.i, label %if.then8.i.i, label %if.else.i.i

if.then8.i.i:                                     ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 36) #10
  %16 = lshr i32 %call.i.i.i, 6
  br label %vag_power_consumers.exit.i

if.else.i.i:                                      ; preds = %if.end.i12
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = lshr i32 %call.i9, 4
  %and15.i.i = and i32 %conv.i.i, 4095
  br label %vag_power_consumers.exit.i

vag_power_consumers.exit.i:                       ; preds = %if.else.i.i, %if.then8.i.i
  %.lobit.pn.in.i.i = phi i32 [ %16, %if.then8.i.i ], [ %and15.i.i, %if.else.i.i ]
  %and.i.i = lshr i32 %call.i9, 3
  %and.lobit.i.i = and i32 %and.i.i, 1
  %and2.i.i = lshr i32 %call.i9, 1
  %and2.lobit.i.i = and i32 %and2.i.i, 1
  %consumers.1.i.i = add nuw nsw i32 %and.lobit.i.i, %and2.lobit.i.i
  %.lobit.pn.i.i = and i32 %.lobit.pn.in.i.i, 1
  %consumers.2.i.i = add nuw nsw i32 %consumers.1.i.i, %.lobit.pn.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %consumers.2.i.i)
  %cmp.i13 = icmp ugt i32 %consumers.2.i.i, 1
  br i1 %cmp.i13, label %vag_power_consumers.exit.i.sw.epilog_crit_edge, label %if.end5.i

vag_power_consumers.exit.i.sw.epilog_crit_edge:   ; preds = %vag_power_consumers.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end5.i:                                        ; preds = %vag_power_consumers.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %call6.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 48, i32 noundef 128, i32 noundef 0) #10
  tail call void @msleep(i32 noundef 500) #10
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx13 = getelementptr [3 x i16], ptr @vag_and_mute_control.mute_mask, i32 0, i32 %event_source
  %17 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx13, align 2
  %arrayidx15 = getelementptr %struct.sgtl5000_priv, ptr %3, i32 0, i32 12, i32 %event_source
  %19 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %arrayidx15, align 2
  %conv.i14 = zext i16 %18 to i32
  %conv1.i15 = zext i16 %20 to i32
  %call.i16 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 36, i32 noundef %conv.i14, i32 noundef %conv1.i15) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %if.end5.i, %vag_power_consumers.exit.i.sw.epilog_crit_edge, %sw.bb7.sw.epilog_crit_edge, %vag_power_on.exit, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_info_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_get_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_put_enum_double(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @regulator_is_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_only(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sgtl5000_set_dai_sysclk(ptr nocapture noundef readonly %codec_dai, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %clk_id)
  %cond = icmp eq i32 %clk_id, 0
  br i1 %cond, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %freq, ptr %5, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgtl5000_set_dai_fmt(ptr nocapture noundef readonly %codec_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %master = getelementptr inbounds %struct.sgtl5000_priv, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %master, align 4
  %7 = trunc i32 %fmt to i16
  %trunc = and i16 %7, -4096
  %8 = zext i16 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.146)
  switch i16 %trunc, label %entry.cleanup_crit_edge [
    i16 16384, label %entry.sw.epilog_crit_edge
    i16 4096, label %sw.bb
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %master to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %master, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb, %entry.sw.epilog_crit_edge
  %i2sctl.0 = phi i16 [ 128, %sw.bb ], [ 0, %entry.sw.epilog_crit_edge ]
  %and4 = and i32 %fmt, 15
  %10 = zext i32 %and4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %and4, label %sw.epilog.cleanup_crit_edge [
    i32 4, label %sw.bb5
    i32 5, label %sw.bb9
    i32 1, label %sw.epilog.sw.epilog35_crit_edge
    i32 2, label %sw.bb20
    i32 3, label %sw.bb27
  ]

sw.epilog.sw.epilog35_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog35

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb5:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %11 = or i16 %i2sctl.0, 8
  br label %sw.epilog35

sw.bb9:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %12 = or i16 %i2sctl.0, 10
  br label %sw.epilog35

sw.bb20:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %13 = or i16 %i2sctl.0, 5
  br label %sw.epilog35

sw.bb27:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %14 = or i16 %i2sctl.0, 2
  br label %sw.epilog35

sw.epilog35:                                      ; preds = %sw.bb27, %sw.bb20, %sw.bb9, %sw.bb5, %sw.epilog.sw.epilog35_crit_edge
  %i2sctl.1 = phi i16 [ %14, %sw.bb27 ], [ %13, %sw.bb20 ], [ %12, %sw.bb9 ], [ %11, %sw.bb5 ], [ %i2sctl.0, %sw.epilog.sw.epilog35_crit_edge ]
  %fmt37 = getelementptr inbounds %struct.sgtl5000_priv, ptr %5, i32 0, i32 2
  %15 = ptrtoint ptr %fmt37 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %and4, ptr %fmt37, align 4
  %and38 = and i32 %fmt, 3840
  %16 = zext i32 %and38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %and38, label %sw.epilog35.cleanup_crit_edge [
    i32 0, label %sw.epilog35.sw.epilog44_crit_edge
    i32 768, label %sw.bb39
  ]

sw.epilog35.sw.epilog44_crit_edge:                ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog44

sw.epilog35.cleanup_crit_edge:                    ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb39:                                          ; preds = %sw.epilog35
  call void @__sanitizer_cov_trace_pc() #12
  %17 = or i16 %i2sctl.1, 64
  br label %sw.epilog44

sw.epilog44:                                      ; preds = %sw.bb39, %sw.epilog35.sw.epilog44_crit_edge
  %i2sctl.2 = phi i16 [ %17, %sw.bb39 ], [ %i2sctl.1, %sw.epilog35.sw.epilog44_crit_edge ]
  %conv45 = zext i16 %i2sctl.2 to i32
  %call46 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 6, i32 noundef %conv45) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog44, %sw.epilog35.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog44 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgtl5000_mute_stream(ptr nocapture noundef readonly %codec_dai, i32 noundef %mute, i32 noundef %direction) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.snd_soc_dai, ptr %codec_dai, i32 0, i32 12
  %0 = ptrtoint ptr %component1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mute)
  %tobool.not = icmp eq i32 %mute, 0
  %spec.select = zext i1 %tobool.not to i32
  %call = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 2, i32 noundef 1, i32 noundef %spec.select) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sgtl5000_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %10 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp = icmp eq i32 %11, 0
  %. = select i1 %cmp, i32 16384, i32 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp5 = icmp eq i32 %9, 1
  %cond = select i1 %cmp5, i32 0, i32 %.
  %call6 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 48, i32 noundef %., i32 noundef %cond) #10
  %arrayidx.i.i54 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx.i.i54 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i.i54, align 4
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.i, align 4
  %18 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.149)
  switch i32 %13, label %sw.default.i [
    i32 8000, label %if.end.sw.epilog.i_crit_edge
    i32 16000, label %if.end.sw.epilog.i_crit_edge57
    i32 11025, label %if.end.sw.bb1.i_crit_edge
    i32 22050, label %if.end.sw.bb1.i_crit_edge58
  ]

if.end.sw.bb1.i_crit_edge58:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end.sw.bb1.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb1.i

if.end.sw.epilog.i_crit_edge57:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end.sw.epilog.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.sw.bb1.i_crit_edge, %if.end.sw.bb1.i_crit_edge58
  br label %sw.epilog.i

sw.default.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.default.i, %sw.bb1.i, %if.end.sw.epilog.i_crit_edge, %if.end.sw.epilog.i_crit_edge57
  %sys_fs.0.i = phi i32 [ %13, %sw.default.i ], [ 44100, %sw.bb1.i ], [ 32000, %if.end.sw.epilog.i_crit_edge ], [ 32000, %if.end.sw.epilog.i_crit_edge57 ]
  %div.i = sdiv i32 %sys_fs.0.i, %13
  %19 = zext i32 %div.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.150)
  switch i32 %div.i, label %sw.epilog.i.cleanup_crit_edge [
    i32 4, label %sw.epilog.i.sw.epilog8.i_crit_edge
    i32 2, label %sw.bb3.i
    i32 1, label %sw.bb5.i
  ]

sw.epilog.i.sw.epilog8.i_crit_edge:               ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog8.i

sw.epilog.i.cleanup_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog8.i

sw.bb5.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog8.i

sw.epilog8.i:                                     ; preds = %sw.bb5.i, %sw.bb3.i, %sw.epilog.i.sw.epilog8.i_crit_edge
  %clk_ctl.0.i = phi i32 [ 0, %sw.bb5.i ], [ 16, %sw.bb3.i ], [ 32, %sw.epilog.i.sw.epilog8.i_crit_edge ]
  %20 = zext i32 %sys_fs.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.151)
  switch i32 %sys_fs.0.i, label %do.end.i [
    i32 32000, label %sw.epilog8.i.sw.epilog18.i_crit_edge
    i32 44100, label %sw.bb11.i
    i32 48000, label %sw.bb13.i
    i32 96000, label %sw.bb15.i
  ]

sw.epilog8.i.sw.epilog18.i_crit_edge:             ; preds = %sw.epilog8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog18.i

sw.bb11.i:                                        ; preds = %sw.epilog8.i
  call void @__sanitizer_cov_trace_pc() #12
  %or12.i = or i32 %clk_ctl.0.i, 4
  br label %sw.epilog18.i

sw.bb13.i:                                        ; preds = %sw.epilog8.i
  call void @__sanitizer_cov_trace_pc() #12
  %or14.i = or i32 %clk_ctl.0.i, 8
  br label %sw.epilog18.i

sw.bb15.i:                                        ; preds = %sw.epilog8.i
  call void @__sanitizer_cov_trace_pc() #12
  %or16.i = or i32 %clk_ctl.0.i, 12
  br label %sw.epilog18.i

do.end.i:                                         ; preds = %sw.epilog8.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.133, i32 noundef %13) #13
  br label %cleanup

sw.epilog18.i:                                    ; preds = %sw.bb15.i, %sw.bb13.i, %sw.bb11.i, %sw.epilog8.i.sw.epilog18.i_crit_edge
  %clk_ctl.1.i = phi i32 [ %or16.i, %sw.bb15.i ], [ %or14.i, %sw.bb13.i ], [ %or12.i, %sw.bb11.i ], [ %clk_ctl.0.i, %sw.epilog8.i.sw.epilog18.i_crit_edge ]
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %17, align 4
  %div19.i = sdiv i32 %22, %13
  %23 = zext i32 %div19.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.152)
  switch i32 %div19.i, label %sw.default26.i [
    i32 256, label %sw.epilog18.i.sw.epilog38.i_crit_edge
    i32 384, label %sw.bb22.i
    i32 512, label %sw.bb24.i
  ]

sw.epilog18.i.sw.epilog38.i_crit_edge:            ; preds = %sw.epilog18.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog38.i

sw.bb22.i:                                        ; preds = %sw.epilog18.i
  call void @__sanitizer_cov_trace_pc() #12
  %or23.i = or i32 %clk_ctl.1.i, 1
  br label %sw.epilog38.i

sw.bb24.i:                                        ; preds = %sw.epilog18.i
  call void @__sanitizer_cov_trace_pc() #12
  %or25.i = or i32 %clk_ctl.1.i, 2
  br label %sw.epilog38.i

sw.default26.i:                                   ; preds = %sw.epilog18.i
  %master.i = getelementptr inbounds %struct.sgtl5000_priv, ptr %17, i32 0, i32 1
  %24 = ptrtoint ptr %master.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %master.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %do.end30.i, label %if.then.i

if.then.i:                                        ; preds = %sw.default26.i
  call void @__sanitizer_cov_trace_pc() #12
  %or27.i = or i32 %clk_ctl.1.i, 3
  br label %sw.epilog38.i

do.end30.i:                                       ; preds = %sw.default26.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.136) #13
  %26 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i, align 4
  %28 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %17, align 4
  %div37.i = sdiv i32 %29, %13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.139, i32 noundef %div37.i) #13
  br label %cleanup

sw.epilog38.i:                                    ; preds = %if.then.i, %sw.bb24.i, %sw.bb22.i, %sw.epilog18.i.sw.epilog38.i_crit_edge
  %clk_ctl.2.i = phi i32 [ %or27.i, %if.then.i ], [ %or25.i, %sw.bb24.i ], [ %or23.i, %sw.bb22.i ], [ %clk_ctl.1.i, %sw.epilog18.i.sw.epilog38.i_crit_edge ]
  %and.i = and i32 %clk_ctl.2.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 3
  br i1 %cmp.i, label %if.then39.i, label %if.else477.i

if.then39.i:                                      ; preds = %sw.epilog38.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 17000000, i32 %22)
  %cmp41.i = icmp sgt i32 %22, 17000000
  %div44.i = sdiv i32 %22, 2
  %in.0.i = select i1 %cmp41.i, i32 %div44.i, i32 %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 44100, i32 %sys_fs.0.i)
  %cmp48.i = icmp eq i32 %sys_fs.0.i, 44100
  %conv229747.i = select i1 %cmp48.i, i32 180633600, i32 196608000
  %in.0.i.frozen = freeze i32 %in.0.i
  %conv241742.i = udiv i32 %conv229747.i, %in.0.i.frozen
  %30 = mul i32 %conv241742.i, %in.0.i.frozen
  %mul242745.in.in.i.decomposed = sub i32 %conv229747.i, %30
  %mul242745.in.i = zext i32 %mul242745.in.in.i.decomposed to i64
  %mul242745.i = shl nuw nsw i64 %mul242745.in.i, 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %mul242745.in.in.i.decomposed)
  %cmp444.i = icmp ult i32 %mul242745.in.in.i.decomposed, 2097152
  br i1 %cmp444.i, label %if.then452.i, label %if.else458.i, !prof !301

if.then452.i:                                     ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv453.i = trunc i64 %mul242745.i to i32
  %div456.i = udiv i32 %conv453.i, %in.0.i
  br label %if.end462.i

if.else458.i:                                     ; preds = %if.then39.i
  call void @__sanitizer_cov_trace_pc() #12
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %in.0.i, i64 %mul242745.i) #14, !srcloc !302
  %asmresult1.i706.i = extractvalue { i64, i64 } %31, 1
  %extract.t795.i = trunc i64 %asmresult1.i706.i to i32
  br label %if.end462.i

if.end462.i:                                      ; preds = %if.else458.i, %if.then452.i
  %t.0.off0.i = phi i32 [ %div456.i, %if.then452.i ], [ %extract.t795.i, %if.else458.i ]
  %shl465.i = shl i32 %conv241742.i, 11
  %or467.i = or i32 %shl465.i, %t.0.off0.i
  %call468.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 50, i32 noundef %or467.i) #10
  %..i = select i1 %cmp41.i, i32 8, i32 0
  %call473.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 52, i32 noundef 8, i32 noundef %..i) #10
  %call475.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 48, i32 noundef 1280, i32 noundef 1280) #10
  %call476.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef %clk_ctl.2.i) #10
  br label %if.end11

if.else477.i:                                     ; preds = %sw.epilog38.i
  call void @__sanitizer_cov_trace_pc() #12
  %call478.i = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 4, i32 noundef %clk_ctl.2.i) #10
  %call479.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 48, i32 noundef 1280, i32 noundef 0) #10
  br label %if.end11

if.end11:                                         ; preds = %if.else477.i, %if.end462.i
  %arrayidx.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.not.i.i.i = icmp eq i32 %33, 0
  br i1 %tobool.not.i.i.i, label %for.inc.i.i.i, label %if.end11.if.then.i.i.i_crit_edge

if.end11.if.then.i.i.i_crit_edge:                 ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.inc.i.i.i.if.then.i.i.i_crit_edge, %if.end11.if.then.i.i.i_crit_edge
  %i.09.lcssa.i.i.i = phi i32 [ 0, %if.end11.if.then.i.i.i_crit_edge ], [ 32, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %.lcssa.i.i.i = phi i32 [ %33, %if.end11.if.then.i.i.i_crit_edge ], [ %36, %for.inc.i.i.i.if.then.i.i.i_crit_edge ]
  %34 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i.i, i1 true) #10, !range !303
  %add.i.i.i = or i32 %34, %i.09.lcssa.i.i.i
  br label %params_width.exit

for.inc.i.i.i:                                    ; preds = %if.end11
  %arrayidx.1.i.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %35 = ptrtoint ptr %arrayidx.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.1.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.1.i.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.1.i.i.i, label %for.inc.i.i.i.params_width.exit_crit_edge, label %for.inc.i.i.i.if.then.i.i.i_crit_edge

for.inc.i.i.i.if.then.i.i.i_crit_edge:            ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

for.inc.i.i.i.params_width.exit_crit_edge:        ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %params_width.exit

params_width.exit:                                ; preds = %for.inc.i.i.i.params_width.exit_crit_edge, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ 0, %for.inc.i.i.i.params_width.exit_crit_edge ]
  %call1.i = tail call i32 @snd_pcm_format_width(i32 noundef %retval.0.i.i.i) #10
  %37 = add i32 %call1.i, -16
  %38 = tail call i32 @llvm.fshl.i32(i32 %37, i32 %37, i32 30)
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.153)
  switch i32 %38, label %params_width.exit.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %params_width.exit.sw.epilog_crit_edge
    i32 2, label %sw.bb20
    i32 4, label %sw.bb23
  ]

params_width.exit.sw.epilog_crit_edge:            ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

params_width.exit.cleanup_crit_edge:              ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %params_width.exit
  %fmt = getelementptr inbounds %struct.sgtl5000_priv, ptr %5, i32 0, i32 2
  %40 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp13 = icmp eq i32 %41, 2
  br i1 %cmp13, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb20:                                          ; preds = %params_width.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb23:                                          ; preds = %params_width.exit
  %fmt24 = getelementptr inbounds %struct.sgtl5000_priv, ptr %5, i32 0, i32 2
  %42 = ptrtoint ptr %fmt24 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fmt24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp25 = icmp eq i32 %43, 2
  br i1 %cmp25, label %sw.bb23.cleanup_crit_edge, label %sw.bb23.sw.epilog_crit_edge

sw.bb23.sw.epilog_crit_edge:                      ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb23.sw.epilog_crit_edge, %sw.bb20, %sw.bb.sw.epilog_crit_edge, %params_width.exit.sw.epilog_crit_edge
  %i2s_ctl.0 = phi i32 [ 16, %sw.bb20 ], [ 304, %sw.bb.sw.epilog_crit_edge ], [ 32, %params_width.exit.sw.epilog_crit_edge ], [ 0, %sw.bb23.sw.epilog_crit_edge ]
  %call30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 6, i32 noundef 304, i32 noundef %i2s_ctl.0) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb23.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %params_width.exit.cleanup_crit_edge, %do.end30.i, %do.end.i, %sw.epilog.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -14, %do.end ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb23.cleanup_crit_edge ], [ -22, %params_width.exit.cleanup_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end30.i ], [ -22, %sw.epilog.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_format_width(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !80, !81, !82, !84, !86, !87, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !107, !108, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !206, !208, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !256, !257, !258, !260, !261, !262, !264, !266, !268, !270, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !284, !285, !286, !288}
!llvm.module.flags = !{!290, !291, !292, !293, !294, !295, !296, !297}
!llvm.ident = !{!298}

!0 = !{ptr @__initcall__kmod_snd_soc_sgtl5000__311_1829_sgtl5000_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_sgtl5000__311_1829_sgtl5000_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1829, i32 1}
!2 = !{ptr @__exitcall_sgtl5000_i2c_driver_exit, !1, !"__exitcall_sgtl5000_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description312, !4, !"__UNIQUE_ID_description312", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1831, i32 1}
!5 = !{ptr @__UNIQUE_ID_author313, !6, !"__UNIQUE_ID_author313", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1832, i32 1}
!7 = !{ptr @__UNIQUE_ID_file314, !8, !"__UNIQUE_ID_file314", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1833, i32 1}
!9 = !{ptr @__UNIQUE_ID_license315, !8, !"__UNIQUE_ID_license315", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1821, i32 11}
!12 = !{ptr @sgtl5000_i2c_driver, !13, !"sgtl5000_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1819, i32 26}
!14 = !{ptr @sgtl5000_i2c_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1601, i32 21}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1604, i32 3}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sgtl5000_i2c_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @sgtl5000_i2c_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1615, i32 36}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1622, i32 3}
!29 = !{ptr @sgtl5000_i2c_probe._entry.8, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @sgtl5000_i2c_probe._entry_ptr.10, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1632, i32 3}
!33 = !{ptr @sgtl5000_i2c_probe._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @sgtl5000_i2c_probe._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1638, i32 3}
!37 = !{ptr @sgtl5000_i2c_probe._entry.14, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @sgtl5000_i2c_probe._entry_ptr.16, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1645, i32 2}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sgtl5000_i2c_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @sgtl5000_i2c_probe._entry_ptr.20, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1653, i32 3}
!46 = !{ptr @sgtl5000_i2c_probe._entry.21, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @sgtl5000_i2c_probe._entry_ptr.23, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.25, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1660, i32 3}
!50 = !{ptr @sgtl5000_i2c_probe._entry.24, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @sgtl5000_i2c_probe._entry_ptr.26, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.28, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1674, i32 3}
!54 = !{ptr @sgtl5000_i2c_probe._entry.27, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sgtl5000_i2c_probe._entry_ptr.29, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.31, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1683, i32 4}
!58 = !{ptr @sgtl5000_i2c_probe._entry.30, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @sgtl5000_i2c_probe._entry_ptr.32, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1699, i32 4}
!62 = !{ptr @sgtl5000_i2c_probe._entry.33, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @sgtl5000_i2c_probe._entry_ptr.35, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.37, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1703, i32 3}
!66 = !{ptr @sgtl5000_i2c_probe._entry.36, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @sgtl5000_i2c_probe._entry_ptr.38, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.39, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1712, i32 3}
!70 = !{ptr @.str.40, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @sgtl5000_i2c_probe.__UNIQUE_ID_ddebug310, !69, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!72 = !{ptr @.str.42, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1716, i32 3}
!74 = !{ptr @sgtl5000_i2c_probe._entry.41, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @sgtl5000_i2c_probe._entry_ptr.43, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1722, i32 4}
!78 = !{ptr @.str.46, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1738, i32 5}
!80 = !{ptr @sgtl5000_i2c_probe._entry.45, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @sgtl5000_i2c_probe._entry_ptr.47, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.48, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1746, i32 4}
!84 = !{ptr @.str.50, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1753, i32 5}
!86 = !{ptr @sgtl5000_i2c_probe._entry.49, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @sgtl5000_i2c_probe._entry_ptr.51, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.52, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1762, i32 32}
!90 = !{ptr @.str.53, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1769, i32 32}
!92 = !{ptr @.str.54, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1430, i32 46}
!94 = !{ptr @.str.55, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/codecs/sgtl5000.c", i32 104, i32 2}
!96 = !{ptr @.str.56, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/codecs/sgtl5000.c", i32 105, i32 2}
!98 = distinct !{null, !99, !"supply_names", i1 false, i1 false}
!99 = !{!"../sound/soc/codecs/sgtl5000.c", i32 103, i32 20}
!100 = !{ptr @sgtl5000_regmap, !101, !"sgtl5000_regmap", i1 false, i1 false}
!101 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1542, i32 35}
!102 = !{ptr @sgtl5000_reg_defaults, !103, !"sgtl5000_reg_defaults", i1 false, i1 false}
!103 = !{!"../sound/soc/codecs/sgtl5000.c", i32 42, i32 33}
!104 = !{ptr @.str.57, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1576, i32 4}
!106 = !{ptr @.str.58, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @sgtl5000_fill_defaults._entry, !105, !"_entry", i1 false, i1 false}
!108 = !{ptr @sgtl5000_fill_defaults._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @sgtl5000_driver, !110, !"sgtl5000_driver", i1 false, i1 false}
!110 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1525, i32 46}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/sgtl5000.c", i32 710, i32 11}
!113 = !{ptr @.str.60, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../sound/soc/codecs/sgtl5000.c", i32 718, i32 2}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/sgtl5000.c", i32 719, i32 2}
!117 = !{ptr @.str.63, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../sound/soc/codecs/sgtl5000.c", i32 722, i32 2}
!119 = !{ptr @.str.65, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../sound/soc/codecs/sgtl5000.c", i32 723, i32 2}
!121 = !{ptr @.str.67, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/sgtl5000.c", i32 725, i32 2}
!123 = !{ptr @.str.69, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/sgtl5000.c", i32 730, i32 2}
!125 = !{ptr @.str.71, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/sgtl5000.c", i32 732, i32 2}
!127 = !{ptr @.str.73, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../sound/soc/codecs/sgtl5000.c", i32 735, i32 2}
!129 = !{ptr @.str.75, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../sound/soc/codecs/sgtl5000.c", i32 738, i32 2}
!131 = !{ptr @.str.77, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../sound/soc/codecs/sgtl5000.c", i32 744, i32 2}
!133 = !{ptr @.str.79, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/sgtl5000.c", i32 746, i32 2}
!135 = !{ptr @.str.81, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../sound/soc/codecs/sgtl5000.c", i32 749, i32 2}
!137 = !{ptr @.str.83, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../sound/soc/codecs/sgtl5000.c", i32 752, i32 2}
!139 = !{ptr @.str.85, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../sound/soc/codecs/sgtl5000.c", i32 753, i32 2}
!141 = !{ptr @.str.87, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../sound/soc/codecs/sgtl5000.c", i32 754, i32 2}
!143 = !{ptr @.str.89, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../sound/soc/codecs/sgtl5000.c", i32 756, i32 2}
!145 = !{ptr @.str.91, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../sound/soc/codecs/sgtl5000.c", i32 757, i32 2}
!147 = !{ptr @.str.93, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../sound/soc/codecs/sgtl5000.c", i32 761, i32 2}
!149 = !{ptr @.str.95, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/sgtl5000.c", i32 764, i32 2}
!151 = !{ptr @.str.97, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/sgtl5000.c", i32 767, i32 2}
!153 = !{ptr @.str.99, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/sgtl5000.c", i32 770, i32 2}
!155 = !{ptr @.str.101, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/sgtl5000.c", i32 773, i32 2}
!157 = !{ptr @sgtl5000_snd_controls, !158, !"sgtl5000_snd_controls", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/sgtl5000.c", i32 706, i32 38}
!159 = !{ptr @capture_6db_attenuate, !160, !"capture_6db_attenuate", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/sgtl5000.c", i32 680, i32 14}
!161 = !{ptr @headphone_volume, !162, !"headphone_volume", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/sgtl5000.c", i32 695, i32 14}
!163 = !{ptr @mic_gain_tlv, !164, !"mic_gain_tlv", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/sgtl5000.c", i32 683, i32 14}
!165 = !{ptr @lineout_volume, !166, !"lineout_volume", i1 false, i1 false}
!166 = !{!"../sound/soc/codecs/sgtl5000.c", i32 698, i32 14}
!167 = !{ptr @dap_volume, !168, !"dap_volume", i1 false, i1 false}
!168 = !{!"../sound/soc/codecs/sgtl5000.c", i32 689, i32 14}
!169 = !{ptr @avc_max_gain, !170, !"avc_max_gain", i1 false, i1 false}
!170 = !{!"../sound/soc/codecs/sgtl5000.c", i32 701, i32 14}
!171 = !{ptr @avc_thr_db2reg, !172, !"avc_thr_db2reg", i1 false, i1 false}
!172 = !{!"../sound/soc/codecs/sgtl5000.c", i32 81, i32 18}
!173 = !{ptr @avc_threshold, !174, !"avc_threshold", i1 false, i1 false}
!174 = !{!"../sound/soc/codecs/sgtl5000.c", i32 704, i32 14}
!175 = !{ptr @bass_band, !176, !"bass_band", i1 false, i1 false}
!176 = !{!"../sound/soc/codecs/sgtl5000.c", i32 692, i32 14}
!177 = !{ptr @.str.104, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../sound/soc/codecs/sgtl5000.c", i32 433, i32 2}
!179 = !{ptr @.str.105, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/sgtl5000.c", i32 434, i32 2}
!181 = !{ptr @.str.106, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../sound/soc/codecs/sgtl5000.c", i32 436, i32 2}
!183 = !{ptr @.str.107, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/sgtl5000.c", i32 437, i32 2}
!185 = !{ptr @.str.108, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../sound/soc/codecs/sgtl5000.c", i32 439, i32 2}
!187 = !{ptr @.str.109, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/soc/codecs/sgtl5000.c", i32 443, i32 2}
!189 = !{ptr @.str.110, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/sgtl5000.c", i32 447, i32 2}
!191 = !{ptr @.str.111, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../sound/soc/codecs/sgtl5000.c", i32 449, i32 2}
!193 = !{ptr @.str.112, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/sgtl5000.c", i32 450, i32 2}
!195 = !{ptr @.str.113, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../sound/soc/codecs/sgtl5000.c", i32 451, i32 2}
!197 = !{ptr @.str.114, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../sound/soc/codecs/sgtl5000.c", i32 452, i32 2}
!199 = !{ptr @.str.115, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../sound/soc/codecs/sgtl5000.c", i32 453, i32 2}
!201 = !{ptr @.str.116, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/sgtl5000.c", i32 454, i32 2}
!203 = !{ptr @.str.117, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../sound/soc/codecs/sgtl5000.c", i32 458, i32 2}
!205 = !{ptr @.str.118, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.119, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../sound/soc/codecs/sgtl5000.c", i32 463, i32 2}
!208 = !{ptr @.str.120, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.121, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../sound/soc/codecs/sgtl5000.c", i32 467, i32 2}
!211 = !{ptr @.str.122, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../sound/soc/codecs/sgtl5000.c", i32 470, i32 2}
!213 = !{ptr @sgtl5000_dapm_widgets, !214, !"sgtl5000_dapm_widgets", i1 false, i1 false}
!214 = !{!"../sound/soc/codecs/sgtl5000.c", i32 432, i32 41}
!215 = !{ptr @vag_and_mute_control.mute_mask, !216, !"mute_mask", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/sgtl5000.c", i32 291, i32 19}
!217 = !{ptr @adc_mux, !218, !"adc_mux", i1 false, i1 false}
!218 = !{!"../sound/soc/codecs/sgtl5000.c", i32 380, i32 38}
!219 = !{ptr @adc_enum, !220, !"adc_enum", i1 false, i1 false}
!220 = !{!"../sound/soc/codecs/sgtl5000.c", i32 376, i32 8}
!221 = !{ptr @adc_mux_text, !222, !"adc_mux_text", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/sgtl5000.c", i32 372, i32 20}
!223 = !{ptr @hp_mux, !224, !"hp_mux", i1 false, i1 false}
!224 = !{!"../sound/soc/codecs/sgtl5000.c", i32 392, i32 38}
!225 = !{ptr @hp_enum, !226, !"hp_enum", i1 false, i1 false}
!226 = !{!"../sound/soc/codecs/sgtl5000.c", i32 388, i32 8}
!227 = !{ptr @hp_mux_text, !228, !"hp_mux_text", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/sgtl5000.c", i32 384, i32 20}
!229 = !{ptr @dac_mux, !230, !"dac_mux", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/sgtl5000.c", i32 404, i32 38}
!231 = !{ptr @dac_enum, !232, !"dac_enum", i1 false, i1 false}
!232 = !{!"../sound/soc/codecs/sgtl5000.c", i32 400, i32 8}
!233 = !{ptr @.str.124, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/sgtl5000.c", i32 397, i32 9}
!235 = !{ptr @.str.125, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../sound/soc/codecs/sgtl5000.c", i32 397, i32 16}
!237 = !{ptr @dac_mux_text, !238, !"dac_mux_text", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/sgtl5000.c", i32 396, i32 20}
!239 = !{ptr @dap_mux, !240, !"dap_mux", i1 false, i1 false}
!240 = !{!"../sound/soc/codecs/sgtl5000.c", i32 416, i32 38}
!241 = !{ptr @dap_enum, !242, !"dap_enum", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/sgtl5000.c", i32 412, i32 8}
!243 = !{ptr @dap_mux_text, !244, !"dap_mux_text", i1 false, i1 false}
!244 = !{!"../sound/soc/codecs/sgtl5000.c", i32 408, i32 20}
!245 = !{ptr @dapmix_mux, !246, !"dapmix_mux", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/sgtl5000.c", i32 428, i32 38}
!247 = !{ptr @dapmix_enum, !248, !"dapmix_enum", i1 false, i1 false}
!248 = !{!"../sound/soc/codecs/sgtl5000.c", i32 424, i32 8}
!249 = !{ptr @dapmix_mux_text, !250, !"dapmix_mux_text", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/sgtl5000.c", i32 420, i32 20}
!251 = !{ptr @sgtl5000_dapm_routes, !252, !"sgtl5000_dapm_routes", i1 false, i1 false}
!252 = !{!"../sound/soc/codecs/sgtl5000.c", i32 476, i32 40}
!253 = !{ptr @.str.126, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1314, i32 3}
!255 = !{ptr @.str.127, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @sgtl5000_set_power_regs._entry, !254, !"_entry", i1 false, i1 false}
!257 = !{ptr @sgtl5000_set_power_regs._entry_ptr, !254, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.129, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1321, i32 3}
!260 = !{ptr @sgtl5000_set_power_regs._entry.128, !259, !"_entry", i1 false, i1 false}
!261 = !{ptr @sgtl5000_set_power_regs._entry_ptr.130, !259, !"_entry_ptr", i1 false, i1 false}
!262 = !{ptr @vol_quot_table, !263, !"vol_quot_table", i1 false, i1 false}
!263 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1271, i32 17}
!264 = !{ptr @sgtl5000_dai, !265, !"sgtl5000_dai", i1 false, i1 false}
!265 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1169, i32 34}
!266 = !{ptr @sgtl5000_ops, !267, !"sgtl5000_ops", i1 false, i1 false}
!267 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1161, i32 37}
!268 = !{ptr @.str.131, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1060, i32 3}
!270 = !{ptr @.str.132, !269, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @sgtl5000_pcm_hw_params._entry, !269, !"_entry", i1 false, i1 false}
!272 = !{ptr @sgtl5000_pcm_hw_params._entry_ptr, !269, !"_entry_ptr", i1 false, i1 false}
!273 = !{ptr @.str.133, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/sgtl5000.c", i32 947, i32 3}
!275 = !{ptr @.str.134, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @sgtl5000_set_clock._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @sgtl5000_set_clock._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.136, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../sound/soc/codecs/sgtl5000.c", i32 976, i32 4}
!280 = !{ptr @sgtl5000_set_clock._entry.135, !279, !"_entry", i1 false, i1 false}
!281 = !{ptr @sgtl5000_set_clock._entry_ptr.137, !279, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @.str.139, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../sound/soc/codecs/sgtl5000.c", i32 978, i32 4}
!284 = !{ptr @sgtl5000_set_clock._entry.138, !283, !"_entry", i1 false, i1 false}
!285 = !{ptr @sgtl5000_set_clock._entry_ptr.140, !283, !"_entry_ptr", i1 false, i1 false}
!286 = !{ptr @sgtl5000_dt_ids, !287, !"sgtl5000_dt_ids", i1 false, i1 false}
!287 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1813, i32 34}
!288 = !{ptr @sgtl5000_id, !289, !"sgtl5000_id", i1 false, i1 false}
!289 = !{!"../sound/soc/codecs/sgtl5000.c", i32 1806, i32 35}
!290 = !{i32 1, !"wchar_size", i32 2}
!291 = !{i32 1, !"min_enum_size", i32 4}
!292 = !{i32 8, !"branch-target-enforcement", i32 0}
!293 = !{i32 8, !"sign-return-address", i32 0}
!294 = !{i32 8, !"sign-return-address-all", i32 0}
!295 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!296 = !{i32 7, !"uwtable", i32 1}
!297 = !{i32 7, !"frame-pointer", i32 2}
!298 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!299 = !{!"auto-init"}
!300 = !{i64 2149003275, i64 2149003280, i64 2149003293, i64 2149003337, i64 2149003371, i64 2149003392}
!301 = !{!"branch_weights", i32 2000, i32 1}
!302 = !{i64 2148236322, i64 2148236602, i64 2148236936, i64 2148237270}
!303 = !{i32 0, i32 33}
