; ModuleID = '/llk/IR_all_yes/sound/soc/kirkwood/kirkwood-i2s.c_pt.bc'
source_filename = "../sound/soc/kirkwood/kirkwood-i2s.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.kirkwood_dma_data = type { ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32 }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
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
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }

@__initcall__kmod_snd_soc_kirkwood__240_640_kirkwood_i2s_driver_init6 = internal global ptr @kirkwood_i2s_driver_init, section ".initcall6.init", align 4
@kirkwood_i2s_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @kirkwood_i2s_dev_probe, ptr @kirkwood_i2s_dev_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mvebu_audio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_kirkwood_i2s_driver_exit = internal global ptr @kirkwood_i2s_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [67 x i8] c"snd_soc_kirkwood.author=Arnaud Patard, <arnaud.patard@rtp-net.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description242 = internal constant [56 x i8] c"snd_soc_kirkwood.description=Kirkwood I2S SoC Interface\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [58 x i8] c"snd_soc_kirkwood.file=sound/soc/kirkwood/snd-soc-kirkwood\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [29 x i8] c"snd_soc_kirkwood.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias245 = internal constant [44 x i8] c"snd_soc_kirkwood.alias=platform:mvebu-audio\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mvebu-audio\00", [20 x i8] zeroinitializer }, align 32
@mvebu_audio_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,kirkwood-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,dove-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,armada370-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@kirkwood_i2s_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.18, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @kirkwood_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1092, i32 1216, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1092, i32 1216, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.19, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @kirkwood_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 68, i32 1216, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 68, i32 1216, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@kirkwood_i2s_dev_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 548, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no DT nor platform data ?!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"kirkwood_i2s_dev_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"sound/soc/kirkwood/kirkwood-i2s.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@kirkwood_i2s_dev_probe._entry_ptr = internal global ptr @kirkwood_i2s_dev_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"internal\00", [23 x i8] zeroinitializer }, align 32
@kirkwood_i2s_dev_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 554, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"no clock\0A\00", [22 x i8] zeroinitializer }, align 32
@kirkwood_i2s_dev_probe._entry_ptr.9 = internal global ptr @kirkwood_i2s_dev_probe._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"extclk\00", [25 x i8] zeroinitializer }, align 32
@kirkwood_i2s_dev_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 567, ptr @.str.13, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"found external clock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@kirkwood_i2s_dev_probe._entry_ptr.14 = internal global ptr @kirkwood_i2s_dev_probe._entry.11, section ".printk_index", align 4
@kirkwood_i2s_dai_extclk = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.18, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @kirkwood_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 1092, i32 1073741824, i32 5512, i32 192000, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 1092, i32 1073741824, i32 5512, i32 192000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.19, i32 1, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @kirkwood_i2s_dai_ops, ptr null, %struct.snd_soc_pcm_stream { ptr null, i64 68, i32 1073741824, i32 5512, i32 192000, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr null, i64 68, i32 1073741824, i32 5512, i32 192000, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@kirkwood_soc_component = external dso_local constant %struct.snd_soc_component_driver, align 4
@kirkwood_i2s_dev_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 593, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"snd_soc_register_component failed\0A\00", [61 x i8] zeroinitializer }, align 32
@kirkwood_i2s_dev_probe._entry_ptr.17 = internal global ptr @kirkwood_i2s_dev_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2s\00", [28 x i8] zeroinitializer }, align 32
@kirkwood_i2s_dai_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr @kirkwood_i2s_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @kirkwood_i2s_startup, ptr null, ptr @kirkwood_i2s_hw_params, ptr null, ptr null, ptr @kirkwood_i2s_trigger, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@kirkwood_set_rate.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.3, ptr @.str.22, i8 0, i8 27, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"snd_soc_kirkwood\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kirkwood_set_rate\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: dco set rate = %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@kirkwood_set_rate.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.3, ptr @.str.23, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: extclk set rate = %lu -> %lu\0A\00", [62 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@kirkwood_i2s_play_trigger._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.3, i32 253, ptr @.str.26, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"timed out waiting for busy to deassert: %08x\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"kirkwood_i2s_play_trigger\00", [38 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@kirkwood_i2s_play_trigger._entry_ptr = internal global ptr @kirkwood_i2s_play_trigger._entry, section ".printk_index", align 4
@switch.table.kirkwood_i2s_set_fmt = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 335544320, i32 536870912, i32 0], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 6, i64 10]
@__sancov_gen_cov_switch_values.27 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.28 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.29 = private unnamed_addr constant [20 x i8] c"kirkwood_i2s_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 631, i32 31 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 635, i32 11 }
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"mvebu_audio_of_match\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 622, i32 34 }
@___asan_gen_.38 = private unnamed_addr constant [17 x i8] c"kirkwood_i2s_dai\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 435, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 548, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 552, i32 44 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 554, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 558, i32 42 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 567, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [24 x i8] c"kirkwood_i2s_dai_extclk\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 476, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 593, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 437, i32 10 }
@___asan_gen_.92 = private unnamed_addr constant [21 x i8] c"kirkwood_i2s_dai_ops\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 428, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 456, i32 10 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 107, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 115, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [37 x i8] c"../sound/soc/kirkwood/kirkwood-i2s.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 252, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant [34 x i8] c"switch.table.kirkwood_i2s_set_fmt\00", align 1
@llvm.compiler.used = appending global [45 x ptr] [ptr @__UNIQUE_ID_alias245, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_kirkwood_i2s_driver_exit, ptr @__initcall__kmod_snd_soc_kirkwood__240_640_kirkwood_i2s_driver_init6, ptr @kirkwood_i2s_dev_probe._entry, ptr @kirkwood_i2s_dev_probe._entry.11, ptr @kirkwood_i2s_dev_probe._entry.15, ptr @kirkwood_i2s_dev_probe._entry.7, ptr @kirkwood_i2s_dev_probe._entry_ptr, ptr @kirkwood_i2s_dev_probe._entry_ptr.14, ptr @kirkwood_i2s_dev_probe._entry_ptr.17, ptr @kirkwood_i2s_dev_probe._entry_ptr.9, ptr @kirkwood_i2s_driver_exit, ptr @kirkwood_i2s_play_trigger._entry, ptr @kirkwood_i2s_play_trigger._entry_ptr, ptr @kirkwood_i2s_driver, ptr @.str, ptr @mvebu_audio_of_match, ptr @kirkwood_i2s_dai, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @kirkwood_i2s_dai_extclk, ptr @.str.16, ptr @.str.18, ptr @kirkwood_i2s_dai_ops, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @switch.table.kirkwood_i2s_set_fmt], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_i2s_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mvebu_audio_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_i2s_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_i2s_dev_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_i2s_dev_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_i2s_dev_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_i2s_dai_extclk to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_i2s_dev_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_i2s_dai_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kirkwood_i2s_play_trigger._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.kirkwood_i2s_set_fmt to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_i2s_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @kirkwood_i2s_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kirkwood_i2s_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @kirkwood_i2s_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_i2s_dev_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %driver_data.i, align 4
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then7, label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call4 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call11 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  %irq = getelementptr inbounds %struct.kirkwood_dma_data, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call11, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %tobool16.not = icmp eq ptr %3, null
  br i1 %tobool16.not, label %if.else, label %if.end15.if.end25_crit_edge

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.else:                                          ; preds = %if.end15
  %tobool18.not = icmp eq ptr %1, null
  br i1 %tobool18.not, label %do.end, label %if.then19

