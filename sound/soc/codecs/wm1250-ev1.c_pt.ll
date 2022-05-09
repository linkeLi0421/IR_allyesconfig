; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm1250-ev1.c_pt.bc'
source_filename = "../sound/soc/codecs/wm1250-ev1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.106, ptr }
%union.anon.106 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.snd_soc_dai_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.gpio = type { i32, i32, ptr }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dai = type { ptr, i32, ptr, ptr, [2 x i32], ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i32, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_wm1250_ev1__294_255_wm1250_ev1_i2c_driver_init6 = internal global ptr @wm1250_ev1_i2c_driver_init, section ".initcall6.init", align 4
@wm1250_ev1_i2c_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @wm1250_ev1_probe, ptr @wm1250_ev1_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wm1250_ev1_i2c_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_wm1250_ev1_i2c_driver_exit = internal global ptr @wm1250_ev1_i2c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author295 = internal constant [75 x i8] c"snd_soc_wm1250_ev1.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [66 x i8] c"snd_soc_wm1250_ev1.description=WM1250-EV1 audio I/O module driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [60 x i8] c"snd_soc_wm1250_ev1.file=sound/soc/codecs/snd-soc-wm1250-ev1\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [31 x i8] c"snd_soc_wm1250_ev1.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm1250-ev1\00", [21 x i8] zeroinitializer }, align 32
@wm1250_ev1_i2c_id = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"wm1250-ev1\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@wm1250_ev1_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 204, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to read ID: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm1250_ev1_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/codecs/wm1250-ev1.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm1250_ev1_probe._entry_ptr = internal global ptr @wm1250_ev1_probe._entry, section ".printk_index", align 4
@wm1250_ev1_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 212, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Unknown board ID %d\0A\00", [43 x i8] zeroinitializer }, align 32
@wm1250_ev1_probe._entry_ptr.8 = internal global ptr @wm1250_ev1_probe._entry.6, section ".printk_index", align 4
@wm1250_ev1_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 216, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"revision %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@wm1250_ev1_probe._entry_ptr.12 = internal global ptr @wm1250_ev1_probe._entry.9, section ".printk_index", align 4
@soc_component_dev_wm1250_ev1 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @wm1250_ev1_dapm_widgets, i32 4, ptr @wm1250_ev1_dapm_routes, i32 2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm1250_ev1_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm1250_ev1_dai = internal global { %struct.snd_soc_dai_driver, [56 x i8] } { %struct.snd_soc_dai_driver { ptr @.str, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr @wm1250_ev1_ops, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.30, i64 4, i32 298, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.31, i64 4, i32 298, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm1250_ev1_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 225, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to register CODEC: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wm1250_ev1_probe._entry_ptr.15 = internal global ptr @wm1250_ev1_probe._entry.13, section ".printk_index", align 4
@wm1250_ev1_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to get GPIOs: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm1250_ev1_pdata\00", [47 x i8] zeroinitializer }, align 32
@wm1250_ev1_pdata._entry_ptr = internal global ptr @wm1250_ev1_pdata._entry, section ".printk_index", align 4
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"WM1250 CLK_ENA\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WM1250 CLK_SEL0\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"WM1250 CLK_SEL1\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WM1250 OSR\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WM1250 MASTER\00", [18 x i8] zeroinitializer }, align 32
@wm1250_ev1_dapm_routes = internal constant { [2 x %struct.snd_soc_dapm_route], [56 x i8] } { [2 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.23, ptr null, ptr @.str.27, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.28, ptr null, ptr @.str.25, ptr null, %struct.snd_soc_dobj zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ADC\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm1250-ev1 Capture\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DAC\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wm1250-ev1 Playback\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"WM1250 Input\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"WM1250 Output\00", [18 x i8] zeroinitializer }, align 32
@wm1250_ev1_dapm_widgets = internal constant { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [176 x i8] } { [4 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 8, ptr @.str.23, ptr @.str.24, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 9, ptr @.str.25, ptr @.str.26, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 0, ptr @.str.27, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 1, ptr @.str.28, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [176 x i8] zeroinitializer }, align 32
@wm1250_ev1_ops = internal constant { %struct.snd_soc_dai_ops, [32 x i8] } { %struct.snd_soc_dai_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm1250_ev1_hw_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i8 0 }, [32 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 8000, i64 16000, i64 32000, i64 64000]
@___asan_gen_.33 = private unnamed_addr constant [22 x i8] c"wm1250_ev1_i2c_driver\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 246, i32 26 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 248, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant [18 x i8] c"wm1250_ev1_i2c_id\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 240, i32 35 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 204, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 212, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 216, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [29 x i8] c"soc_component_dev_wm1250_ev1\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 139, i32 46 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"wm1250_ev1_dai\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 120, i32 34 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 225, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 175, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 19, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 20, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 21, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 22, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 23, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [23 x i8] c"wm1250_ev1_dapm_routes\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 70, i32 40 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 63, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 64, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 66, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 67, i32 1 }
@___asan_gen_.132 = private unnamed_addr constant [24 x i8] c"wm1250_ev1_dapm_widgets\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 62, i32 41 }
@___asan_gen_.135 = private unnamed_addr constant [15 x i8] c"wm1250_ev1_ops\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 113, i32 37 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 130, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.142 = private constant [33 x i8] c"../sound/soc/codecs/wm1250-ev1.c\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.142, i32 123, i32 18 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_wm1250_ev1_i2c_driver_exit, ptr @__initcall__kmod_snd_soc_wm1250_ev1__294_255_wm1250_ev1_i2c_driver_init6, ptr @wm1250_ev1_i2c_driver_exit, ptr @wm1250_ev1_pdata._entry, ptr @wm1250_ev1_pdata._entry_ptr, ptr @wm1250_ev1_probe._entry, ptr @wm1250_ev1_probe._entry.13, ptr @wm1250_ev1_probe._entry.6, ptr @wm1250_ev1_probe._entry.9, ptr @wm1250_ev1_probe._entry_ptr, ptr @wm1250_ev1_probe._entry_ptr.12, ptr @wm1250_ev1_probe._entry_ptr.15, ptr @wm1250_ev1_probe._entry_ptr.8, ptr @wm1250_ev1_i2c_driver, ptr @.str, ptr @wm1250_ev1_i2c_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @soc_component_dev_wm1250_ev1, ptr @wm1250_ev1_dai, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @wm1250_ev1_dapm_routes, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @wm1250_ev1_dapm_widgets, ptr @wm1250_ev1_ops, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1250_ev1_i2c_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1250_ev1_i2c_id to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1250_ev1_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1250_ev1_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1250_ev1_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm1250_ev1 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1250_ev1_dai to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1250_ev1_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1250_ev1_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1250_ev1_dapm_routes to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1250_ev1_dapm_widgets to i32), i32 720, i32 896, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm1250_ev1_ops to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm1250_ev1_i2c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @wm1250_ev1_i2c_driver) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm1250_ev1_i2c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @i2c_del_driver(ptr noundef nonnull @wm1250_ev1_i2c_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm1250_ev1_probe(ptr noundef %i2c, ptr nocapture noundef readnone %i2c_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %driver_data.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %driver_data.i, align 4
  %call = tail call i32 @i2c_smbus_read_byte_data(ptr noundef %i2c, i8 noundef zeroext 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = lshr i32 %call, 2
  %1 = and i32 %and, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3.not = icmp eq i32 %1, 1
  br i1 %cmp3.not, label %do.end12, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %1) #7
  br label %cleanup

do.end12:                                         ; preds = %if.end
  %and2 = and i32 %call, 3
  %add = add nuw nsw i32 %and2, 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %add) #7
  %platform_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 7
  %2 = ptrtoint ptr %platform_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end12.if.end17_crit_edge, label %if.end.i

do.end12.if.end17_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end17

if.end.i:                                         ; preds = %do.end12
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 60, i32 noundef 3520) #4
  %tobool3.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool3.not.i, label %if.end.i.cleanup_crit_edge, label %for.body.preheader.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.preheader.i:                             ; preds = %if.end.i
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %call.i.i, align 4
  %label.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 0, i32 2
  %7 = ptrtoint ptr %label.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.18, ptr %label.i, align 4
  %flags.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %flags.i, align 4
  %arrayidx.1.i = getelementptr [5 x i32], ptr %3, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1.i, align 4
  %arrayidx7.1.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %arrayidx7.1.i, align 4
  %label.1.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %label.1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.19, ptr %label.1.i, align 4
  %flags.1.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 1, i32 1
  %arrayidx.2.i = getelementptr [5 x i32], ptr %3, i32 0, i32 2
  %13 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.2.i, align 4
  %arrayidx7.2.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx7.2.i, align 4
  %label.2.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 2, i32 2
  %16 = ptrtoint ptr %label.2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.20, ptr %label.2.i, align 4
  %flags.2.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 2, i32 1
  %arrayidx.3.i = getelementptr [5 x i32], ptr %3, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.3.i, align 4
  %arrayidx7.3.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx7.3.i, align 4
  %label.3.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 3, i32 2
  %20 = ptrtoint ptr %label.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.21, ptr %label.3.i, align 4
  %flags.3.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %flags.3.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %flags.3.i, align 4
  %arrayidx.4.i = getelementptr [5 x i32], ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.4.i, align 4
  %arrayidx7.4.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %arrayidx7.4.i, align 4
  %label.4.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 4, i32 2
  %25 = ptrtoint ptr %label.4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.22, ptr %label.4.i, align 4
  %flags.4.i = getelementptr [5 x %struct.gpio], ptr %call.i.i, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %flags.4.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %flags.4.i, align 4
  %27 = ptrtoint ptr %flags.1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %flags.1.i, align 4
  %28 = ptrtoint ptr %flags.2.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %flags.2.i, align 4
  %call20.i = tail call i32 @gpio_request_array(ptr noundef nonnull %call.i.i, i32 noundef 5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.not.i = icmp eq i32 %call20.i, 0
  br i1 %cmp21.not.i, label %if.end24.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call20.i) #7
  br label %cleanup

if.end24.i:                                       ; preds = %for.body.preheader.i
  call void @__sanitizer_cov_trace_pc() #6
  %29 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i.i, ptr %driver_data.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.end24.i, %do.end12.if.end17_crit_edge
  %call19 = tail call i32 @devm_snd_soc_register_component(ptr noundef %dev, ptr noundef nonnull @soc_component_dev_wm1250_ev1, ptr noundef nonnull @wm1250_ev1_dai, i32 noundef 1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20.not = icmp eq i32 %call19, 0
  br i1 %cmp20.not, label %if.end17.cleanup_crit_edge, label %do.end24

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end24:                                         ; preds = %if.end17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call19) #7
  %30 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %driver_data.i, align 4
  %tobool.not.i48 = icmp eq ptr %31, null
  br i1 %tobool.not.i48, label %do.end24.cleanup_crit_edge, label %if.then.i

do.end24.cleanup_crit_edge:                       ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.i:                                        ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpio_free_array(ptr noundef nonnull %31, i32 noundef 5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %do.end24.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end.i, %if.end.i.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ %call, %do.end ], [ -19, %do.end7 ], [ 0, %if.end17.cleanup_crit_edge ], [ %call20.i, %do.end.i ], [ -12, %if.end.i.cleanup_crit_edge ], [ %call19, %do.end24.cleanup_crit_edge ], [ %call19, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm1250_ev1_remove(ptr nocapture noundef readonly %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.wm1250_ev1_free.exit_crit_edge, label %if.then.i

entry.wm1250_ev1_free.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %wm1250_ev1_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @gpio_free_array(ptr noundef nonnull %1, i32 noundef 5) #4
  br label %wm1250_ev1_free.exit

wm1250_ev1_free.exit:                             ; preds = %if.then.i, %entry.wm1250_ev1_free.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_byte_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpio_request_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm1250_ev1_set_bias_level(ptr nocapture noundef readonly %component, i32 noundef %level) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ena.0 = phi i32 [ %5, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %6 = zext i32 %level to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %if.end.sw.epilog_crit_edge [
    i32 0, label %sw.bb3
    i32 1, label %sw.bb
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ena.0)
  %cmp = icmp sgt i32 %ena.0, -1
  br i1 %cmp, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ena.0)
  %cmp4 = icmp sgt i32 %ena.0, -1
  br i1 %cmp4, label %sw.bb3.sw.epilog.sink.split_crit_edge, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb3.sw.epilog.sink.split_crit_edge:            ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb3.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %call.i11 = tail call ptr @gpio_to_desc(i32 noundef %ena.0) #4
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i11, i32 noundef %level) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb3.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm1250_ev1_hw_params(ptr nocapture noundef readnone %substream, ptr nocapture noundef readonly %params, ptr nocapture noundef readonly %dai) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %component = getelementptr inbounds %struct.snd_soc_dai, ptr %dai, i32 0, i32 12
  %0 = ptrtoint ptr %component to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %component, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %params, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 8000, label %entry.cleanup.sink.split_crit_edge
    i32 16000, label %sw.bb5
    i32 32000, label %sw.bb12
    i32 64000, label %sw.bb19
  ]

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb19, %sw.bb12, %sw.bb5, %entry.cleanup.sink.split_crit_edge
  %.sink41 = phi i32 [ 0, %sw.bb5 ], [ 1, %sw.bb12 ], [ 0, %sw.bb19 ], [ 1, %entry.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 1, %sw.bb5 ], [ 0, %sw.bb12 ], [ 0, %sw.bb19 ], [ 1, %entry.cleanup.sink.split_crit_edge ]
  %arrayidx = getelementptr [5 x %struct.gpio], ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %10) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i, i32 noundef %.sink41) #4
  %arrayidx3 = getelementptr [5 x %struct.gpio], ptr %5, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx3, align 4
  %call.i33 = tail call ptr @gpio_to_desc(i32 noundef %12) #4
  tail call void @gpiod_set_raw_value(ptr noundef %call.i33, i32 noundef %.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpio_free_array(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_snd_soc_wm1250_ev1__294_255_wm1250_ev1_i2c_driver_init6, !1, !"__initcall__kmod_snd_soc_wm1250_ev1__294_255_wm1250_ev1_i2c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 255, i32 1}
!2 = !{ptr @__exitcall_wm1250_ev1_i2c_driver_exit, !1, !"__exitcall_wm1250_ev1_i2c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author295, !4, !"__UNIQUE_ID_author295", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 257, i32 1}
!5 = !{ptr @__UNIQUE_ID_description296, !6, !"__UNIQUE_ID_description296", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 258, i32 1}
!7 = !{ptr @__UNIQUE_ID_file297, !8, !"__UNIQUE_ID_file297", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 259, i32 1}
!9 = !{ptr @__UNIQUE_ID_license298, !8, !"__UNIQUE_ID_license298", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 248, i32 11}
!12 = !{ptr @wm1250_ev1_i2c_driver, !13, !"wm1250_ev1_i2c_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 246, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 204, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @wm1250_ev1_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @wm1250_ev1_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 212, i32 3}
!24 = !{ptr @wm1250_ev1_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @wm1250_ev1_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 216, i32 2}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @wm1250_ev1_probe._entry.9, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @wm1250_ev1_probe._entry_ptr.12, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 225, i32 3}
!33 = !{ptr @wm1250_ev1_probe._entry.13, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @wm1250_ev1_probe._entry_ptr.15, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 175, i32 3}
!37 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @wm1250_ev1_pdata._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @wm1250_ev1_pdata._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 19, i32 2}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 20, i32 2}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 21, i32 2}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 22, i32 2}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 23, i32 2}
!50 = distinct !{null, !51, !"wm1250_gpio_names", i1 false, i1 false}
!51 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 18, i32 20}
!52 = !{ptr @soc_component_dev_wm1250_ev1, !53, !"soc_component_dev_wm1250_ev1", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 139, i32 46}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 63, i32 1}
!56 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 64, i32 1}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 66, i32 1}
!62 = !{ptr @.str.28, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 67, i32 1}
!64 = !{ptr @wm1250_ev1_dapm_widgets, !65, !"wm1250_ev1_dapm_widgets", i1 false, i1 false}
!65 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 62, i32 41}
!66 = !{ptr @wm1250_ev1_dapm_routes, !67, !"wm1250_ev1_dapm_routes", i1 false, i1 false}
!67 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 70, i32 40}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 130, i32 18}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 123, i32 18}
!72 = !{ptr @wm1250_ev1_dai, !73, !"wm1250_ev1_dai", i1 false, i1 false}
!73 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 120, i32 34}
!74 = !{ptr @wm1250_ev1_ops, !75, !"wm1250_ev1_ops", i1 false, i1 false}
!75 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 113, i32 37}
!76 = !{ptr @wm1250_ev1_i2c_id, !77, !"wm1250_ev1_i2c_id", i1 false, i1 false}
!77 = !{!"../sound/soc/codecs/wm1250-ev1.c", i32 240, i32 35}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