if.then19:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  br label %if.end25

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end25:                                         ; preds = %if.then19, %if.end15.if.end25_crit_edge
  %.sink = phi i32 [ %9, %if.then19 ], [ 128, %if.end15.if.end25_crit_edge ]
  %cond = phi ptr [ null, %if.then19 ], [ @.str.6, %if.end15.if.end25_crit_edge ]
  %burst21 = getelementptr inbounds %struct.kirkwood_dma_data, ptr %call.i, i32 0, i32 8
  %10 = ptrtoint ptr %burst21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %.sink, ptr %burst21, align 4
  %call28 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef %cond) #7
  %clk = getelementptr inbounds %struct.kirkwood_dma_data, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call28, ptr %clk, align 4
  %cmp.i154 = icmp ugt ptr %call28, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i154, label %do.end34, label %if.end38

do.end34:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %clk, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end25
  %call40 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.10) #7
  %extclk = getelementptr inbounds %struct.kirkwood_dma_data, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %extclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call40, ptr %extclk, align 4
  %cmp.i155 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i155, label %if.then43, label %if.else49

if.then43:                                        ; preds = %if.end38
  %cmp46 = icmp eq ptr %call40, inttoptr (i32 -517 to ptr)
  br i1 %cmp46, label %if.then43.cleanup_crit_edge, label %if.then43.if.end66_crit_edge

if.then43.if.end66_crit_edge:                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

if.then43.cleanup_crit_edge:                      ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else49:                                        ; preds = %if.end38
  %16 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk, align 4
  %call52 = tail call zeroext i1 @clk_is_match(ptr noundef %call40, ptr noundef %17) #7
  br i1 %call52, label %if.then53, label %do.end61

if.then53:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %extclk, align 4
  tail call void @devm_clk_put(ptr noundef %dev, ptr noundef %19) #7
  %20 = ptrtoint ptr %extclk to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -22 to ptr), ptr %extclk, align 4
  br label %if.end66

do.end61:                                         ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  %21 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %extclk, align 4
  %call64 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %22)
  br label %if.end66

if.end66:                                         ; preds = %do.end61, %if.then53, %if.then43.if.end66_crit_edge
  %soc_dai.0 = phi ptr [ @kirkwood_i2s_dai, %if.then43.if.end66_crit_edge ], [ @kirkwood_i2s_dai, %if.then53 ], [ @kirkwood_i2s_dai_extclk, %do.end61 ]
  %23 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk, align 4
  %call.i156 = tail call i32 @clk_prepare(ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i156)
  %tobool.not.i = icmp eq i32 %call.i156, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end66.clk_prepare_enable.exit_crit_edge

if.end66.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end66
  %call1.i = tail call i32 @clk_enable(ptr noundef %24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end71_crit_edge, label %if.then3.i

if.end.i.if.end71_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %24) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end66.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i156, %if.end66.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp69 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp69, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end71_crit_edge

clk_prepare_enable.exit.if.end71_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end71:                                         ; preds = %clk_prepare_enable.exit.if.end71_crit_edge, %if.end.i.if.end71_crit_edge
  %ctl_play = getelementptr inbounds %struct.kirkwood_dma_data, ptr %call.i, i32 0, i32 3
  %ctl_rec = getelementptr inbounds %struct.kirkwood_dma_data, ptr %call.i, i32 0, i32 4
  %burst72 = getelementptr inbounds %struct.kirkwood_dma_data, ptr %call.i, i32 0, i32 8
  %25 = ptrtoint ptr %burst72 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %burst72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %26)
  %cmp73 = icmp eq i32 %26, 32
  %. = select i1 %cmp73, i32 2049, i32 4097
  %.161 = select i1 %cmp73, i32 33, i32 65
  %27 = ptrtoint ptr %ctl_play to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %., ptr %ctl_play, align 4
  %28 = ptrtoint ptr %ctl_rec to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.161, ptr %ctl_rec, align 4
  %call85 = tail call i32 @snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @kirkwood_soc_component, ptr noundef nonnull %soc_dai.0, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end92, label %do.end90

do.end90:                                         ; preds = %if.end71
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  %29 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %extclk, align 4
  %cmp.i157 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i157, label %do.end90.if.end98_crit_edge, label %if.then96

do.end90.if.end98_crit_edge:                      ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end98

if.end92:                                         ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !76
  tail call void @arm_heavy_mb() #7
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %add.ptr.i = getelementptr i8, ptr %32, i32 4872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %call.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %34, i32 4876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 0) #7, !srcloc !77
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %36, i32 4608
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !80
  %38 = and i32 %37, 130075903
  %39 = or i32 %38, 404558080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !81
  tail call void @arm_heavy_mb() #7
  %40 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %call.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %41, i32 4608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 %39) #7, !srcloc !77
  tail call void @msleep(i32 noundef 500) #7
  %42 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call.i, align 4
  %add.ptr17.i = getelementptr i8, ptr %43, i32 4608
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !82
  %45 = and i32 %44, 130075903
  %46 = or i32 %45, 404558080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !83
  tail call void @arm_heavy_mb() #7
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %add.ptr27.i = getelementptr i8, ptr %48, i32 4608
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27.i, i32 %46) #7, !srcloc !77
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %add.ptr31.i = getelementptr i8, ptr %50, i32 4352
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !84
  %52 = and i32 %51, -402653185
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !85
  tail call void @arm_heavy_mb() #7
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %add.ptr40.i = getelementptr i8, ptr %54, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40.i, i32 %52) #7, !srcloc !77
  %55 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %call.i, align 4
  %add.ptr44.i = getelementptr i8, ptr %56, i32 4096
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  %58 = and i32 %57, -786433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !87
  tail call void @arm_heavy_mb() #7
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %add.ptr53.i = getelementptr i8, ptr %60, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr53.i, i32 %58) #7, !srcloc !77
  br label %cleanup

if.then96:                                        ; preds = %do.end90
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %30) #7
  tail call void @clk_unprepare(ptr noundef %30) #7
  br label %if.end98

if.end98:                                         ; preds = %if.then96, %do.end90.if.end98_crit_edge
  %61 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %62) #7
  tail call void @clk_unprepare(ptr noundef %62) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end98, %if.end92, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then43.cleanup_crit_edge, %do.end34, %do.end, %if.end10.cleanup_crit_edge, %if.then7, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %if.then7 ], [ %14, %do.end34 ], [ %call85, %if.end98 ], [ 0, %if.end92 ], [ -22, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end10.cleanup_crit_edge ], [ -517, %if.then43.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_i2s_dev_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  tail call void @snd_soc_unregister_component(ptr noundef %dev) #7
  %extclk = getelementptr inbounds %struct.kirkwood_dma_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %extclk, align 4
  %cmp.i = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_disable(ptr noundef %3) #7
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.kirkwood_dma_data, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @clk_is_match(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_clk_put(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_i2s_set_fmt(ptr nocapture noundef readonly %cpu_dai, i32 noundef %fmt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %fmt, 15
  %switch.tableidx = add nsw i32 %and, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 3
  br i1 %0, label %switch.lookup, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %cpu_dai, i32 0, i32 2
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.kirkwood_i2s_set_fmt, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %4, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 9480
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !88
  %9 = and i32 %8, -61
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %or = or i32 %10, %switch.load
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  tail call void @arm_heavy_mb() #7
  %11 = tail call i32 @llvm.bswap.i32(i32 %or)
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %4, align 4
  %add.ptr7 = getelementptr i8, ptr %13, i32 9480
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %11) #7, !srcloc !77
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %4, align 4
  %add.ptr11 = getelementptr i8, ptr %15, i32 9224
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %17 = and i32 %16, -61
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %or16 = or i32 %18, %switch.load
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %or16)
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %4, align 4
  %add.ptr21 = getelementptr i8, ptr %21, i32 9224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %19) #7, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @kirkwood_i2s_startup(ptr nocapture noundef readonly %substream, ptr nocapture noundef %dai) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  %capture_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 8
  %playback_dma_data.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 7
  %capture_dma_data.sink.i = select i1 %cmp.i, ptr %playback_dma_data.i, ptr %capture_dma_data.i
  %6 = ptrtoint ptr %capture_dma_data.sink.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %capture_dma_data.sink.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_i2s_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %4 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %. = select i1 %cmp, i32 9480, i32 9224
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  tail call fastcc void @kirkwood_set_rate(ptr noundef %dai, ptr noundef %3, i32 noundef %7)
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %3, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 %.
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %11 = and i32 %10, -193
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %arrayidx.i.i52 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %arrayidx.i.i52 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.params_format.exit_crit_edge

entry.params_format.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 1, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.1.i.i = icmp eq i32 %16, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.cleanup_crit_edge, label %for.inc.i.i.params_format.exit_crit_edge

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

for.inc.i.i.cleanup_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %entry.params_format.exit_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.params_format.exit_crit_edge ], [ 32, %for.inc.i.i.params_format.exit_crit_edge ]
  %.lcssa.i.i = phi i32 [ %14, %entry.params_format.exit_crit_edge ], [ %16, %for.inc.i.i.params_format.exit_crit_edge ]
  %17 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !93
  %add.i.i = or i32 %17, %i.09.lcssa.i.i
  %18 = zext i32 %add.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %add.i.i, label %params_format.exit.cleanup_crit_edge [
    i32 2, label %sw.bb
    i32 6, label %sw.bb5
    i32 10, label %params_format.exit.sw.epilog_crit_edge
  ]

params_format.exit.sw.epilog_crit_edge:           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

params_format.exit.cleanup_crit_edge:             ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or = or i32 %12, -1073741824
  br label %sw.epilog

sw.bb5:                                           ; preds = %params_format.exit
  call void @__sanitizer_cov_trace_pc() #9
  %or6 = or i32 %12, 1073741824
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb, %params_format.exit.sw.epilog_crit_edge
  %i2s_value.0 = phi i32 [ %or6, %sw.bb5 ], [ %or, %sw.bb ], [ %12, %params_format.exit.sw.epilog_crit_edge ]
  %ctl_rec.0 = phi i32 [ 3073, %sw.bb5 ], [ 3075, %sw.bb ], [ 1024, %params_format.exit.sw.epilog_crit_edge ]
  %ctl_play.0 = phi i32 [ 25, %sw.bb5 ], [ 27, %sw.bb ], [ 8, %params_format.exit.sw.epilog_crit_edge ]
  %19 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp10 = icmp eq i32 %20, 0
  br i1 %cmp10, label %if.then11, label %if.else23

if.then11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i53 = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 2
  %21 = ptrtoint ptr %arrayidx.i.i53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %22)
  %cmp13 = icmp eq i32 %22, 1
  %or15 = or i32 %ctl_play.0, 96
  %ctl_play.1 = select i1 %cmp13, i32 %or15, i32 %ctl_play.0
  %ctl_play19 = getelementptr inbounds %struct.kirkwood_dma_data, ptr %3, i32 0, i32 3
  br label %do.body

if.else23:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %ctl_rec24 = getelementptr inbounds %struct.kirkwood_dma_data, ptr %3, i32 0, i32 4
  br label %do.body

do.body:                                          ; preds = %if.else23, %if.then11
  %ctl_play19.sink56 = phi ptr [ %ctl_play19, %if.then11 ], [ %ctl_rec24, %if.else23 ]
  %.sink55 = phi i32 [ -128, %if.then11 ], [ -3080, %if.else23 ]
  %ctl_play.1.sink = phi i32 [ %ctl_play.1, %if.then11 ], [ %ctl_rec.0, %if.else23 ]
  %23 = ptrtoint ptr %ctl_play19.sink56 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ctl_play19.sink56, align 4
  %and20 = and i32 %24, %.sink55
  %or22 = or i32 %and20, %ctl_play.1.sink
  store i32 %or22, ptr %ctl_play19.sink56, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %25 = tail call i32 @llvm.bswap.i32(i32 %i2s_value.0)
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %add.ptr30 = getelementptr i8, ptr %27, i32 %.
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %25) #7, !srcloc !77
  br label %cleanup

cleanup:                                          ; preds = %do.body, %params_format.exit.cleanup_crit_edge, %for.inc.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -22, %params_format.exit.cleanup_crit_edge ], [ -22, %for.inc.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kirkwood_i2s_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %stream = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 5
  %0 = ptrtoint ptr %stream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %stream, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %runtime1.i = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1.i, align 4
  %dev.i.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 4352
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !79
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !95
  %and.i = and i32 %11, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %if.then.do.body.i_crit_edge, label %if.then.if.end22.i_crit_edge

if.then.if.end22.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then.do.body.i_crit_edge:                      ; preds = %if.then
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.then.do.body.i_crit_edge
  %timeout.0.i = phi i32 [ %dec.i, %if.end.i.do.body.i_crit_edge ], [ 5000, %if.then.do.body.i_crit_edge ]
  %ctl.0.i = phi i32 [ %15, %if.end.i.do.body.i_crit_edge ], [ %11, %if.then.do.body.i_crit_edge ]
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %7, align 4
  %add.ptr7.i = getelementptr i8, ptr %13, i32 4352
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !79
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !96
  %or.i = or i32 %15, %ctl.0.i
  %and11.i = and i32 %or.i, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool.not.i, label %do.body.i.if.end22.i_crit_edge, label %if.end.i

do.body.i.if.end22.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #7
  %dec.i = add nsw i32 %timeout.0.i, -1
  %tobool13.not.i = icmp eq i32 %timeout.0.i, 0
  br i1 %tobool13.not.i, label %do.end20.critedge.i, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

do.end20.critedge.i:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %18, ptr noundef nonnull @.str.24, i32 noundef %15) #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end20.critedge.i, %do.body.i.if.end22.i_crit_edge, %if.then.if.end22.i_crit_edge
  %ctl.1.i = phi i32 [ %11, %if.then.if.end22.i_crit_edge ], [ %15, %do.end20.critedge.i ], [ %15, %do.body.i.if.end22.i_crit_edge ]
  %19 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %cmd, label %if.end22.i.return_crit_edge [
    i32 1, label %sw.bb.i
    i32 0, label %sw.bb56.i
    i32 3, label %if.end22.i.sw.bb82.i_crit_edge
    i32 5, label %if.end22.i.sw.bb82.i_crit_edge20
    i32 6, label %if.end22.i.sw.bb89.i_crit_edge
    i32 4, label %if.end22.i.sw.bb89.i_crit_edge21
  ]

if.end22.i.sw.bb89.i_crit_edge21:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb89.i

if.end22.i.sw.bb89.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb89.i

if.end22.i.sw.bb82.i_crit_edge20:                 ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb82.i

if.end22.i.sw.bb82.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb82.i

if.end22.i.return_crit_edge:                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.i:                                          ; preds = %if.end22.i
  %ctl_play.i = getelementptr inbounds %struct.kirkwood_dma_data, ptr %7, i32 0, i32 3
  %20 = ptrtoint ptr %ctl_play.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ctl_play.i, align 4
  %id.i = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %22 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp23.i = icmp eq i32 %23, 0
  %ctl.2.v.i = select i1 %cmp23.i, i32 -17, i32 -9
  %ctl.2.i = and i32 %ctl.2.v.i, %21
  %and.i.i = shl i32 %ctl.2.i, 4
  %24 = and i32 %and.i.i, 128
  %25 = xor i32 %24, 128
  %26 = or i32 %25, %ctl.2.i
  %27 = and i32 %and.i.i, 256
  %28 = xor i32 %27, 256
  %29 = or i32 %26, %28
  %and29.i = and i32 %29, -25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !97
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %and29.i) #7
  %31 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %7, align 4
  %add.ptr34.i = getelementptr i8, ptr %32, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %30) #7, !srcloc !77
  %no_period_wakeup.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 26
  %33 = ptrtoint ptr %no_period_wakeup.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load.i = load i8, ptr %no_period_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool35.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool35.not.i, label %if.then36.i, label %sw.bb.i.do.body51.i_crit_edge

sw.bb.i.do.body51.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body51.i

if.then36.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %7, align 4
  %add.ptr40.i = getelementptr i8, ptr %35, i32 4876
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  %37 = or i32 %36, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !99
  tail call void @arm_heavy_mb() #7
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %7, align 4
  %add.ptr49.i = getelementptr i8, ptr %39, i32 4876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49.i, i32 %37) #7, !srcloc !77
  br label %do.body51.i

do.body51.i:                                      ; preds = %if.then36.i, %sw.bb.i.do.body51.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %41 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %7, align 4
  %add.ptr55.i = getelementptr i8, ptr %42, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55.i, i32 %40) #7, !srcloc !77
  br label %return

sw.bb56.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %or57.i = or i32 %ctl.1.i, 896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %or57.i) #7
  %44 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %7, align 4
  %add.ptr62.i = getelementptr i8, ptr %45, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62.i, i32 %43) #7, !srcloc !77
  %46 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %7, align 4
  %add.ptr66.i = getelementptr i8, ptr %47, i32 4876
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr66.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  %49 = and i32 %48, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %50 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %7, align 4
  %add.ptr75.i = getelementptr i8, ptr %51, i32 4876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr75.i, i32 %49) #7, !srcloc !77
  %and76.i = and i32 %or57.i, -25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  tail call void @arm_heavy_mb() #7
  %52 = tail call i32 @llvm.bswap.i32(i32 %and76.i) #7
  %53 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %7, align 4
  %add.ptr81.i = getelementptr i8, ptr %54, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr81.i, i32 %52) #7, !srcloc !77
  br label %return

sw.bb82.i:                                        ; preds = %if.end22.i.sw.bb82.i_crit_edge, %if.end22.i.sw.bb82.i_crit_edge20
  %or83.i = or i32 %ctl.1.i, 896
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %55 = tail call i32 @llvm.bswap.i32(i32 %or83.i) #7
  %56 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %7, align 4
  %add.ptr88.i = getelementptr i8, ptr %57, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr88.i, i32 %55) #7, !srcloc !77
  br label %return

sw.bb89.i:                                        ; preds = %if.end22.i.sw.bb89.i_crit_edge, %if.end22.i.sw.bb89.i_crit_edge21
  %and90.i = and i32 %ctl.1.i, -897
  %and.i138.i = shl i32 %and90.i, 4
  %58 = and i32 %and.i138.i, 128
  %59 = or i32 %58, %and90.i
  %60 = and i32 %and.i138.i, 256
  %61 = or i32 %59, %60
  %62 = xor i32 %61, 384
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #7
  %64 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %7, align 4
  %add.ptr96.i = getelementptr i8, ptr %65, i32 4352
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96.i, i32 %63) #7, !srcloc !77
  br label %return

if.else:                                          ; preds = %entry
  %dev.i.i6 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %66 = ptrtoint ptr %dev.i.i6 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i.i6, align 4
  %driver_data.i.i.i7 = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 8
  %68 = ptrtoint ptr %driver_data.i.i.i7 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data.i.i.i7, align 4
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %69, align 4
  %add.ptr.i8 = getelementptr i8, ptr %71, i32 4096
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i8) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %73 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %cmd, label %if.else.return_crit_edge [
    i32 1, label %sw.bb.i12
    i32 0, label %sw.bb24.i
    i32 3, label %if.else.sw.bb64.i_crit_edge
    i32 5, label %if.else.sw.bb64.i_crit_edge22
    i32 6, label %if.else.sw.bb78.i_crit_edge
    i32 4, label %if.else.sw.bb78.i_crit_edge23
  ]

if.else.sw.bb78.i_crit_edge23:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78.i

if.else.sw.bb78.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb78.i

if.else.sw.bb64.i_crit_edge22:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb64.i

if.else.sw.bb64.i_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb64.i

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb.i12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %ctl_rec.i = getelementptr inbounds %struct.kirkwood_dma_data, ptr %69, i32 0, i32 4
  %74 = ptrtoint ptr %ctl_rec.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ctl_rec.i, align 4
  %id.i9 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 1
  %76 = ptrtoint ptr %id.i9 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id.i9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %cmp.i10 = icmp eq i32 %77, 0
  %ctl.0.v.i = select i1 %cmp.i10, i32 -2049, i32 -1025
  %ctl.0.i11 = and i32 %ctl.0.v.i, %75
  %and4.i = and i32 %75, -3073
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  tail call void @arm_heavy_mb() #7
  %78 = tail call i32 @llvm.bswap.i32(i32 %and4.i) #7
  %79 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %69, align 4
  %add.ptr6.i = getelementptr i8, ptr %80, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %78) #7, !srcloc !77
  %81 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %69, align 4
  %add.ptr10.i = getelementptr i8, ptr %82, i32 4876
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  %84 = or i32 %83, 2097152
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %85 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %69, align 4
  %add.ptr18.i = getelementptr i8, ptr %86, i32 4876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18.i, i32 %84) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %87 = tail call i32 @llvm.bswap.i32(i32 %ctl.0.i11) #7
  %88 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %69, align 4
  %add.ptr23.i = getelementptr i8, ptr %89, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23.i, i32 %87) #7, !srcloc !77
  br label %return

sw.bb24.i:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %90 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %69, align 4
  %add.ptr28.i = getelementptr i8, ptr %91, i32 4096
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  %93 = or i32 %92, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %94 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %69, align 4
  %add.ptr37.i = getelementptr i8, ptr %95, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %93) #7, !srcloc !77
  %96 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %69, align 4
  %add.ptr41.i = getelementptr i8, ptr %97, i32 4876
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  %99 = and i32 %98, -2097153
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  tail call void @arm_heavy_mb() #7
  %100 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %69, align 4
  %add.ptr50.i = getelementptr i8, ptr %101, i32 4876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50.i, i32 %99) #7, !srcloc !77
  %102 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %69, align 4
  %add.ptr54.i = getelementptr i8, ptr %103, i32 4096
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !116
  %105 = and i32 %104, -786433
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %106 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %69, align 4
  %add.ptr63.i = getelementptr i8, ptr %107, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63.i, i32 %105) #7, !srcloc !77
  br label %return

sw.bb64.i:                                        ; preds = %if.else.sw.bb64.i_crit_edge, %if.else.sw.bb64.i_crit_edge22
  %108 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %69, align 4
  %add.ptr68.i = getelementptr i8, ptr %109, i32 4096
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr68.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %111 = or i32 %110, 196608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  tail call void @arm_heavy_mb() #7
  %112 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %69, align 4
  %add.ptr77.i = getelementptr i8, ptr %113, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr77.i, i32 %111) #7, !srcloc !77
  br label %return

sw.bb78.i:                                        ; preds = %if.else.sw.bb78.i_crit_edge, %if.else.sw.bb78.i_crit_edge23
  %114 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %69, align 4
  %add.ptr82.i = getelementptr i8, ptr %115, i32 4096
  %116 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr82.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  %117 = and i32 %116, -196609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %118 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %69, align 4
  %add.ptr91.i = getelementptr i8, ptr %119, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr91.i, i32 %117) #7, !srcloc !77
  br label %return

return:                                           ; preds = %sw.bb78.i, %sw.bb64.i, %sw.bb24.i, %sw.bb.i12, %if.else.return_crit_edge, %sw.bb89.i, %sw.bb82.i, %sw.bb56.i, %do.body51.i, %if.end22.i.return_crit_edge
  %retval.0 = phi i32 [ -22, %if.end22.i.return_crit_edge ], [ 0, %sw.bb89.i ], [ 0, %sw.bb82.i ], [ 0, %sw.bb56.i ], [ 0, %do.body51.i ], [ -22, %if.else.return_crit_edge ], [ 0, %sw.bb78.i ], [ 0, %sw.bb64.i ], [ 0, %sw.bb24.i ], [ 0, %sw.bb.i12 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @kirkwood_set_rate(ptr nocapture noundef readonly %dai, ptr nocapture noundef readonly %priv, i32 noundef %rate) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %extclk = getelementptr inbounds %struct.kirkwood_dma_data, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extclk, align 4
  %cmp.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %do.body5

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kirkwood_set_rate.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kirkwood_set_rate, %if.then4)) #7
          to label %do.end [label %if.then4], !srcloc !122

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kirkwood_set_rate.__UNIQUE_ID_ddebug238, ptr noundef %3, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef %rate) #7
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %rate)
  %switch.selectcmp.i = icmp eq i32 %rate, 48000
  %switch.select.i = select i1 %switch.selectcmp.i, i32 8193, i32 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 96000, i32 %rate)
  %switch.selectcmp25.i = icmp eq i32 %rate, 96000
  %switch.select26.i = select i1 %switch.selectcmp25.i, i32 8194, i32 %switch.select.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !123
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %switch.select26.i) #7
  %add.ptr.i = getelementptr i8, ptr %5, i32 4612
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !77
  %add.ptr15.i = getelementptr i8, ptr %5, i32 4620
  br label %do.body5.i

do.body5.i:                                       ; preds = %do.body5.i.do.body5.i_crit_edge, %do.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !124
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !125
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15.i) #7, !srcloc !79
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  %8 = and i32 %7, 256
  %cmp.i41 = icmp eq i32 %8, 0
  br i1 %cmp.i41, label %do.body5.i.do.body5.i_crit_edge, label %do.body5.i.do.body26_crit_edge

do.body5.i.do.body26_crit_edge:                   ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

do.body5.i.do.body5.i_crit_edge:                  ; preds = %do.body5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body5.i

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @kirkwood_set_rate.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@kirkwood_set_rate, %if.then17)) #7
          to label %do.end21 [label %if.then17], !srcloc !122

if.then17:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %dev18 = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 2
  %9 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev18, align 4
  %mul = shl i32 %rate, 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @kirkwood_set_rate.__UNIQUE_ID_ddebug239, ptr noundef %10, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef %rate, i32 noundef %mul) #7
  br label %do.end21

do.end21:                                         ; preds = %if.then17, %do.body5
  %11 = ptrtoint ptr %extclk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %extclk, align 4
  %mul23 = shl i32 %rate, 8
  %call24 = tail call i32 @clk_set_rate(ptr noundef %12, i32 noundef %mul23) #7
  br label %do.body26

do.body26:                                        ; preds = %do.end21, %do.body5.i.do.body26_crit_edge
  %clks_ctrl.0 = phi i32 [ 50331648, %do.end21 ], [ 0, %do.body5.i.do.body26_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  tail call void @arm_heavy_mb() #7
  %13 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 4656
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %clks_ctrl.0) #7, !srcloc !77
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_unregister_component(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45, !47, !49, !51, !52, !53, !54, !56, !57, !59, !60, !61, !62, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_snd_soc_kirkwood__240_640_kirkwood_i2s_driver_init6, !1, !"__initcall__kmod_snd_soc_kirkwood__240_640_kirkwood_i2s_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 640, i32 1}
!2 = !{ptr @__exitcall_kirkwood_i2s_driver_exit, !1, !"__exitcall_kirkwood_i2s_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 643, i32 1}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 644, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 645, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias245, !11, !"__UNIQUE_ID_alias245", i1 false, i1 false}
!11 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 646, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 635, i32 11}
!14 = !{ptr @kirkwood_i2s_driver, !15, !"kirkwood_i2s_driver", i1 false, i1 false}
!15 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 631, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 548, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @kirkwood_i2s_dev_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @kirkwood_i2s_dev_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 552, i32 44}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 554, i32 3}
!28 = !{ptr @kirkwood_i2s_dev_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @kirkwood_i2s_dev_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 558, i32 42}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 567, i32 4}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @kirkwood_i2s_dev_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @kirkwood_i2s_dev_probe._entry_ptr.14, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 593, i32 3}
!39 = !{ptr @kirkwood_i2s_dev_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @kirkwood_i2s_dev_probe._entry_ptr.17, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 437, i32 10}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 456, i32 10}
!45 = !{ptr @kirkwood_i2s_dai, !46, !"kirkwood_i2s_dai", i1 false, i1 false}
!46 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 435, i32 34}
!47 = !{ptr @kirkwood_i2s_dai_ops, !48, !"kirkwood_i2s_dai_ops", i1 false, i1 false}
!48 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 428, i32 37}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 107, i32 3}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @kirkwood_set_rate.__UNIQUE_ID_ddebug238, !50, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 115, i32 3}
!56 = !{ptr @kirkwood_set_rate.__UNIQUE_ID_ddebug239, !55, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 252, i32 4}
!59 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @kirkwood_i2s_play_trigger._entry, !58, !"_entry", i1 false, i1 false}
!62 = !{ptr @kirkwood_i2s_play_trigger._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @kirkwood_i2s_dai_extclk, !64, !"kirkwood_i2s_dai_extclk", i1 false, i1 false}
!64 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 476, i32 34}
!65 = !{ptr @mvebu_audio_of_match, !66, !"mvebu_audio_of_match", i1 false, i1 false}
!66 = !{!"../sound/soc/kirkwood/kirkwood-i2s.c", i32 622, i32 34}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i64 2154834323}
!77 = !{i64 4798796}
!78 = !{i64 2154834738}
!79 = !{i64 4799214}
!80 = !{i64 2154835393}
!81 = !{i64 2154835612}
!82 = !{i64 2154836288}
!83 = !{i64 2154836507}
!84 = !{i64 2154837190}
!85 = !{i64 2154837490}
!86 = !{i64 2154838164}
!87 = !{i64 2154838464}
!88 = !{i64 2154810060}
!89 = !{i64 2154810292}
!90 = !{i64 2154810961}
!91 = !{i64 2154811193}
!92 = !{i64 2154818436}
!93 = !{i32 0, i32 33}
!94 = !{i64 2154819090}
!95 = !{i64 2154819803}
!96 = !{i64 2154820373}
!97 = !{i64 2154823053}
!98 = !{i64 2154823727}
!99 = !{i64 2154823958}
!100 = !{i64 2154824360}
!101 = !{i64 2154824779}
!102 = !{i64 2154825447}
!103 = !{i64 2154825678}
!104 = !{i64 2154826157}
!105 = !{i64 2154826578}
!106 = !{i64 2154826999}
!107 = !{i64 2154827670}
!108 = !{i64 2154827988}
!109 = !{i64 2154828662}
!110 = !{i64 2154828893}
!111 = !{i64 2154829295}
!112 = !{i64 2154829965}
!113 = !{i64 2154830202}
!114 = !{i64 2154830876}
!115 = !{i64 2154831107}
!116 = !{i64 2154831781}
!117 = !{i64 2154832081}
!118 = !{i64 2154832759}
!119 = !{i64 2154832996}
!120 = !{i64 2154833674}
!121 = !{i64 2154833911}
!122 = !{i64 2148967942, i64 2148967947, i64 2148967960, i64 2148968004, i64 2148968038, i64 2148968059}
!123 = !{i64 2154811791}
!124 = !{i64 2154812241}
!125 = !{i64 2154812083}
!126 = !{i64 2154812710}
!127 = !{i64 2154817747}
