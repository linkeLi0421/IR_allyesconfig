; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/wm0010.c_pt.bc'
source_filename = "../sound/soc/codecs/wm0010.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_soc_component_driver = type { ptr, ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, ptr, ptr, ptr, i8, i32 }
%struct.snd_soc_dai_driver = type { ptr, i32, i32, %struct.snd_soc_dobj, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_pcm_stream, %struct.snd_soc_pcm_stream, i8, i32, i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.104, ptr }
%struct.list_head = type { ptr, ptr }
%union.anon.104 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_stream = type { ptr, i64, i32, i32, i32, i32, i32, i32 }
%struct.snd_soc_dapm_route = type { ptr, ptr, ptr, ptr, %struct.snd_soc_dobj }
%struct.pll_clock_map = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.wm0010_priv = type { ptr, %struct.mutex, ptr, %struct.wm0010_pdata, i32, i32, [2 x %struct.regulator_bulk_data], ptr, i32, i32, i8, i8, i8, i32, i32, i32, %struct.spinlock, i32, %struct.completion }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.wm0010_pdata = type { i32, i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.dfw_binrec = type { i8, [3 x i8], i32, [0 x i8] }
%struct.wm0010_boot_xfer = type { %struct.list_head, ptr, ptr, %struct.spi_message, %struct.spi_transfer }

@__initcall__kmod_snd_soc_wm0010__312_995_wm0010_spi_driver_init6 = internal global ptr @wm0010_spi_driver_init, section ".initcall6.init", align 4
@wm0010_spi_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @wm0010_spi_probe, ptr @wm0010_spi_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_wm0010_spi_driver_exit = internal global ptr @wm0010_spi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description313 = internal constant [46 x i8] c"snd_soc_wm0010.description=ASoC WM0010 driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author314 = internal constant [71 x i8] c"snd_soc_wm0010.author=Mark Brown <broonie@opensource.wolfsonmicro.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file315 = internal constant [52 x i8] c"snd_soc_wm0010.file=sound/soc/codecs/snd-soc-wm0010\00", section ".modinfo", align 1
@__UNIQUE_ID_license316 = internal constant [27 x i8] c"snd_soc_wm0010.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm0010\00", [25 x i8] zeroinitializer }, align 32
@wm0010_spi_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&wm0010->lock\00", [18 x i8] zeroinitializer }, align 32
@wm0010_spi_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&wm0010->irq_lock\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"AVDD\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DCVDD\00", [26 x i8] zeroinitializer }, align 32
@wm0010_spi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 896, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to obtain core supplies: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"wm0010_spi_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sound/soc/codecs/wm0010.c\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm0010_spi_probe._entry_ptr = internal global ptr @wm0010_spi_probe._entry, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"DBVDD\00", [26 x i8] zeroinitializer }, align 32
@wm0010_spi_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.7, ptr @.str.8, i32 903, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to obtain DBVDD: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm0010_spi_probe._entry_ptr.14 = internal global ptr @wm0010_spi_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"wm0010 reset\00", [19 x i8] zeroinitializer }, align 32
@wm0010_spi_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.7, ptr @.str.8, i32 925, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to request GPIO for DSP reset: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@wm0010_spi_probe._entry_ptr.18 = internal global ptr @wm0010_spi_probe._entry.16, section ".printk_index", align 4
@wm0010_spi_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.8, i32 929, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No reset GPIO configured\0A\00", [38 x i8] zeroinitializer }, align 32
@wm0010_spi_probe._entry_ptr.21 = internal global ptr @wm0010_spi_probe._entry.19, section ".printk_index", align 4
@wm0010_spi_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.7, ptr @.str.8, i32 946, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@wm0010_spi_probe._entry_ptr.24 = internal global ptr @wm0010_spi_probe._entry.22, section ".printk_index", align 4
@wm0010_spi_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.7, ptr @.str.8, i32 954, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to set IRQ %d as wake source: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@wm0010_spi_probe._entry_ptr.27 = internal global ptr @wm0010_spi_probe._entry.25, section ".printk_index", align 4
@soc_component_dev_wm0010 = internal constant { %struct.snd_soc_component_driver, [36 x i8] } { %struct.snd_soc_component_driver { ptr null, ptr null, i32 0, ptr @wm0010_dapm_widgets, i32 1, ptr @wm0010_dapm_routes, i32 6, ptr @wm0010_probe, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm0010_set_sysclk, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm0010_set_bias_level, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, i8 28, ptr null, ptr null, ptr null, i8 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@wm0010_dai = internal global { [2 x %struct.snd_soc_dai_driver], [80 x i8] } { [2 x %struct.snd_soc_dai_driver] [%struct.snd_soc_dai_driver { ptr @.str.145, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.33, i64 68719477829, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.32, i64 68719477829, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }, %struct.snd_soc_dai_driver { ptr @.str.146, i32 0, i32 0, %struct.snd_soc_dobj zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_pcm_stream { ptr @.str.31, i64 68719477829, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, %struct.snd_soc_pcm_stream { ptr @.str.34, i64 68719477829, i32 192, i32 0, i32 0, i32 1, i32 2, i32 0 }, i8 0, i32 0, i32 0 }], [80 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@wm0010_dapm_routes = internal constant { [6 x %struct.snd_soc_dapm_route], [72 x i8] } { [6 x %struct.snd_soc_dapm_route] [%struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.32, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.34, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.33, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.31, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.32, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }, %struct.snd_soc_dapm_route { ptr @.str.34, ptr null, ptr @.str.29, ptr null, %struct.snd_soc_dobj zeroinitializer }], [72 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CLKIN\00", [26 x i8] zeroinitializer }, align 32
@wm0010_dapm_widgets = internal constant { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [44 x i8] } { [1 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 19, ptr @.str.29, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 1, i32 1, i32 0, i8 0, i8 0, i32 0, ptr null, i16 0, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SDI2 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SDI1 Playback\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"SDI1 Capture\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SDI2 Playback\00", [18 x i8] zeroinitializer }, align 32
@pll_clock_map = internal constant { [6 x %struct.pll_clock_map], [56 x i8] } { [6 x %struct.pll_clock_map] [%struct.pll_clock_map { i32 22000000, i32 26000000, i32 2105105 }, %struct.pll_clock_map { i32 18000000, i32 26000000, i32 2113313 }, %struct.pll_clock_map { i32 14000000, i32 26000000, i32 2106912 }, %struct.pll_clock_map { i32 10000000, i32 22000000, i32 2109728 }, %struct.pll_clock_map { i32 6500000, i32 22000000, i32 2114848 }, %struct.pll_clock_map { i32 5500000, i32 22000000, i32 1064720 }], [56 x i8] zeroinitializer }, align 32
@wm0010_boot._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.8, i32 583, ptr @.str.37, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DSP already powered up!\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm0010_boot\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@wm0010_boot._entry_ptr = internal global ptr @wm0010_boot._entry, section ".printk_index", align 4
@wm0010_boot._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.36, ptr @.str.8, i32 587, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Max DSP clock frequency is 26MHz\0A\00", [62 x i8] zeroinitializer }, align 32
@wm0010_boot._entry_ptr.40 = internal global ptr @wm0010_boot._entry.38, section ".printk_index", align 4
@wm0010_boot.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.36, ptr @.str.8, ptr @.str.42, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_wm0010\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"max_spi_freq: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wm0010_boot._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.36, ptr @.str.8, i32 601, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to enable core supplies: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wm0010_boot._entry_ptr.45 = internal global ptr @wm0010_boot._entry.43, section ".printk_index", align 4
@wm0010_boot._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.36, ptr @.str.8, i32 608, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable DBVDD: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm0010_boot._entry_ptr.48 = internal global ptr @wm0010_boot._entry.46, section ".printk_index", align 4
@wm0010_boot._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.36, ptr @.str.8, i32 620, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get interrupt from DSP\0A\00", [62 x i8] zeroinitializer }, align 32
@wm0010_boot._entry_ptr.51 = internal global ptr @wm0010_boot._entry.49, section ".printk_index", align 4
@wm0010_boot._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.36, ptr @.str.8, i32 632, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Failed to get interrupt from DSP loader.\0A\00", [54 x i8] zeroinitializer }, align 32
@wm0010_boot._entry_ptr.54 = internal global ptr @wm0010_boot._entry.52, section ".printk_index", align 4
@wm0010_boot._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.36, ptr @.str.8, i32 673, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"First PLL write failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@wm0010_boot._entry_ptr.57 = internal global ptr @wm0010_boot._entry.55, section ".printk_index", align 4
@wm0010_boot._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.36, ptr @.str.8, i32 680, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Second PLL write failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wm0010_boot._entry_ptr.60 = internal global ptr @wm0010_boot._entry.58, section ".printk_index", align 4
@wm0010_boot.__UNIQUE_ID_ddebug310 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.36, ptr @.str.8, ptr @.str.61, i8 0, i8 -84, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"PLL packet received\0A\00", [43 x i8] zeroinitializer }, align 32
@wm0010_boot.__UNIQUE_ID_ddebug311 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.36, ptr @.str.8, ptr @.str.62, i8 0, i8 -82, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Not enabling DSP PLL.\00", [42 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wm0010.dfw\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm0010_stage2.bin\00", [46 x i8] zeroinitializer }, align 32
@wm0010_stage2_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.8, i32 510, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request stage2 loader: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"wm0010_stage2_load\00", [45 x i8] zeroinitializer }, align 32
@wm0010_stage2_load._entry_ptr = internal global ptr @wm0010_stage2_load._entry, section ".printk_index", align 4
@wm0010_stage2_load.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.66, ptr @.str.8, ptr @.str.67, i8 0, i8 -128, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Downloading %zu byte stage 2 loader\0A\00", [59 x i8] zeroinitializer }, align 32
@wm0010_stage2_load.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.66, ptr @.str.8, ptr @.str.68, i8 0, i8 -122, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Starting initial download at %dHz\0A\00", [61 x i8] zeroinitializer }, align 32
@wm0010_stage2_load._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.66, ptr @.str.8, i32 543, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Initial download failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@wm0010_stage2_load._entry_ptr.71 = internal global ptr @wm0010_stage2_load._entry.69, section ".printk_index", align 4
@wm0010_stage2_load._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.66, ptr @.str.8, i32 551, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Boot ROM error: %x in %d\0A\00", [38 x i8] zeroinitializer }, align 32
@wm0010_stage2_load._entry_ptr.74 = internal global ptr @wm0010_stage2_load._entry.72, section ".printk_index", align 4
@wm0010_mark_boot_failure._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.8, i32 210, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Failed to transition from `%s' state to `%s' state\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wm0010_mark_boot_failure\00", [39 x i8] zeroinitializer }, align 32
@wm0010_mark_boot_failure._entry_ptr = internal global ptr @wm0010_mark_boot_failure._entry, section ".printk_index", align 4
@wm0010_state_to_str.state_to_str = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81], [44 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Power off\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Out of reset\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Boot ROM\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Stage2\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Firmware\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"null\00", [27 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wm0010_firmware_load._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.84, ptr @.str.8, i32 362, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to request application(%s): %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"wm0010_firmware_load\00", [43 x i8] zeroinitializer }, align 32
@wm0010_firmware_load._entry_ptr = internal global ptr @wm0010_firmware_load._entry, section ".printk_index", align 4
@wm0010_firmware_load._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.84, ptr @.str.8, i32 376, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"First record not INFO\0D\0A\00", [40 x i8] zeroinitializer }, align 32
@wm0010_firmware_load._entry_ptr.87 = internal global ptr @wm0010_firmware_load._entry.85, section ".printk_index", align 4
@wm0010_firmware_load._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.84, ptr @.str.8, i32 384, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unsupported version (%02d) of INFO record\0D\0A\00", [52 x i8] zeroinitializer }, align 32
@wm0010_firmware_load._entry_ptr.90 = internal global ptr @wm0010_firmware_load._entry.88, section ".printk_index", align 4
@wm0010_firmware_load.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.84, ptr @.str.8, ptr @.str.91, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Version v%02d INFO record found\0D\0A\00", [62 x i8] zeroinitializer }, align 32
@wm0010_firmware_load._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.84, ptr @.str.8, i32 394, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Not a WM0010 firmware file.\0D\0A\00", [34 x i8] zeroinitializer }, align 32
@wm0010_firmware_load._entry_ptr.94 = internal global ptr @wm0010_firmware_load._entry.92, section ".printk_index", align 4
@wm0010_firmware_load.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.84, ptr @.str.8, ptr @.str.95, i8 0, i8 101, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Packet: command %d, data length = 0x%x\0D\0A\00", [55 x i8] zeroinitializer }, align 32
@wm0010_firmware_load.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.84, ptr @.str.8, ptr @.str.96, i8 0, i8 114, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"All transfers scheduled\0A\00", [39 x i8] zeroinitializer }, align 32
@wm0010_firmware_load._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.84, ptr @.str.8, i32 465, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Write failed: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@wm0010_firmware_load._entry_ptr.99 = internal global ptr @wm0010_firmware_load._entry.97, section ".printk_index", align 4
@wm0010_firmware_load.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.84, ptr @.str.8, ptr @.str.100, i8 0, i8 117, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Boot fail!\0A\00", [20 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.102, ptr @.str.8, i32 225, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"SPI transfer failed: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wm0010_boot_xfer_complete\00", [38 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry_ptr = internal global ptr @wm0010_boot_xfer_complete._entry, section ".printk_index", align 4
@wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.102, ptr @.str.8, ptr @.str.103, i8 0, i8 58, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d: %04x\0A\00", [22 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.102, ptr @.str.8, i32 238, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%d: ROM error reported in stage 2\0A\00", [61 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry_ptr.106 = internal global ptr @wm0010_boot_xfer_complete._entry.104, section ".printk_index", align 4
@wm0010_boot_xfer_complete._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.102, ptr @.str.8, i32 246, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%d: ROM bootloader running in stage 2\0A\00", [57 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry_ptr.109 = internal global ptr @wm0010_boot_xfer_complete._entry.107, section ".printk_index", align 4
@wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug297 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.102, ptr @.str.8, ptr @.str.110, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Stage2 loader running\0A\00", [41 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug298 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.102, ptr @.str.8, ptr @.str.111, i8 0, i8 63, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CODE_HDR packet received\0A\00", [38 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug299 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.102, ptr @.str.8, ptr @.str.112, i8 0, i8 64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.112 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"CODE_DATA packet received\0A\00", [37 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.102, ptr @.str.8, ptr @.str.113, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Download complete\0A\00", [45 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.102, ptr @.str.8, ptr @.str.114, i8 0, i8 66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Application start\0A\00", [45 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.41, ptr @.str.102, ptr @.str.8, ptr @.str.61, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@wm0010_boot_xfer_complete._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.102, ptr @.str.8, i32 276, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Device reports image too long\0A\00", [33 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry_ptr.117 = internal global ptr @wm0010_boot_xfer_complete._entry.115, section ".printk_index", align 4
@wm0010_boot_xfer_complete._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.102, ptr @.str.8, i32 281, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Device reports bad SPI packet\0A\00", [33 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry_ptr.120 = internal global ptr @wm0010_boot_xfer_complete._entry.118, section ".printk_index", align 4
@wm0010_boot_xfer_complete._entry.121 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.122, ptr @.str.102, ptr @.str.8, i32 286, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device reports SPI read overflow\0A\00", [62 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry_ptr.123 = internal global ptr @wm0010_boot_xfer_complete._entry.121, section ".printk_index", align 4
@wm0010_boot_xfer_complete._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.102, ptr @.str.8, i32 291, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Device reports SPI underclock\0A\00", [33 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry_ptr.126 = internal global ptr @wm0010_boot_xfer_complete._entry.124, section ".printk_index", align 4
@wm0010_boot_xfer_complete._entry.127 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.128, ptr @.str.102, ptr @.str.8, i32 296, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Device reports bad header packet\0A\00", [62 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry_ptr.129 = internal global ptr @wm0010_boot_xfer_complete._entry.127, section ".printk_index", align 4
@wm0010_boot_xfer_complete._entry.130 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.102, ptr @.str.8, i32 301, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Device reports invalid packet type\0A\00", [60 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry_ptr.132 = internal global ptr @wm0010_boot_xfer_complete._entry.130, section ".printk_index", align 4
@wm0010_boot_xfer_complete._entry.133 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.134, ptr @.str.102, ptr @.str.8, i32 306, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Device reports data before header error\0A\00", [55 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry_ptr.135 = internal global ptr @wm0010_boot_xfer_complete._entry.133, section ".printk_index", align 4
@wm0010_boot_xfer_complete._entry.136 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.102, ptr @.str.8, i32 311, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Device reports invalid PLL packet\0A\00", [61 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry_ptr.138 = internal global ptr @wm0010_boot_xfer_complete._entry.136, section ".printk_index", align 4
@wm0010_boot_xfer_complete._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.102, ptr @.str.8, i32 315, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Device reports packet alignment error\0A\00", [57 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry_ptr.141 = internal global ptr @wm0010_boot_xfer_complete._entry.139, section ".printk_index", align 4
@wm0010_boot_xfer_complete._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.102, ptr @.str.8, i32 321, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unrecognised return 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@wm0010_boot_xfer_complete._entry_ptr.144 = internal global ptr @wm0010_boot_xfer_complete._entry.142, section ".printk_index", align 4
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm0010-sdi1\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm0010-sdi2\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.147 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.148 = internal global [19 x i64] [i64 17, i64 32, i64 267190272, i64 267190279, i64 267190280, i64 267190281, i64 267190284, i64 267190286, i64 267190309, i64 267190316, i64 267190321, i64 267190322, i64 267190323, i64 267190324, i64 267190325, i64 267190328, i64 267190330, i64 1431655765, i64 3772834016]
@___asan_gen_.149 = private unnamed_addr constant [18 x i8] c"wm0010_spi_driver\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 987, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 989, i32 11 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 878, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 879, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 890, i32 36 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 891, i32 36 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 895, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 900, i32 50 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 903, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 921, i32 22 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 923, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 929, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 945, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 953, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant [25 x i8] c"soc_component_dev_wm0010\00", align 1
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 782, i32 46 }
@___asan_gen_.230 = private unnamed_addr constant [11 x i8] c"wm0010_dai\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 800, i32 34 }
@___asan_gen_.233 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.237 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 87, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [19 x i8] c"wm0010_dapm_routes\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 131, i32 40 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 128, i32 1 }
@___asan_gen_.245 = private unnamed_addr constant [20 x i8] c"wm0010_dapm_widgets\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 127, i32 41 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 132, i32 4 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 132, i32 26 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 133, i32 4 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 133, i32 26 }
@___asan_gen_.260 = private unnamed_addr constant [14 x i8] c"pll_clock_map\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 72, i32 3 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 583, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 587, i32 3 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 595, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 600, i32 3 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 608, i32 3 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 620, i32 3 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 632, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 673, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 680, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 689, i32 5 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 699, i32 3 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 701, i32 29 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 507, i32 30 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 509, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 514, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 538, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 543, i32 3 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 550, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 209, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant [13 x i8] c"state_to_str\00", align 1
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 143, i32 28 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 144, i32 3 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 145, i32 3 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 146, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 147, i32 3 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 148, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 152, i32 10 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 361, i32 3 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 376, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 382, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 389, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 394, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 404, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 459, i32 4 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 465, i32 4 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 470, i32 4 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 224, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 233, i32 3 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 237, i32 4 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 245, i32 4 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 251, i32 4 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 255, i32 4 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 259, i32 4 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 263, i32 4 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 267, i32 4 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 276, i32 4 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 281, i32 4 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 286, i32 4 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 291, i32 4 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 296, i32 4 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 301, i32 4 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 306, i32 4 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 311, i32 4 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 315, i32 4 }
@___asan_gen_.530 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 320, i32 4 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 802, i32 11 }
@___asan_gen_.539 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.540 = private constant [29 x i8] c"../sound/soc/codecs/wm0010.c\00", align 1
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.540, i32 819, i32 11 }
@llvm.compiler.used = appending global [174 x ptr] [ptr @__UNIQUE_ID_author314, ptr @__UNIQUE_ID_description313, ptr @__UNIQUE_ID_file315, ptr @__UNIQUE_ID_license316, ptr @__exitcall_wm0010_spi_driver_exit, ptr @__initcall__kmod_snd_soc_wm0010__312_995_wm0010_spi_driver_init6, ptr @wm0010_boot._entry, ptr @wm0010_boot._entry.38, ptr @wm0010_boot._entry.43, ptr @wm0010_boot._entry.46, ptr @wm0010_boot._entry.49, ptr @wm0010_boot._entry.52, ptr @wm0010_boot._entry.55, ptr @wm0010_boot._entry.58, ptr @wm0010_boot._entry_ptr, ptr @wm0010_boot._entry_ptr.40, ptr @wm0010_boot._entry_ptr.45, ptr @wm0010_boot._entry_ptr.48, ptr @wm0010_boot._entry_ptr.51, ptr @wm0010_boot._entry_ptr.54, ptr @wm0010_boot._entry_ptr.57, ptr @wm0010_boot._entry_ptr.60, ptr @wm0010_boot_xfer_complete._entry, ptr @wm0010_boot_xfer_complete._entry.104, ptr @wm0010_boot_xfer_complete._entry.107, ptr @wm0010_boot_xfer_complete._entry.115, ptr @wm0010_boot_xfer_complete._entry.118, ptr @wm0010_boot_xfer_complete._entry.121, ptr @wm0010_boot_xfer_complete._entry.124, ptr @wm0010_boot_xfer_complete._entry.127, ptr @wm0010_boot_xfer_complete._entry.130, ptr @wm0010_boot_xfer_complete._entry.133, ptr @wm0010_boot_xfer_complete._entry.136, ptr @wm0010_boot_xfer_complete._entry.139, ptr @wm0010_boot_xfer_complete._entry.142, ptr @wm0010_boot_xfer_complete._entry_ptr, ptr @wm0010_boot_xfer_complete._entry_ptr.106, ptr @wm0010_boot_xfer_complete._entry_ptr.109, ptr @wm0010_boot_xfer_complete._entry_ptr.117, ptr @wm0010_boot_xfer_complete._entry_ptr.120, ptr @wm0010_boot_xfer_complete._entry_ptr.123, ptr @wm0010_boot_xfer_complete._entry_ptr.126, ptr @wm0010_boot_xfer_complete._entry_ptr.129, ptr @wm0010_boot_xfer_complete._entry_ptr.132, ptr @wm0010_boot_xfer_complete._entry_ptr.135, ptr @wm0010_boot_xfer_complete._entry_ptr.138, ptr @wm0010_boot_xfer_complete._entry_ptr.141, ptr @wm0010_boot_xfer_complete._entry_ptr.144, ptr @wm0010_firmware_load._entry, ptr @wm0010_firmware_load._entry.85, ptr @wm0010_firmware_load._entry.88, ptr @wm0010_firmware_load._entry.92, ptr @wm0010_firmware_load._entry.97, ptr @wm0010_firmware_load._entry_ptr, ptr @wm0010_firmware_load._entry_ptr.87, ptr @wm0010_firmware_load._entry_ptr.90, ptr @wm0010_firmware_load._entry_ptr.94, ptr @wm0010_firmware_load._entry_ptr.99, ptr @wm0010_mark_boot_failure._entry, ptr @wm0010_mark_boot_failure._entry_ptr, ptr @wm0010_spi_driver_exit, ptr @wm0010_spi_probe._entry, ptr @wm0010_spi_probe._entry.12, ptr @wm0010_spi_probe._entry.16, ptr @wm0010_spi_probe._entry.19, ptr @wm0010_spi_probe._entry.22, ptr @wm0010_spi_probe._entry.25, ptr @wm0010_spi_probe._entry_ptr, ptr @wm0010_spi_probe._entry_ptr.14, ptr @wm0010_spi_probe._entry_ptr.18, ptr @wm0010_spi_probe._entry_ptr.21, ptr @wm0010_spi_probe._entry_ptr.24, ptr @wm0010_spi_probe._entry_ptr.27, ptr @wm0010_stage2_load._entry, ptr @wm0010_stage2_load._entry.69, ptr @wm0010_stage2_load._entry.72, ptr @wm0010_stage2_load._entry_ptr, ptr @wm0010_stage2_load._entry_ptr.71, ptr @wm0010_stage2_load._entry_ptr.74, ptr @wm0010_spi_driver, ptr @.str, ptr @wm0010_spi_probe.__key, ptr @.str.1, ptr @wm0010_spi_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @soc_component_dev_wm0010, ptr @wm0010_dai, ptr @init_completion.__key, ptr @.str.28, ptr @wm0010_dapm_routes, ptr @.str.29, ptr @wm0010_dapm_widgets, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @pll_clock_map, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.70, ptr @.str.73, ptr @.str.75, ptr @.str.76, ptr @wm0010_state_to_str.state_to_str, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.86, ptr @.str.89, ptr @.str.91, ptr @.str.93, ptr @.str.95, ptr @.str.96, ptr @.str.98, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.105, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.116, ptr @.str.119, ptr @.str.122, ptr @.str.125, ptr @.str.128, ptr @.str.131, ptr @.str.134, ptr @.str.137, ptr @.str.140, ptr @.str.143, ptr @.str.145, ptr @.str.146], section "llvm.metadata"
@0 = internal global [131 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_spi_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_spi_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_spi_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_spi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_spi_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_spi_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_spi_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_spi_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_spi_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @soc_component_dev_wm0010 to i32), i32 188, i32 224, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_dai to i32), i32 336, i32 416, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_dapm_routes to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_dapm_widgets to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_clock_map to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_stage2_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_stage2_load._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_stage2_load._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_mark_boot_failure._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_state_to_str.state_to_str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_firmware_load._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_firmware_load._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_firmware_load._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_firmware_load._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_firmware_load._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot_xfer_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot_xfer_complete._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot_xfer_complete._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot_xfer_complete._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot_xfer_complete._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot_xfer_complete._entry.121 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot_xfer_complete._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot_xfer_complete._entry.127 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot_xfer_complete._entry.130 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot_xfer_complete._entry.133 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot_xfer_complete._entry.136 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot_xfer_complete._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm0010_boot_xfer_complete._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wm0010_spi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @wm0010_spi_driver) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wm0010_spi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @wm0010_spi_driver, i32 0, i32 4)) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm0010_spi_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 276, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @wm0010_spi_probe.__key) #10
  %irq_lock = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 16
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @wm0010_spi_probe.__key.2, i16 noundef signext 3) #10
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dev6 = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %spi, ptr %dev6, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data.i, align 8
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %do.body.if.end13_crit_edge, label %if.then10

do.body.if.end13_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %pdata = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 3
  %4 = call ptr @memcpy(ptr %pdata, ptr %3, i32 12)
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %do.body.if.end13_crit_edge
  %boot_completion = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 18
  %5 = ptrtoint ptr %boot_completion to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %boot_completion, align 4
  %wait.i = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 18, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #10
  %core_supplies = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %core_supplies to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @.str.4, ptr %core_supplies, align 4
  %arrayidx15 = getelementptr %struct.wm0010_priv, ptr %call.i, i32 0, i32 6, i32 1
  %7 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @.str.5, ptr %arrayidx15, align 4
  %8 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev6, align 4
  %call19 = tail call i32 @devm_regulator_bulk_get(ptr noundef %9, i32 noundef 2, ptr noundef %core_supplies) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp.not = icmp eq i32 %call19, 0
  %10 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev6, align 4
  br i1 %cmp.not, label %if.end25, label %do.end23

do.end23:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.6, i32 noundef %call19) #13
  br label %cleanup

if.end25:                                         ; preds = %if.end13
  %call27 = tail call ptr @devm_regulator_get(ptr noundef %11, ptr noundef nonnull @.str.11) #10
  %dbvdd = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %dbvdd to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call27, ptr %dbvdd, align 4
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then30, label %if.end37

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %call27 to i32
  %14 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.13, i32 noundef %13) #13
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  %pdata38 = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %pdata38 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pdata38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool39.not = icmp eq i32 %17, 0
  br i1 %tobool39.not, label %do.end67, label %if.then40

if.then40:                                        ; preds = %if.end37
  %gpio_reset43 = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 4
  %18 = ptrtoint ptr %gpio_reset43 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %gpio_reset43, align 4
  %reset_active_high = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 3, i32 1
  %19 = ptrtoint ptr %reset_active_high to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %reset_active_high, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool45.not = icmp eq i32 %20, 0
  %spec.select = select i1 %tobool45.not, i32 0, i32 2
  %not.tobool45.not = xor i1 %tobool45.not, true
  %spec.select178 = zext i1 %not.tobool45.not to i32
  %21 = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 5
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select178, ptr %21, align 4
  %23 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev6, align 4
  %25 = ptrtoint ptr %gpio_reset43 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %gpio_reset43, align 4
  %call56 = tail call i32 @devm_gpio_request_one(ptr noundef %24, i32 noundef %26, i32 noundef %spec.select, ptr noundef nonnull @.str.15) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %cmp57 = icmp slt i32 %call56, 0
  br i1 %cmp57, label %do.end61, label %if.end69

do.end61:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.17, i32 noundef %call56) #13
  br label %cleanup

do.end67:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.20) #13
  br label %cleanup

if.end69:                                         ; preds = %if.then40
  %state = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 9
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %state, align 4
  %irq70 = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 8
  %32 = ptrtoint ptr %irq70 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq70, align 4
  %irq_flags = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool72.not = icmp eq i32 %35, 0
  %phi.bo = or i32 %35, 8192
  %trigger.0 = select i1 %tobool72.not, i32 8194, i32 %phi.bo
  %call78 = tail call i32 @request_threaded_irq(i32 noundef %33, ptr noundef null, ptr noundef nonnull @wm0010_irq, i32 noundef %trigger.0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end85, label %do.end83

do.end83:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.23, i32 noundef %33, i32 noundef %call78) #13
  br label %cleanup

if.end85:                                         ; preds = %if.end69
  %irq86 = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 17
  %38 = ptrtoint ptr %irq86 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %33, ptr %irq86, align 4
  %call87 = tail call i32 @irq_set_irq_wake(i32 noundef %33, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %tobool88.not = icmp eq i32 %call87, 0
  br i1 %tobool88.not, label %if.end94, label %do.end92

do.end92:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %dev6 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.26, i32 noundef %33, i32 noundef %call87) #13
  br label %cleanup

if.end94:                                         ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #12
  %max_speed_hz = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 3
  %41 = ptrtoint ptr %max_speed_hz to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_speed_hz, align 8
  %43 = getelementptr inbounds %struct.wm0010_priv, ptr %call.i, i32 0, i32 14
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %42, ptr %43, align 4
  %call102 = tail call i32 @devm_snd_soc_register_component(ptr noundef %spi, ptr noundef nonnull @soc_component_dev_wm0010, ptr noundef nonnull @wm0010_dai, i32 noundef 2) #10
  %45 = tail call i32 @llvm.smin.i32(i32 %call102, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end94, %do.end92, %do.end83, %do.end67, %do.end61, %if.then30, %do.end23, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %do.end23 ], [ %13, %if.then30 ], [ %call56, %do.end61 ], [ %call78, %do.end83 ], [ %call87, %do.end92 ], [ -22, %do.end67 ], [ -12, %entry.cleanup_crit_edge ], [ %45, %if.end94 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm0010_spi_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_reset = getelementptr inbounds %struct.wm0010_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %gpio_reset, align 4
  %gpio_reset_value = getelementptr inbounds %struct.wm0010_priv, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %gpio_reset_value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gpio_reset_value, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %3) #10
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i, i32 noundef %5) #10
  %irq = getelementptr inbounds %struct.wm0010_priv, ptr %1, i32 0, i32 17
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  %call1 = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef 0) #10
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call ptr @free_irq(i32 noundef %9, ptr noundef %1) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm0010_irq(i32 noundef %irq, ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.wm0010_priv, ptr %data, i32 0, i32 9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 4
  %.off = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  br i1 %switch, label %sw.bb, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %irq_lock = getelementptr inbounds %struct.wm0010_priv, ptr %data, i32 0, i32 16
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #10
  %boot_completion = getelementptr inbounds %struct.wm0010_priv, ptr %data, i32 0, i32 18
  tail call void @complete(ptr noundef %boot_completion) #10
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.bb ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_component(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm0010_probe(ptr noundef %component) #5 align 64 {
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
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %component, ptr %3, align 4
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm0010_set_sysclk(ptr nocapture noundef readonly %component, i32 noundef %source, i32 noundef %clk_id, i32 noundef %freq, i32 noundef %dir) #6 align 64 {
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
  %sysclk = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %sysclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %freq, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5500000, i32 %freq)
  %cmp = icmp ult i32 %freq, 5500000
  br i1 %cmp, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 22000000, i32 %freq)
  %cmp2.not = icmp ult i32 %freq, 22000000
  br i1 %cmp2.not, label %for.inc, label %for.body.preheader.if.then3_crit_edge

for.body.preheader.if.then3_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %max_spi_freq = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 13
  %5 = ptrtoint ptr %max_spi_freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %max_spi_freq, align 4
  br label %if.end8

if.then3:                                         ; preds = %for.inc.3, %for.inc.2.if.then3_crit_edge, %for.inc.1.if.then3_crit_edge, %for.inc.if.then3_crit_edge, %for.body.preheader.if.then3_crit_edge
  %i.019.lcssa = phi i32 [ 0, %for.body.preheader.if.then3_crit_edge ], [ 1, %for.inc.if.then3_crit_edge ], [ 2, %for.inc.1.if.then3_crit_edge ], [ 3, %for.inc.2.if.then3_crit_edge ], [ %spec.select, %for.inc.3 ]
  %max_pll_spi_speed = getelementptr [6 x %struct.pll_clock_map], ptr @pll_clock_map, i32 0, i32 %i.019.lcssa, i32 1
  %6 = ptrtoint ptr %max_pll_spi_speed to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_pll_spi_speed, align 4
  %max_spi_freq5 = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 13
  %8 = ptrtoint ptr %max_spi_freq5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %max_spi_freq5, align 4
  %pll_clkctrl1 = getelementptr [6 x %struct.pll_clock_map], ptr @pll_clock_map, i32 0, i32 %i.019.lcssa, i32 2
  %9 = ptrtoint ptr %pll_clkctrl1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %pll_clkctrl1, align 4
  %pll_clkctrl17 = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 15
  %11 = ptrtoint ptr %pll_clkctrl17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %pll_clkctrl17, align 4
  br label %if.end8

for.inc:                                          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 18000000, i32 %freq)
  %cmp2.not.1 = icmp ult i32 %freq, 18000000
  br i1 %cmp2.not.1, label %for.inc.1, label %for.inc.if.then3_crit_edge

for.inc.if.then3_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 14000000, i32 %freq)
  %cmp2.not.2 = icmp ult i32 %freq, 14000000
  br i1 %cmp2.not.2, label %for.inc.2, label %for.inc.1.if.then3_crit_edge

for.inc.1.if.then3_crit_edge:                     ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 10000000, i32 %freq)
  %cmp2.not.3 = icmp ult i32 %freq, 10000000
  br i1 %cmp2.not.3, label %for.inc.3, label %for.inc.2.if.then3_crit_edge

for.inc.2.if.then3_crit_edge:                     ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then3

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 6500000, i32 %freq)
  %cmp2.not.4 = icmp ult i32 %freq, 6500000
  %spec.select = select i1 %cmp2.not.4, i32 5, i32 4
  br label %if.then3

if.end8:                                          ; preds = %if.then3, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm0010_set_bias_level(ptr noundef %component, i32 noundef %level) #2 align 64 {
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
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %level, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb3
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dapm.i.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %5 = ptrtoint ptr %dapm.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dapm.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %cmp = icmp eq i32 %6, 2
  br i1 %cmp, label %if.then, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @wm0010_boot(ptr noundef %component)
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %dapm.i.i14 = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %7 = ptrtoint ptr %dapm.i.i14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dapm.i.i14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp5 = icmp eq i32 %8, 2
  br i1 %cmp5, label %if.then6, label %sw.bb3.sw.epilog_crit_edge

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then6:                                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #12
  %lock = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  tail call fastcc void @wm0010_halt(ptr noundef %component)
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then6, %sw.bb3.sw.epilog_crit_edge, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm0010_boot(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  %m = alloca %struct.spi_message, align 4
  %t = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #10
  %4 = call ptr @memset(ptr %m, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #10
  %5 = call ptr @memset(ptr %t, i32 255, i32 96)
  %irq_lock = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 16
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %state = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp7.not = icmp eq i32 %7, 0
  br i1 %cmp7.not, label %entry.if.end_crit_edge, label %do.end11

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev12 = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %dev12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev12, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.35) #13
  br label %if.end

if.end:                                           ; preds = %do.end11, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call4) #10
  %sysclk = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 8
  %10 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sysclk, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 26000000, i32 %11)
  %cmp14 = icmp sgt i32 %11, 26000000
  br i1 %cmp14, label %do.end19, label %if.end21

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.39) #13
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %pll_running = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 12
  %14 = ptrtoint ptr %pll_running to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %pll_running, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_boot.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_boot, %if.then27)) #10
          to label %do.end31 [label %if.then27], !srcloc !284

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev, align 4
  %max_spi_freq = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 13
  %17 = ptrtoint ptr %max_spi_freq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_spi_freq, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_boot.__UNIQUE_ID_ddebug309, ptr noundef %16, ptr noundef nonnull @.str.42, i32 noundef %18) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then27, %if.end21
  %core_supplies = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 6
  %call32 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %core_supplies) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33.not = icmp eq i32 %call32, 0
  br i1 %cmp33.not, label %if.end41, label %do.end38

do.end38:                                         ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.44, i32 noundef %call32) #13
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

if.end41:                                         ; preds = %do.end31
  %dbvdd = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 7
  %19 = ptrtoint ptr %dbvdd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dbvdd, align 4
  %call42 = tail call i32 @regulator_enable(ptr noundef %20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %cmp43.not = icmp eq i32 %call42, 0
  br i1 %cmp43.not, label %if.end50, label %do.end48

do.end48:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.47, i32 noundef %call42) #13
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %call224 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %core_supplies) #10
  br label %cleanup

if.end50:                                         ; preds = %if.end41
  %gpio_reset = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 4
  %21 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %gpio_reset, align 4
  %gpio_reset_value = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 5
  %23 = ptrtoint ptr %gpio_reset_value to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %gpio_reset_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool51.not = icmp eq i32 %24, 0
  %lnot.ext53 = zext i1 %tobool51.not to i32
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %22) #10
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i, i32 noundef %lnot.ext53) #10
  %call63 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call63) #10
  %boot_completion = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 18
  %call71 = tail call i32 @wait_for_completion_timeout(ptr noundef %boot_completion, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.end76, label %if.end50.do.body80_crit_edge

if.end50.do.body80_crit_edge:                     ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body80

do.end76:                                         ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.50) #13
  br label %do.body80

do.body80:                                        ; preds = %do.end76, %if.end50.do.body80_crit_edge
  %call88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %28 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call88) #10
  %call95 = tail call fastcc i32 @wm0010_stage2_load(ptr noundef %component)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call95)
  %tobool96.not = icmp eq i32 %call95, 0
  br i1 %tobool96.not, label %if.end98, label %do.body80.abort_crit_edge

do.body80.abort_crit_edge:                        ; preds = %do.body80
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end98:                                         ; preds = %do.body80
  %call101 = tail call i32 @wait_for_completion_timeout(ptr noundef %boot_completion, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %tobool102.not = icmp eq i32 %call101, 0
  br i1 %tobool102.not, label %do.end106, label %if.end98.do.body110_crit_edge

if.end98.do.body110_crit_edge:                    ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body110

do.end106:                                        ; preds = %if.end98
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.53) #13
  br label %do.body110

do.body110:                                       ; preds = %do.end106, %if.end98.do.body110_crit_edge
  %call118 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %31 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call118) #10
  %max_spi_freq125 = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 13
  %32 = ptrtoint ptr %max_spi_freq125 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %max_spi_freq125, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool126.not = icmp eq i32 %33, 0
  br i1 %tobool126.not, label %do.body180, label %if.then127

if.then127:                                       ; preds = %do.body110
  %pll_clkctrl1 = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 15
  %34 = ptrtoint ptr %pll_clkctrl1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %pll_clkctrl1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3521, i32 noundef 32) #14
  %tobool130.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool130.not, label %if.then127.abort_crit_edge, label %if.end132

if.then127.abort_crit_edge:                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end132:                                        ; preds = %if.then127
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i.i7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3521, i32 noundef 32) #14
  %tobool134.not = icmp eq ptr %call7.i.i7, null
  br i1 %tobool134.not, label %if.end132.abort_out_crit_edge, label %for.body.i.preheader

if.end132.abort_out_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort_out

for.body.i.preheader:                             ; preds = %if.end132
  %38 = ptrtoint ptr %call7.i.i7 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 402653188, ptr %call7.i.i7, align 8
  %39 = call i32 @llvm.bswap.i32(i32 %35)
  %40 = zext i32 %39 to i64
  %arrayidx1.i.1 = getelementptr i64, ptr %call7.i.i7, i32 1
  %41 = ptrtoint ptr %arrayidx1.i.1 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %arrayidx1.i.1, align 8
  %arrayidx1.i.2 = getelementptr i64, ptr %call7.i.i7, i32 2
  %42 = getelementptr inbounds i8, ptr %m, i32 8
  %43 = call ptr @memset(ptr %arrayidx1.i.2, i32 0, i32 16)
  %44 = call ptr @memset(ptr %42, i32 0, i32 40)
  %45 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %47 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %48 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %49 = getelementptr inbounds i8, ptr %t, i32 12
  %50 = call ptr @memset(ptr %49, i32 0, i32 84)
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %51 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call7.i.i, ptr %rx_buf, align 4
  %52 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call7.i.i7, ptr %t, align 4
  %len137 = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %53 = ptrtoint ptr %len137 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 32, ptr %len137, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %54 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 8, ptr %bits_per_word, align 1
  %55 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %sysclk, align 4
  %div = sdiv i32 %56, 6
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %57 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %div, ptr %speed_hz, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.preheader.spi_message_add_tail.exit_crit_edge

for.body.i.preheader.spi_message_add_tail.exit_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %59 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %60 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %61 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %for.body.i.preheader.spi_message_add_tail.exit_crit_edge
  %call139 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %if.end146, label %do.end144

do.end144:                                        ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.56, i32 noundef %call139) #13
  br label %abort_swap

if.end146:                                        ; preds = %spi_message_add_tail.exit
  %call147 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %for.body.preheader, label %do.end152

for.body.preheader:                               ; preds = %if.end146
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 234941711, i32 %65)
  %cmp158 = icmp eq i32 %65, 234941711
  br i1 %cmp158, label %for.body.preheader.do.body161_crit_edge, label %if.end179

for.body.preheader.do.body161_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body161

do.end152:                                        ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.59, i32 noundef %call147) #13
  br label %abort_swap

do.body161:                                       ; preds = %if.end179.6.do.body161_crit_edge, %if.end179.5.do.body161_crit_edge, %if.end179.4.do.body161_crit_edge, %if.end179.3.do.body161_crit_edge, %if.end179.2.do.body161_crit_edge, %if.end179.1.do.body161_crit_edge, %if.end179.do.body161_crit_edge, %for.body.preheader.do.body161_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_boot.__UNIQUE_ID_ddebug310, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_boot, %if.then173)) #10
          to label %do.end177 [label %if.then173], !srcloc !284

if.then173:                                       ; preds = %do.body161
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_boot.__UNIQUE_ID_ddebug310, ptr noundef %69, ptr noundef nonnull @.str.61) #10
  br label %do.end177

do.end177:                                        ; preds = %if.then173, %do.body161
  %70 = ptrtoint ptr %pll_running to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %pll_running, align 2
  br label %for.end

if.end179:                                        ; preds = %for.body.preheader
  %incdec.ptr = getelementptr i32, ptr %call7.i.i, i32 1
  %71 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %incdec.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 234941711, i32 %72)
  %cmp158.1 = icmp eq i32 %72, 234941711
  br i1 %cmp158.1, label %if.end179.do.body161_crit_edge, label %if.end179.1

if.end179.do.body161_crit_edge:                   ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body161

if.end179.1:                                      ; preds = %if.end179
  %incdec.ptr.1 = getelementptr i32, ptr %call7.i.i, i32 2
  %73 = ptrtoint ptr %incdec.ptr.1 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %incdec.ptr.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 234941711, i32 %74)
  %cmp158.2 = icmp eq i32 %74, 234941711
  br i1 %cmp158.2, label %if.end179.1.do.body161_crit_edge, label %if.end179.2

if.end179.1.do.body161_crit_edge:                 ; preds = %if.end179.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body161

if.end179.2:                                      ; preds = %if.end179.1
  %incdec.ptr.2 = getelementptr i32, ptr %call7.i.i, i32 3
  %75 = ptrtoint ptr %incdec.ptr.2 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %incdec.ptr.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 234941711, i32 %76)
  %cmp158.3 = icmp eq i32 %76, 234941711
  br i1 %cmp158.3, label %if.end179.2.do.body161_crit_edge, label %if.end179.3

if.end179.2.do.body161_crit_edge:                 ; preds = %if.end179.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body161

if.end179.3:                                      ; preds = %if.end179.2
  %incdec.ptr.3 = getelementptr i32, ptr %call7.i.i, i32 4
  %77 = ptrtoint ptr %incdec.ptr.3 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %incdec.ptr.3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 234941711, i32 %78)
  %cmp158.4 = icmp eq i32 %78, 234941711
  br i1 %cmp158.4, label %if.end179.3.do.body161_crit_edge, label %if.end179.4

if.end179.3.do.body161_crit_edge:                 ; preds = %if.end179.3
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body161

if.end179.4:                                      ; preds = %if.end179.3
  %incdec.ptr.4 = getelementptr i32, ptr %call7.i.i, i32 5
  %79 = ptrtoint ptr %incdec.ptr.4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %incdec.ptr.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 234941711, i32 %80)
  %cmp158.5 = icmp eq i32 %80, 234941711
  br i1 %cmp158.5, label %if.end179.4.do.body161_crit_edge, label %if.end179.5

if.end179.4.do.body161_crit_edge:                 ; preds = %if.end179.4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body161

if.end179.5:                                      ; preds = %if.end179.4
  %incdec.ptr.5 = getelementptr i32, ptr %call7.i.i, i32 6
  %81 = ptrtoint ptr %incdec.ptr.5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %incdec.ptr.5, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 234941711, i32 %82)
  %cmp158.6 = icmp eq i32 %82, 234941711
  br i1 %cmp158.6, label %if.end179.5.do.body161_crit_edge, label %if.end179.6

if.end179.5.do.body161_crit_edge:                 ; preds = %if.end179.5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body161

if.end179.6:                                      ; preds = %if.end179.5
  %incdec.ptr.6 = getelementptr i32, ptr %call7.i.i, i32 7
  %83 = ptrtoint ptr %incdec.ptr.6 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %incdec.ptr.6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 234941711, i32 %84)
  %cmp158.7 = icmp eq i32 %84, 234941711
  br i1 %cmp158.7, label %if.end179.6.do.body161_crit_edge, label %if.end179.6.for.end_crit_edge

if.end179.6.for.end_crit_edge:                    ; preds = %if.end179.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end179.6.do.body161_crit_edge:                 ; preds = %if.end179.6
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body161

for.end:                                          ; preds = %if.end179.6.for.end_crit_edge, %do.end177
  call void @kfree(ptr noundef nonnull %call7.i.i7) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %if.end197

do.body180:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_boot.__UNIQUE_ID_ddebug311, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_boot, %if.then192)) #10
          to label %if.end197 [label %if.then192], !srcloc !284

if.then192:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_boot.__UNIQUE_ID_ddebug311, ptr noundef %86, ptr noundef nonnull @.str.62) #10
  br label %if.end197

if.end197:                                        ; preds = %if.then192, %do.body180, %for.end
  %call198 = call fastcc i32 @wm0010_firmware_load(ptr noundef %component)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call198)
  %cmp199.not = icmp eq i32 %call198, 0
  br i1 %cmp199.not, label %do.body204, label %if.end197.abort_crit_edge

if.end197.abort_crit_edge:                        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

do.body204:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  %call212 = call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %87 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 4, ptr %state, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call212) #10
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

abort_swap:                                       ; preds = %do.end152, %do.end144
  call void @kfree(ptr noundef nonnull %call7.i.i7) #10
  br label %abort_out

abort_out:                                        ; preds = %abort_swap, %if.end132.abort_out_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %abort

abort:                                            ; preds = %abort_out, %if.end197.abort_crit_edge, %if.then127.abort_crit_edge, %do.body80.abort_crit_edge
  call fastcc void @wm0010_halt(ptr noundef %component)
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %abort, %do.body204, %do.end48, %do.end38, %do.end19
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @wm0010_halt(ptr nocapture noundef readonly %component) unnamed_addr #2 align 64 {
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
  %irq_lock = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 16
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %state6 = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %state6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call3) #10
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.147)
  switch i32 %5, label %entry.do.body12_crit_edge [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %entry.sw.bb8_crit_edge
    i32 2, label %entry.sw.bb8_crit_edge39
    i32 3, label %entry.sw.bb8_crit_edge40
    i32 4, label %entry.sw.bb8_crit_edge41
  ]

entry.sw.bb8_crit_edge41:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

entry.sw.bb8_crit_edge40:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

entry.sw.bb8_crit_edge39:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

entry.sw.bb8_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb8

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12

sw.bb8:                                           ; preds = %entry.sw.bb8_crit_edge, %entry.sw.bb8_crit_edge39, %entry.sw.bb8_crit_edge40, %entry.sw.bb8_crit_edge41
  %gpio_reset = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %gpio_reset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %gpio_reset, align 4
  %gpio_reset_value = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 5
  %9 = ptrtoint ptr %gpio_reset_value to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gpio_reset_value, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %8) #10
  tail call void @gpiod_set_raw_value_cansleep(ptr noundef %call.i, i32 noundef %10) #10
  %dbvdd = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 7
  %11 = ptrtoint ptr %dbvdd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dbvdd, align 4
  %call9 = tail call i32 @regulator_disable(ptr noundef %12) #10
  %core_supplies = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 6
  %call10 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %core_supplies) #10
  br label %do.body12

do.body12:                                        ; preds = %sw.bb8, %entry.do.body12_crit_edge
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %13 = ptrtoint ptr %state6 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %state6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call20) #10
  br label %cleanup

cleanup:                                          ; preds = %do.body12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm0010_stage2_load(ptr nocapture noundef readonly %component) unnamed_addr #2 align 64 {
entry:
  %fw = alloca ptr, align 4
  %m = alloca %struct.spi_message, align 4
  %t = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !285
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %m) #10
  %5 = call ptr @memset(ptr %m, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %t) #10
  %6 = call ptr @memset(ptr %t, i32 255, i32 96)
  %call3 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.64, ptr noundef %1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %do.body5, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.65, i32 noundef %call3) #13
  br label %cleanup

do.body5:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_stage2_load.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_stage2_load, %if.then9)) #10
          to label %do.end13 [label %if.then9], !srcloc !284

if.then9:                                         ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fw, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_stage2_load.__UNIQUE_ID_ddebug307, ptr noundef %10, ptr noundef nonnull @.str.67, i32 noundef %14) #10
  br label %do.end13

do.end13:                                         ; preds = %if.then9, %do.body5
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %16, align 4
  %call15 = call ptr @kmemdup(ptr noundef %18, i32 noundef %20, i32 noundef 3265) #10
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end13.abort2_crit_edge, label %if.end8.i.i

do.end13.abort2_crit_edge:                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort2

if.end8.i.i:                                      ; preds = %do.end13
  %21 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %fw, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %22, align 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3521) #15
  %tobool21.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool21.not, label %if.end8.i.i.abort1_crit_edge, label %if.end23

if.end8.i.i.abort1_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort1

if.end23:                                         ; preds = %if.end8.i.i
  %25 = getelementptr inbounds i8, ptr %m, i32 8
  %26 = call ptr @memset(ptr %25, i32 0, i32 40)
  %27 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %m, ptr %m, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %m, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10
  %29 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %m, i32 0, i32 10, i32 1
  %30 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %31 = getelementptr inbounds i8, ptr %t, i32 12
  %32 = call ptr @memset(ptr %31, i32 0, i32 84)
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 1
  %33 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call9.i.i, ptr %rx_buf, align 4
  %34 = ptrtoint ptr %t to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call15, ptr %t, align 4
  %35 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fw, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %36, align 4
  %len = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 2
  %39 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %len, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 8
  %40 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 8, ptr %bits_per_word, align 1
  %sysclk = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 8
  %41 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sysclk, align 4
  %div = sdiv i32 %42, 10
  %speed_hz = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 12
  %43 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div, ptr %speed_hz, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %m, ptr noundef nonnull %m) #10
  br i1 %call.i.i.i, label %if.end.i.i.i98, label %if.end23.spi_message_add_tail.exit_crit_edge

if.end23.spi_message_add_tail.exit_crit_edge:     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit

if.end.i.i.i98:                                   ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %t, i32 0, i32 18, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %m, ptr %prev3.i.i.i, align 4
  %47 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %transfer_list.i, ptr %m, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i98, %if.end23.spi_message_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_stage2_load.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_stage2_load, %if.then37)) #10
          to label %do.end42 [label %if.then37], !srcloc !284

if.then37:                                        ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev, align 4
  %50 = ptrtoint ptr %speed_hz to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %speed_hz, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_stage2_load.__UNIQUE_ID_ddebug308, ptr noundef %49, ptr noundef nonnull @.str.68, i32 noundef %51) #10
  br label %do.end42

do.end42:                                         ; preds = %if.then37, %spi_message_add_tail.exit
  %call43 = call i32 @spi_sync(ptr noundef %1, ptr noundef nonnull %m) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44.not = icmp eq i32 %call43, 0
  br i1 %cmp44.not, label %for.cond.preheader, label %do.end48

for.cond.preheader:                               ; preds = %do.end42
  %52 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %fw, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp52107.not = icmp eq i32 %55, 0
  br i1 %cmp52107.not, label %for.cond.preheader.abort_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.abort_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

do.end48:                                         ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.70, i32 noundef %call43) #13
  br label %abort

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0108 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx53 = getelementptr i8, ptr %call9.i.i, i32 %i.0108
  %58 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx53, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %59)
  %cmp54.not = icmp eq i8 %59, 85
  br i1 %cmp54.not, label %for.inc, label %do.end59

do.end59:                                         ; preds = %for.body
  %conv = zext i8 %59 to i32
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.73, i32 noundef %conv, i32 noundef %i.0108) #13
  %irq_lock.i = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 16
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #10
  %state5.i = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 9
  %62 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %state5.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #10
  %dev.i99 = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 2
  %64 = ptrtoint ptr %dev.i99 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %63)
  %cmp1.i.i = icmp ugt i32 %63, 4
  br i1 %cmp1.i.i, label %do.end59.wm0010_state_to_str.exit.i_crit_edge, label %if.end.i.i100

do.end59.wm0010_state_to_str.exit.i_crit_edge:    ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_state_to_str.exit.i

if.end.i.i100:                                    ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %63
  %66 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i.i, align 4
  br label %wm0010_state_to_str.exit.i

wm0010_state_to_str.exit.i:                       ; preds = %if.end.i.i100, %do.end59.wm0010_state_to_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %67, %if.end.i.i100 ], [ @.str.82, %do.end59.wm0010_state_to_str.exit.i_crit_edge ]
  %add.i = add i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i)
  %cmp1.i17.i = icmp ugt i32 %add.i, 4
  br i1 %cmp1.i17.i, label %wm0010_state_to_str.exit.i.wm0010_mark_boot_failure.exit_crit_edge, label %if.end.i19.i

wm0010_state_to_str.exit.i.wm0010_mark_boot_failure.exit_crit_edge: ; preds = %wm0010_state_to_str.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_mark_boot_failure.exit

if.end.i19.i:                                     ; preds = %wm0010_state_to_str.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18.i = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %add.i
  %68 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %arrayidx.i18.i, align 4
  br label %wm0010_mark_boot_failure.exit

wm0010_mark_boot_failure.exit:                    ; preds = %if.end.i19.i, %wm0010_state_to_str.exit.i.wm0010_mark_boot_failure.exit_crit_edge
  %retval.0.i20.i = phi ptr [ %69, %if.end.i19.i ], [ @.str.82, %wm0010_state_to_str.exit.i.wm0010_mark_boot_failure.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i20.i) #13
  %boot_failed.i = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 10
  %70 = ptrtoint ptr %boot_failed.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 1, ptr %boot_failed.i, align 4
  br label %abort

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, %55
  br i1 %exitcond.not, label %for.inc.abort_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.abort_crit_edge:                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

abort:                                            ; preds = %for.inc.abort_crit_edge, %wm0010_mark_boot_failure.exit, %do.end48, %for.cond.preheader.abort_crit_edge
  %ret.0 = phi i32 [ %call43, %do.end48 ], [ -16, %wm0010_mark_boot_failure.exit ], [ 0, %for.cond.preheader.abort_crit_edge ], [ 0, %for.inc.abort_crit_edge ]
  call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %abort1

abort1:                                           ; preds = %abort, %if.end8.i.i.abort1_crit_edge
  %ret.1 = phi i32 [ %ret.0, %abort ], [ -12, %if.end8.i.i.abort1_crit_edge ]
  call void @kfree(ptr noundef nonnull %call15) #10
  br label %abort2

abort2:                                           ; preds = %abort1, %do.end13.abort2_crit_edge
  %ret.2 = phi i32 [ %ret.1, %abort1 ], [ -12, %do.end13.abort2_crit_edge ]
  %71 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %72) #10
  br label %cleanup

cleanup:                                          ; preds = %abort2, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %ret.2, %abort2 ]
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %t) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %m) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wm0010_firmware_load(ptr noundef %component) unnamed_addr #2 align 64 {
entry:
  %xfer_list = alloca %struct.list_head, align 4
  %done = alloca %struct.completion, align 4
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xfer_list) #10
  %4 = getelementptr inbounds %struct.list_head, ptr %xfer_list, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #10
  %5 = getelementptr inbounds i8, ptr %done, i32 4
  %6 = call ptr @memset(ptr %5, i32 255, i32 52)
  %7 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @init_completion.__key) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #10
  %8 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !285
  %9 = ptrtoint ptr %xfer_list to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %xfer_list, ptr %xfer_list, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %xfer_list, ptr %4, align 4
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %call3 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.63, ptr noundef %12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.63, i32 noundef %call3) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %15 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data, align 4
  %data5 = getelementptr inbounds %struct.dfw_binrec, ptr %18, i32 0, i32 3
  %dsp_target = getelementptr inbounds %struct.dfw_binrec, ptr %18, i32 1, i32 1, i32 2
  %19 = ptrtoint ptr %dsp_target to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %dsp_target, align 1
  %boot_failed = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 10
  %21 = ptrtoint ptr %boot_failed to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %boot_failed, align 4
  %22 = ptrtoint ptr %xfer_list to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %xfer_list, align 4
  %cmp.i.not = icmp eq ptr %23, %xfer_list
  br i1 %cmp.i.not, label %if.end35, label %do.end19, !prof !286

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.8, i32 noundef 371, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end35:                                         ; preds = %if.end
  %24 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %18, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %25)
  %cmp36.not = icmp eq i8 %25, -1
  br i1 %cmp36.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.86) #13
  br label %abort

if.end43:                                         ; preds = %if.end35
  %28 = ptrtoint ptr %data5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %data5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %29)
  %cmp45.not = icmp eq i8 %29, 1
  br i1 %cmp45.not, label %do.body55, label %do.end50

do.end50:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %conv44 = zext i8 %29 to i32
  %30 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.89, i32 noundef %conv44) #13
  br label %abort

do.body55:                                        ; preds = %if.end43
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_firmware_load.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_firmware_load, %if.then65)) #10
          to label %do.end71 [label %if.then65], !srcloc !284

if.then65:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %34 = ptrtoint ptr %data5 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %data5, align 1
  %conv68 = zext i8 %35 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_firmware_load.__UNIQUE_ID_ddebug303, ptr noundef %33, ptr noundef nonnull @.str.91, i32 noundef %conv68) #10
  br label %do.end71

do.end71:                                         ; preds = %if.then65, %do.body55
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %20)
  %cmp73.not = icmp eq i8 %20, 10
  br i1 %cmp73.not, label %if.end80, label %do.end78

do.end78:                                         ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.93) #13
  br label %abort

if.end80:                                         ; preds = %do.end71
  %length = getelementptr inbounds %struct.dfw_binrec, ptr %18, i32 0, i32 1
  %38 = ptrtoint ptr %length to i32
  call void @__asan_loadN_noabort(i32 %38, i32 3)
  %bf.load = load i24, ptr %length, align 1
  %bf.cast = zext i24 %bf.load to i32
  %add = add nuw nsw i32 %bf.cast, 8
  %arrayidx = getelementptr %struct.dfw_binrec, ptr %18, i32 0, i32 3, i32 %bf.cast
  %pll_running = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 12
  %max_spi_freq = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 13
  %board_max_spi_speed = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 14
  %sysclk = getelementptr inbounds %struct.wm0010_priv, ptr %3, i32 0, i32 8
  br label %while.cond

while.cond:                                       ; preds = %if.end197.while.cond_crit_edge, %if.end80
  %offset.0 = phi i32 [ %add, %if.end80 ], [ %add159, %if.end197.while.cond_crit_edge ]
  %rec.0 = phi ptr [ %arrayidx, %if.end80 ], [ %arrayidx164, %if.end197.while.cond_crit_edge ]
  %39 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %fw, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.0, i32 %42)
  %cmp86 = icmp ult i32 %offset.0, %42
  br i1 %cmp86, label %do.body88, label %while.end

do.body88:                                        ; preds = %while.cond
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_firmware_load.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_firmware_load, %if.then100)) #10
          to label %do.end109 [label %if.then100], !srcloc !284

if.then100:                                       ; preds = %do.body88
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  %45 = ptrtoint ptr %rec.0 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %rec.0, align 1
  %conv103 = zext i8 %46 to i32
  %length104 = getelementptr inbounds %struct.dfw_binrec, ptr %rec.0, i32 0, i32 1
  %47 = ptrtoint ptr %length104 to i32
  call void @__asan_loadN_noabort(i32 %47, i32 3)
  %bf.load105 = load i24, ptr %length104, align 1
  %bf.cast106 = zext i24 %bf.load105 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_firmware_load.__UNIQUE_ID_ddebug304, ptr noundef %44, ptr noundef nonnull @.str.95, i32 noundef %conv103, i32 noundef %bf.cast106) #10
  br label %do.end109

do.end109:                                        ; preds = %if.then100, %do.body88
  %length110 = getelementptr inbounds %struct.dfw_binrec, ptr %rec.0, i32 0, i32 1
  %48 = ptrtoint ptr %length110 to i32
  call void @__asan_loadN_noabort(i32 %48, i32 3)
  %bf.load111 = load i24, ptr %length110, align 1
  %bf.cast112 = zext i24 %bf.load111 to i32
  %add113 = add nuw nsw i32 %bf.cast112, 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %49 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3520, i32 noundef 168) #14
  %tobool115.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool115.not, label %do.end109.abort_crit_edge, label %if.end117

do.end109.abort_crit_edge:                        ; preds = %do.end109
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

if.end117:                                        ; preds = %do.end109
  %component118 = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %component118 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %component, ptr %component118, align 8
  %51 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %4, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %52, ptr noundef nonnull %xfer_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end117.kzalloc.exit.thread_crit_edge

if.end117.kzalloc.exit.thread_crit_edge:          ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  br label %kzalloc.exit.thread

if.end.i.i:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %4, align 4
  %54 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %xfer_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %call7.i.i, ptr %52, align 4
  br label %kzalloc.exit.thread

kzalloc.exit.thread:                              ; preds = %if.end.i.i, %if.end117.kzalloc.exit.thread_crit_edge
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add113, i32 noundef 3521) #15
  %tobool120.not49 = icmp eq ptr %call9.i.i, null
  br i1 %tobool120.not49, label %kzalloc.exit.thread.abort1_crit_edge, label %if.end8.i.i37

kzalloc.exit.thread.abort1_crit_edge:             ; preds = %kzalloc.exit.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort1

if.end8.i.i37:                                    ; preds = %kzalloc.exit.thread
  %rx_buf53 = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 4, i32 1
  %57 = ptrtoint ptr %rx_buf53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call9.i.i, ptr %rx_buf53, align 4
  %call9.i.i36 = call noalias align 128 ptr @__kmalloc(i32 noundef %add113, i32 noundef 3521) #15
  %tobool124.not = icmp eq ptr %call9.i.i36, null
  br i1 %tobool124.not, label %if.end8.i.i37.abort1_crit_edge, label %if.end126

if.end8.i.i37.abort1_crit_edge:                   ; preds = %if.end8.i.i37
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort1

if.end126:                                        ; preds = %if.end8.i.i37
  %t54 = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %t54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call9.i.i36, ptr %t54, align 8
  %div5.i = lshr i32 %add113, 3
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end126
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end126 ]
  %arrayidx.i = getelementptr i64, ptr %rec.0, i32 %i.07.i
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx.i, align 8
  %61 = call i64 @llvm.bswap.i64(i64 %60) #10
  %arrayidx1.i = getelementptr i64, ptr %call9.i.i36, i32 %i.07.i
  %62 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 %61, ptr %arrayidx1.i, align 8
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div5.i
  br i1 %exitcond.not.i, label %byte_swap_64.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

byte_swap_64.exit:                                ; preds = %for.body.i
  %m = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 3
  %63 = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 3, i32 1
  %64 = call ptr @memset(ptr %63, i32 0, i32 40)
  %65 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %m, ptr %m, align 8
  %prev.i.i.i = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 3, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %m, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 3, i32 10
  %67 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 8
  %prev.i2.i.i = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 3, i32 10, i32 1
  %68 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %complete = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 3, i32 3
  %69 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @wm0010_boot_xfer_complete, ptr %complete, align 8
  %context = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 3, i32 4
  %70 = ptrtoint ptr %context to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call7.i.i, ptr %context, align 4
  %len132 = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 4, i32 2
  %71 = ptrtoint ptr %len132 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add113, ptr %len132, align 8
  %bits_per_word = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 4, i32 8
  %72 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 8, ptr %bits_per_word, align 1
  %73 = ptrtoint ptr %pll_running to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %pll_running, align 2, !range !287
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool134.not = icmp eq i8 %74, 0
  br i1 %tobool134.not, label %if.then135, label %if.else

if.then135:                                       ; preds = %byte_swap_64.exit
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %sysclk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sysclk, align 4
  %div = sdiv i32 %76, 6
  %speed_hz = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 4, i32 12
  %77 = ptrtoint ptr %speed_hz to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %div, ptr %speed_hz, align 4
  br label %if.end149

if.else:                                          ; preds = %byte_swap_64.exit
  %78 = ptrtoint ptr %max_spi_freq to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %max_spi_freq, align 4
  %speed_hz138 = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 4, i32 12
  %80 = ptrtoint ptr %speed_hz138 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %speed_hz138, align 4
  %81 = ptrtoint ptr %board_max_spi_speed to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %board_max_spi_speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool139.not = icmp eq i32 %82, 0
  br i1 %tobool139.not, label %if.else.if.end149_crit_edge, label %land.lhs.true

if.else.if.end149_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

land.lhs.true:                                    ; preds = %if.else
  %83 = ptrtoint ptr %max_spi_freq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max_spi_freq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %82, i32 %84)
  %cmp142 = icmp slt i32 %82, %84
  br i1 %cmp142, label %if.then144, label %land.lhs.true.if.end149_crit_edge

land.lhs.true.if.end149_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end149

if.then144:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %speed_hz138 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %82, ptr %speed_hz138, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then144, %land.lhs.true.if.end149_crit_edge, %if.else.if.end149_crit_edge, %if.then135
  %speed_hz151 = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 4, i32 12
  %86 = ptrtoint ptr %speed_hz151 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %speed_hz151, align 4
  %88 = ptrtoint ptr %max_spi_freq to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %87, ptr %max_spi_freq, align 4
  %transfer_list.i = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 4, i32 18
  %89 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef %90, ptr noundef %m) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end149.spi_message_add_tail.exit_crit_edge

if.end149.spi_message_add_tail.exit_crit_edge:    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %92 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %m, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 4, i32 18, i32 1
  %93 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %90, ptr %prev3.i.i.i, align 8
  %94 = ptrtoint ptr %90 to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %transfer_list.i, ptr %90, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %if.end149.spi_message_add_tail.exit_crit_edge
  %95 = ptrtoint ptr %length110 to i32
  call void @__asan_loadN_noabort(i32 %95, i32 3)
  %bf.load156 = load i24, ptr %length110, align 1
  %bf.cast157 = zext i24 %bf.load156 to i32
  %add158 = add i32 %offset.0, 8
  %add159 = add i32 %add158, %bf.cast157
  %arrayidx164 = getelementptr %struct.dfw_binrec, ptr %rec.0, i32 0, i32 3, i32 %bf.cast157
  %96 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %fw, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add159, i32 %99)
  %cmp166.not = icmp ult i32 %add159, %99
  br i1 %cmp166.not, label %spi_message_add_tail.exit.if.end187_crit_edge, label %do.body169

spi_message_add_tail.exit.if.end187_crit_edge:    ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end187

do.body169:                                       ; preds = %spi_message_add_tail.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_firmware_load.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_firmware_load, %if.then181)) #10
          to label %do.end185 [label %if.then181], !srcloc !284

if.then181:                                       ; preds = %do.body169
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_firmware_load.__UNIQUE_ID_ddebug305, ptr noundef %101, ptr noundef nonnull @.str.96) #10
  br label %do.end185

do.end185:                                        ; preds = %if.then181, %do.body169
  %done186 = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %call7.i.i, i32 0, i32 2
  %102 = ptrtoint ptr %done186 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %done, ptr %done186, align 4
  br label %if.end187

if.end187:                                        ; preds = %do.end185, %spi_message_add_tail.exit.if.end187_crit_edge
  %call189 = call i32 @spi_async(ptr noundef %1, ptr noundef %m) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call189)
  %cmp190.not = icmp eq i32 %call189, 0
  br i1 %cmp190.not, label %if.end197, label %do.end195

do.end195:                                        ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #12
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.98, i32 noundef %call189) #13
  br label %abort1

if.end197:                                        ; preds = %if.end187
  %105 = ptrtoint ptr %boot_failed to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %boot_failed, align 4, !range !287
  %tobool199.not = icmp eq i8 %106, 0
  br i1 %tobool199.not, label %if.end197.while.cond_crit_edge, label %do.body201

if.end197.while.cond_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

do.body201:                                       ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_firmware_load.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_firmware_load, %if.then213)) #10
          to label %abort1 [label %if.then213], !srcloc !284

if.then213:                                       ; preds = %do.body201
  call void @__sanitizer_cov_trace_pc() #12
  %107 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_firmware_load.__UNIQUE_ID_ddebug306, ptr noundef %108, ptr noundef nonnull @.str.100) #10
  br label %abort1

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #12
  call void @wait_for_completion(ptr noundef nonnull %done) #10
  br label %abort1

abort1:                                           ; preds = %while.end, %if.then213, %do.body201, %do.end195, %if.end8.i.i37.abort1_crit_edge, %kzalloc.exit.thread.abort1_crit_edge
  %ret.0 = phi i32 [ %call189, %do.end195 ], [ 0, %while.end ], [ -22, %if.then213 ], [ -22, %do.body201 ], [ -12, %if.end8.i.i37.abort1_crit_edge ], [ -12, %kzalloc.exit.thread.abort1_crit_edge ]
  %109 = ptrtoint ptr %xfer_list to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile ptr, ptr %xfer_list, align 4
  %cmp.i40.not60 = icmp eq ptr %110, %xfer_list
  br i1 %cmp.i40.not60, label %abort1.abort_crit_edge, label %abort1.while.body224_crit_edge

abort1.while.body224_crit_edge:                   ; preds = %abort1
  br label %while.body224

abort1.abort_crit_edge:                           ; preds = %abort1
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

while.body224:                                    ; preds = %list_del.exit.while.body224_crit_edge, %abort1.while.body224_crit_edge
  %111 = phi ptr [ %125, %list_del.exit.while.body224_crit_edge ], [ %110, %abort1.while.body224_crit_edge ]
  %t226 = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %111, i32 0, i32 4
  %rx_buf227 = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %111, i32 0, i32 4, i32 1
  %112 = ptrtoint ptr %rx_buf227 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %rx_buf227, align 4
  call void @kfree(ptr noundef %113) #10
  %114 = ptrtoint ptr %t226 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %t226, align 4
  call void @kfree(ptr noundef %115) #10
  %call.i.i42 = call zeroext i1 @__list_del_entry_valid(ptr noundef %111) #10
  br i1 %call.i.i42, label %if.end.i.i44, label %while.body224.list_del.exit_crit_edge

while.body224.list_del.exit_crit_edge:            ; preds = %while.body224
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i44:                                     ; preds = %while.body224
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i43 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %116 = ptrtoint ptr %prev.i.i43 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %prev.i.i43, align 4
  %118 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %111, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %119, i32 0, i32 1
  %120 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %117, ptr %prev1.i.i.i, align 4
  %121 = ptrtoint ptr %117 to i32
  call void @__asan_store4_noabort(i32 %121)
  store volatile ptr %119, ptr %117, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i44, %while.body224.list_del.exit_crit_edge
  %122 = ptrtoint ptr %111 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr inttoptr (i32 256 to ptr), ptr %111, align 4
  %prev.i45 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %123 = ptrtoint ptr %prev.i45 to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i45, align 4
  call void @kfree(ptr noundef %111) #10
  %124 = ptrtoint ptr %xfer_list to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load volatile ptr, ptr %xfer_list, align 4
  %cmp.i40.not = icmp eq ptr %125, %xfer_list
  br i1 %cmp.i40.not, label %list_del.exit.abort_crit_edge, label %list_del.exit.while.body224_crit_edge

list_del.exit.while.body224_crit_edge:            ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body224

list_del.exit.abort_crit_edge:                    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %abort

abort:                                            ; preds = %list_del.exit.abort_crit_edge, %abort1.abort_crit_edge, %do.end109.abort_crit_edge, %do.end78, %do.end50, %do.end41
  %ret.1 = phi i32 [ -22, %do.end41 ], [ -22, %do.end50 ], [ -22, %do.end78 ], [ %ret.0, %abort1.abort_crit_edge ], [ %ret.0, %list_del.exit.abort_crit_edge ], [ -12, %do.end109.abort_crit_edge ]
  %126 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %127) #10
  br label %cleanup

cleanup:                                          ; preds = %abort, %do.end19, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ -22, %do.end19 ], [ %ret.1, %abort ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xfer_list) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_raw_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm0010_boot_xfer_complete(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %component1 = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %data, i32 0, i32 1
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
  %rx_buf = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %data, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %rx_buf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_buf, align 4
  %status = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %data, i32 0, i32 3, i32 7
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.not = icmp eq i32 %9, 0
  br i1 %cmp.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %entry
  %len = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %data, i32 0, i32 4, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp8459.not = icmp ult i32 %11, 4
  br i1 %cmp8459.not, label %for.cond.preheader.for.end_crit_edge, label %do.body9.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

do.body9.lr.ph:                                   ; preds = %for.cond.preheader
  %irq_lock.i419 = getelementptr inbounds %struct.wm0010_priv, ptr %5, i32 0, i32 16
  %state5.i421 = getelementptr inbounds %struct.wm0010_priv, ptr %5, i32 0, i32 9
  %dev.i422 = getelementptr inbounds %struct.wm0010_priv, ptr %5, i32 0, i32 2
  %boot_failed.i433 = getelementptr inbounds %struct.wm0010_priv, ptr %5, i32 0, i32 10
  %pll_running = getelementptr inbounds %struct.wm0010_priv, ptr %5, i32 0, i32 12
  br label %do.body9

do.end:                                           ; preds = %entry
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.101, i32 noundef %9) #13
  %irq_lock.i = getelementptr inbounds %struct.wm0010_priv, ptr %5, i32 0, i32 16
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i) #10
  %state5.i = getelementptr inbounds %struct.wm0010_priv, ptr %5, i32 0, i32 9
  %12 = ptrtoint ptr %state5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %state5.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i, i32 noundef %call2.i) #10
  %dev.i274 = getelementptr inbounds %struct.wm0010_priv, ptr %5, i32 0, i32 2
  %14 = ptrtoint ptr %dev.i274 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i274, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp1.i.i = icmp ugt i32 %13, 4
  br i1 %cmp1.i.i, label %do.end.wm0010_state_to_str.exit.i_crit_edge, label %if.end.i.i

do.end.wm0010_state_to_str.exit.i_crit_edge:      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_state_to_str.exit.i

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %13
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  br label %wm0010_state_to_str.exit.i

wm0010_state_to_str.exit.i:                       ; preds = %if.end.i.i, %do.end.wm0010_state_to_str.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %17, %if.end.i.i ], [ @.str.82, %do.end.wm0010_state_to_str.exit.i_crit_edge ]
  %add.i = add i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i)
  %cmp1.i17.i = icmp ugt i32 %add.i, 4
  br i1 %cmp1.i17.i, label %wm0010_state_to_str.exit.i.wm0010_mark_boot_failure.exit_crit_edge, label %if.end.i19.i

wm0010_state_to_str.exit.i.wm0010_mark_boot_failure.exit_crit_edge: ; preds = %wm0010_state_to_str.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_mark_boot_failure.exit

if.end.i19.i:                                     ; preds = %wm0010_state_to_str.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18.i = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %add.i
  %18 = ptrtoint ptr %arrayidx.i18.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i18.i, align 4
  br label %wm0010_mark_boot_failure.exit

wm0010_mark_boot_failure.exit:                    ; preds = %if.end.i19.i, %wm0010_state_to_str.exit.i.wm0010_mark_boot_failure.exit_crit_edge
  %retval.0.i20.i = phi ptr [ %19, %if.end.i19.i ], [ @.str.82, %wm0010_state_to_str.exit.i.wm0010_mark_boot_failure.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i20.i) #13
  %boot_failed.i = getelementptr inbounds %struct.wm0010_priv, ptr %5, i32 0, i32 10
  %20 = ptrtoint ptr %boot_failed.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %boot_failed.i, align 4
  %done = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %data, i32 0, i32 2
  %21 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %done, align 4
  %tobool.not = icmp eq ptr %22, null
  br i1 %tobool.not, label %wm0010_mark_boot_failure.exit.cleanup_crit_edge, label %wm0010_mark_boot_failure.exit.cleanup.sink.split_crit_edge

wm0010_mark_boot_failure.exit.cleanup.sink.split_crit_edge: ; preds = %wm0010_mark_boot_failure.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

wm0010_mark_boot_failure.exit.cleanup_crit_edge:  ; preds = %wm0010_mark_boot_failure.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond:                                         ; preds = %sw.epilog
  %inc = add nuw nsw i32 %i.0460, 1
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 4
  %div255 = lshr i32 %24, 2
  %cmp8 = icmp ult i32 %inc, %div255
  br i1 %cmp8, label %for.cond.do.body9_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.do.body9_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body9

do.body9:                                         ; preds = %for.cond.do.body9_crit_edge, %do.body9.lr.ph
  %i.0460 = phi i32 [ 0, %do.body9.lr.ph ], [ %inc, %for.cond.do.body9_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_boot_xfer_complete, %if.then14)) #10
          to label %do.end18 [label %if.then14], !srcloc !284

if.then14:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i, align 4
  %arrayidx = getelementptr i32, ptr %7, i32 %i.0460
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug296, ptr noundef %26, ptr noundef nonnull @.str.103, i32 noundef %i.0460, i32 noundef %28) #10
  br label %do.end18

do.end18:                                         ; preds = %if.then14, %do.body9
  %arrayidx19 = getelementptr i32, ptr %7, i32 %i.0460
  %29 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx19, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.148)
  switch i32 %30, label %do.end187 [
    i32 -522133280, label %do.end22
    i32 1431655765, label %sw.bb24
    i32 267190272, label %do.body33
    i32 267190279, label %do.body51
    i32 267190280, label %do.body69
    i32 267190281, label %do.body87
    i32 267190284, label %do.body105
    i32 267190286, label %do.body123
    i32 267190309, label %do.end143
    i32 267190316, label %do.end148
    i32 267190321, label %do.end153
    i32 267190322, label %do.end158
    i32 267190323, label %do.end163
    i32 267190324, label %do.end168
    i32 267190325, label %do.end173
    i32 267190328, label %do.end178
    i32 267190330, label %do.end183
  ]

do.end22:                                         ; preds = %do.end18
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.105, i32 noundef %i.0460) #13
  %call2.i276 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i419) #10
  %34 = ptrtoint ptr %state5.i421 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %state5.i421, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i419, i32 noundef %call2.i276) #10
  %36 = ptrtoint ptr %dev.i422 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i422, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp1.i.i279 = icmp ugt i32 %35, 4
  br i1 %cmp1.i.i279, label %do.end22.wm0010_state_to_str.exit.i285_crit_edge, label %if.end.i.i281

do.end22.wm0010_state_to_str.exit.i285_crit_edge: ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_state_to_str.exit.i285

if.end.i.i281:                                    ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i280 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %35
  %38 = ptrtoint ptr %arrayidx.i.i280 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx.i.i280, align 4
  br label %wm0010_state_to_str.exit.i285

wm0010_state_to_str.exit.i285:                    ; preds = %if.end.i.i281, %do.end22.wm0010_state_to_str.exit.i285_crit_edge
  %retval.0.i.i282 = phi ptr [ %39, %if.end.i.i281 ], [ @.str.82, %do.end22.wm0010_state_to_str.exit.i285_crit_edge ]
  %add.i283 = add i32 %35, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i283)
  %cmp1.i17.i284 = icmp ugt i32 %add.i283, 4
  br i1 %cmp1.i17.i284, label %wm0010_state_to_str.exit.i285.wm0010_mark_boot_failure.exit290_crit_edge, label %if.end.i19.i287

wm0010_state_to_str.exit.i285.wm0010_mark_boot_failure.exit290_crit_edge: ; preds = %wm0010_state_to_str.exit.i285
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_mark_boot_failure.exit290

if.end.i19.i287:                                  ; preds = %wm0010_state_to_str.exit.i285
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18.i286 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %add.i283
  %40 = ptrtoint ptr %arrayidx.i18.i286 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i18.i286, align 4
  br label %wm0010_mark_boot_failure.exit290

wm0010_mark_boot_failure.exit290:                 ; preds = %if.end.i19.i287, %wm0010_state_to_str.exit.i285.wm0010_mark_boot_failure.exit290_crit_edge
  %retval.0.i20.i288 = phi ptr [ %41, %if.end.i19.i287 ], [ @.str.82, %wm0010_state_to_str.exit.i285.wm0010_mark_boot_failure.exit290_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i282, ptr noundef %retval.0.i20.i288) #13
  %42 = ptrtoint ptr %boot_failed.i433 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %boot_failed.i433, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %do.end18
  %43 = ptrtoint ptr %state5.i421 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %state5.i421, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %44)
  %cmp25 = icmp ult i32 %44, 3
  br i1 %cmp25, label %sw.bb24.sw.epilog_crit_edge, label %do.end30

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end30:                                         ; preds = %sw.bb24
  %45 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.108, i32 noundef %i.0460) #13
  %call2.i292 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i419) #10
  %47 = ptrtoint ptr %state5.i421 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %state5.i421, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i419, i32 noundef %call2.i292) #10
  %49 = ptrtoint ptr %dev.i422 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i422, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp1.i.i295 = icmp ugt i32 %48, 4
  br i1 %cmp1.i.i295, label %do.end30.wm0010_state_to_str.exit.i301_crit_edge, label %if.end.i.i297

do.end30.wm0010_state_to_str.exit.i301_crit_edge: ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_state_to_str.exit.i301

if.end.i.i297:                                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i296 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %48
  %51 = ptrtoint ptr %arrayidx.i.i296 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx.i.i296, align 4
  br label %wm0010_state_to_str.exit.i301

wm0010_state_to_str.exit.i301:                    ; preds = %if.end.i.i297, %do.end30.wm0010_state_to_str.exit.i301_crit_edge
  %retval.0.i.i298 = phi ptr [ %52, %if.end.i.i297 ], [ @.str.82, %do.end30.wm0010_state_to_str.exit.i301_crit_edge ]
  %add.i299 = add i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i299)
  %cmp1.i17.i300 = icmp ugt i32 %add.i299, 4
  br i1 %cmp1.i17.i300, label %wm0010_state_to_str.exit.i301.wm0010_mark_boot_failure.exit306_crit_edge, label %if.end.i19.i303

wm0010_state_to_str.exit.i301.wm0010_mark_boot_failure.exit306_crit_edge: ; preds = %wm0010_state_to_str.exit.i301
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_mark_boot_failure.exit306

if.end.i19.i303:                                  ; preds = %wm0010_state_to_str.exit.i301
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18.i302 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %add.i299
  %53 = ptrtoint ptr %arrayidx.i18.i302 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx.i18.i302, align 4
  br label %wm0010_mark_boot_failure.exit306

wm0010_mark_boot_failure.exit306:                 ; preds = %if.end.i19.i303, %wm0010_state_to_str.exit.i301.wm0010_mark_boot_failure.exit306_crit_edge
  %retval.0.i20.i304 = phi ptr [ %54, %if.end.i19.i303 ], [ @.str.82, %wm0010_state_to_str.exit.i301.wm0010_mark_boot_failure.exit306_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i298, ptr noundef %retval.0.i20.i304) #13
  %55 = ptrtoint ptr %boot_failed.i433 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %boot_failed.i433, align 4
  br label %sw.epilog

do.body33:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug297, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_boot_xfer_complete, %if.then45)) #10
          to label %sw.epilog [label %if.then45], !srcloc !284

if.then45:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug297, ptr noundef %57, ptr noundef nonnull @.str.110) #10
  br label %sw.epilog

do.body51:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug298, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_boot_xfer_complete, %if.then63)) #10
          to label %sw.epilog [label %if.then63], !srcloc !284

if.then63:                                        ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug298, ptr noundef %59, ptr noundef nonnull @.str.111) #10
  br label %sw.epilog

do.body69:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug299, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_boot_xfer_complete, %if.then81)) #10
          to label %sw.epilog [label %if.then81], !srcloc !284

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug299, ptr noundef %61, ptr noundef nonnull @.str.112) #10
  br label %sw.epilog

do.body87:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_boot_xfer_complete, %if.then99)) #10
          to label %sw.epilog [label %if.then99], !srcloc !284

if.then99:                                        ; preds = %do.body87
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug300, ptr noundef %63, ptr noundef nonnull @.str.113) #10
  br label %sw.epilog

do.body105:                                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_boot_xfer_complete, %if.then117)) #10
          to label %sw.epilog [label %if.then117], !srcloc !284

if.then117:                                       ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug301, ptr noundef %65, ptr noundef nonnull @.str.114) #10
  br label %sw.epilog

do.body123:                                       ; preds = %do.end18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm0010_boot_xfer_complete, %if.then135)) #10
          to label %do.end139 [label %if.then135], !srcloc !284

if.then135:                                       ; preds = %do.body123
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug302, ptr noundef %67, ptr noundef nonnull @.str.61) #10
  br label %do.end139

do.end139:                                        ; preds = %if.then135, %do.body123
  %68 = ptrtoint ptr %pll_running to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 1, ptr %pll_running, align 2
  br label %sw.epilog

do.end143:                                        ; preds = %do.end18
  %69 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.116) #13
  %call2.i308 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i419) #10
  %71 = ptrtoint ptr %state5.i421 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %state5.i421, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i419, i32 noundef %call2.i308) #10
  %73 = ptrtoint ptr %dev.i422 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev.i422, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %72)
  %cmp1.i.i311 = icmp ugt i32 %72, 4
  br i1 %cmp1.i.i311, label %do.end143.wm0010_state_to_str.exit.i317_crit_edge, label %if.end.i.i313

do.end143.wm0010_state_to_str.exit.i317_crit_edge: ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_state_to_str.exit.i317

if.end.i.i313:                                    ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i312 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %72
  %75 = ptrtoint ptr %arrayidx.i.i312 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.i.i312, align 4
  br label %wm0010_state_to_str.exit.i317

wm0010_state_to_str.exit.i317:                    ; preds = %if.end.i.i313, %do.end143.wm0010_state_to_str.exit.i317_crit_edge
  %retval.0.i.i314 = phi ptr [ %76, %if.end.i.i313 ], [ @.str.82, %do.end143.wm0010_state_to_str.exit.i317_crit_edge ]
  %add.i315 = add i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i315)
  %cmp1.i17.i316 = icmp ugt i32 %add.i315, 4
  br i1 %cmp1.i17.i316, label %wm0010_state_to_str.exit.i317.wm0010_mark_boot_failure.exit322_crit_edge, label %if.end.i19.i319

wm0010_state_to_str.exit.i317.wm0010_mark_boot_failure.exit322_crit_edge: ; preds = %wm0010_state_to_str.exit.i317
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_mark_boot_failure.exit322

if.end.i19.i319:                                  ; preds = %wm0010_state_to_str.exit.i317
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18.i318 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %add.i315
  %77 = ptrtoint ptr %arrayidx.i18.i318 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %arrayidx.i18.i318, align 4
  br label %wm0010_mark_boot_failure.exit322

wm0010_mark_boot_failure.exit322:                 ; preds = %if.end.i19.i319, %wm0010_state_to_str.exit.i317.wm0010_mark_boot_failure.exit322_crit_edge
  %retval.0.i20.i320 = phi ptr [ %78, %if.end.i19.i319 ], [ @.str.82, %wm0010_state_to_str.exit.i317.wm0010_mark_boot_failure.exit322_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i314, ptr noundef %retval.0.i20.i320) #13
  %79 = ptrtoint ptr %boot_failed.i433 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %boot_failed.i433, align 4
  br label %sw.epilog

do.end148:                                        ; preds = %do.end18
  %80 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.119) #13
  %call2.i324 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i419) #10
  %82 = ptrtoint ptr %state5.i421 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state5.i421, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i419, i32 noundef %call2.i324) #10
  %84 = ptrtoint ptr %dev.i422 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev.i422, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %83)
  %cmp1.i.i327 = icmp ugt i32 %83, 4
  br i1 %cmp1.i.i327, label %do.end148.wm0010_state_to_str.exit.i333_crit_edge, label %if.end.i.i329

do.end148.wm0010_state_to_str.exit.i333_crit_edge: ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_state_to_str.exit.i333

if.end.i.i329:                                    ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i328 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %83
  %86 = ptrtoint ptr %arrayidx.i.i328 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %arrayidx.i.i328, align 4
  br label %wm0010_state_to_str.exit.i333

wm0010_state_to_str.exit.i333:                    ; preds = %if.end.i.i329, %do.end148.wm0010_state_to_str.exit.i333_crit_edge
  %retval.0.i.i330 = phi ptr [ %87, %if.end.i.i329 ], [ @.str.82, %do.end148.wm0010_state_to_str.exit.i333_crit_edge ]
  %add.i331 = add i32 %83, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i331)
  %cmp1.i17.i332 = icmp ugt i32 %add.i331, 4
  br i1 %cmp1.i17.i332, label %wm0010_state_to_str.exit.i333.wm0010_mark_boot_failure.exit338_crit_edge, label %if.end.i19.i335

wm0010_state_to_str.exit.i333.wm0010_mark_boot_failure.exit338_crit_edge: ; preds = %wm0010_state_to_str.exit.i333
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_mark_boot_failure.exit338

if.end.i19.i335:                                  ; preds = %wm0010_state_to_str.exit.i333
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18.i334 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %add.i331
  %88 = ptrtoint ptr %arrayidx.i18.i334 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx.i18.i334, align 4
  br label %wm0010_mark_boot_failure.exit338

wm0010_mark_boot_failure.exit338:                 ; preds = %if.end.i19.i335, %wm0010_state_to_str.exit.i333.wm0010_mark_boot_failure.exit338_crit_edge
  %retval.0.i20.i336 = phi ptr [ %89, %if.end.i19.i335 ], [ @.str.82, %wm0010_state_to_str.exit.i333.wm0010_mark_boot_failure.exit338_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i330, ptr noundef %retval.0.i20.i336) #13
  %90 = ptrtoint ptr %boot_failed.i433 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 1, ptr %boot_failed.i433, align 4
  br label %sw.epilog

do.end153:                                        ; preds = %do.end18
  %91 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.122) #13
  %call2.i340 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i419) #10
  %93 = ptrtoint ptr %state5.i421 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %state5.i421, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i419, i32 noundef %call2.i340) #10
  %95 = ptrtoint ptr %dev.i422 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dev.i422, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %94)
  %cmp1.i.i343 = icmp ugt i32 %94, 4
  br i1 %cmp1.i.i343, label %do.end153.wm0010_state_to_str.exit.i349_crit_edge, label %if.end.i.i345

do.end153.wm0010_state_to_str.exit.i349_crit_edge: ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_state_to_str.exit.i349

if.end.i.i345:                                    ; preds = %do.end153
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i344 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %94
  %97 = ptrtoint ptr %arrayidx.i.i344 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx.i.i344, align 4
  br label %wm0010_state_to_str.exit.i349

wm0010_state_to_str.exit.i349:                    ; preds = %if.end.i.i345, %do.end153.wm0010_state_to_str.exit.i349_crit_edge
  %retval.0.i.i346 = phi ptr [ %98, %if.end.i.i345 ], [ @.str.82, %do.end153.wm0010_state_to_str.exit.i349_crit_edge ]
  %add.i347 = add i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i347)
  %cmp1.i17.i348 = icmp ugt i32 %add.i347, 4
  br i1 %cmp1.i17.i348, label %wm0010_state_to_str.exit.i349.wm0010_mark_boot_failure.exit354_crit_edge, label %if.end.i19.i351

wm0010_state_to_str.exit.i349.wm0010_mark_boot_failure.exit354_crit_edge: ; preds = %wm0010_state_to_str.exit.i349
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_mark_boot_failure.exit354

if.end.i19.i351:                                  ; preds = %wm0010_state_to_str.exit.i349
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18.i350 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %add.i347
  %99 = ptrtoint ptr %arrayidx.i18.i350 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx.i18.i350, align 4
  br label %wm0010_mark_boot_failure.exit354

wm0010_mark_boot_failure.exit354:                 ; preds = %if.end.i19.i351, %wm0010_state_to_str.exit.i349.wm0010_mark_boot_failure.exit354_crit_edge
  %retval.0.i20.i352 = phi ptr [ %100, %if.end.i19.i351 ], [ @.str.82, %wm0010_state_to_str.exit.i349.wm0010_mark_boot_failure.exit354_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %96, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i346, ptr noundef %retval.0.i20.i352) #13
  %101 = ptrtoint ptr %boot_failed.i433 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 1, ptr %boot_failed.i433, align 4
  br label %sw.epilog

do.end158:                                        ; preds = %do.end18
  %102 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %103, ptr noundef nonnull @.str.125) #13
  %call2.i356 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i419) #10
  %104 = ptrtoint ptr %state5.i421 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %state5.i421, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i419, i32 noundef %call2.i356) #10
  %106 = ptrtoint ptr %dev.i422 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev.i422, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %105)
  %cmp1.i.i359 = icmp ugt i32 %105, 4
  br i1 %cmp1.i.i359, label %do.end158.wm0010_state_to_str.exit.i365_crit_edge, label %if.end.i.i361

do.end158.wm0010_state_to_str.exit.i365_crit_edge: ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_state_to_str.exit.i365

if.end.i.i361:                                    ; preds = %do.end158
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i360 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %105
  %108 = ptrtoint ptr %arrayidx.i.i360 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx.i.i360, align 4
  br label %wm0010_state_to_str.exit.i365

wm0010_state_to_str.exit.i365:                    ; preds = %if.end.i.i361, %do.end158.wm0010_state_to_str.exit.i365_crit_edge
  %retval.0.i.i362 = phi ptr [ %109, %if.end.i.i361 ], [ @.str.82, %do.end158.wm0010_state_to_str.exit.i365_crit_edge ]
  %add.i363 = add i32 %105, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i363)
  %cmp1.i17.i364 = icmp ugt i32 %add.i363, 4
  br i1 %cmp1.i17.i364, label %wm0010_state_to_str.exit.i365.wm0010_mark_boot_failure.exit370_crit_edge, label %if.end.i19.i367

wm0010_state_to_str.exit.i365.wm0010_mark_boot_failure.exit370_crit_edge: ; preds = %wm0010_state_to_str.exit.i365
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_mark_boot_failure.exit370

if.end.i19.i367:                                  ; preds = %wm0010_state_to_str.exit.i365
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18.i366 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %add.i363
  %110 = ptrtoint ptr %arrayidx.i18.i366 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %arrayidx.i18.i366, align 4
  br label %wm0010_mark_boot_failure.exit370

wm0010_mark_boot_failure.exit370:                 ; preds = %if.end.i19.i367, %wm0010_state_to_str.exit.i365.wm0010_mark_boot_failure.exit370_crit_edge
  %retval.0.i20.i368 = phi ptr [ %111, %if.end.i19.i367 ], [ @.str.82, %wm0010_state_to_str.exit.i365.wm0010_mark_boot_failure.exit370_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %107, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i362, ptr noundef %retval.0.i20.i368) #13
  %112 = ptrtoint ptr %boot_failed.i433 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %boot_failed.i433, align 4
  br label %sw.epilog

do.end163:                                        ; preds = %do.end18
  %113 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.128) #13
  %call2.i372 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i419) #10
  %115 = ptrtoint ptr %state5.i421 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %state5.i421, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i419, i32 noundef %call2.i372) #10
  %117 = ptrtoint ptr %dev.i422 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev.i422, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %116)
  %cmp1.i.i375 = icmp ugt i32 %116, 4
  br i1 %cmp1.i.i375, label %do.end163.wm0010_state_to_str.exit.i381_crit_edge, label %if.end.i.i377

do.end163.wm0010_state_to_str.exit.i381_crit_edge: ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_state_to_str.exit.i381

if.end.i.i377:                                    ; preds = %do.end163
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i376 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %116
  %119 = ptrtoint ptr %arrayidx.i.i376 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx.i.i376, align 4
  br label %wm0010_state_to_str.exit.i381

wm0010_state_to_str.exit.i381:                    ; preds = %if.end.i.i377, %do.end163.wm0010_state_to_str.exit.i381_crit_edge
  %retval.0.i.i378 = phi ptr [ %120, %if.end.i.i377 ], [ @.str.82, %do.end163.wm0010_state_to_str.exit.i381_crit_edge ]
  %add.i379 = add i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i379)
  %cmp1.i17.i380 = icmp ugt i32 %add.i379, 4
  br i1 %cmp1.i17.i380, label %wm0010_state_to_str.exit.i381.wm0010_mark_boot_failure.exit386_crit_edge, label %if.end.i19.i383

wm0010_state_to_str.exit.i381.wm0010_mark_boot_failure.exit386_crit_edge: ; preds = %wm0010_state_to_str.exit.i381
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_mark_boot_failure.exit386

if.end.i19.i383:                                  ; preds = %wm0010_state_to_str.exit.i381
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18.i382 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %add.i379
  %121 = ptrtoint ptr %arrayidx.i18.i382 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %arrayidx.i18.i382, align 4
  br label %wm0010_mark_boot_failure.exit386

wm0010_mark_boot_failure.exit386:                 ; preds = %if.end.i19.i383, %wm0010_state_to_str.exit.i381.wm0010_mark_boot_failure.exit386_crit_edge
  %retval.0.i20.i384 = phi ptr [ %122, %if.end.i19.i383 ], [ @.str.82, %wm0010_state_to_str.exit.i381.wm0010_mark_boot_failure.exit386_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i378, ptr noundef %retval.0.i20.i384) #13
  %123 = ptrtoint ptr %boot_failed.i433 to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 1, ptr %boot_failed.i433, align 4
  br label %sw.epilog

do.end168:                                        ; preds = %do.end18
  %124 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %125, ptr noundef nonnull @.str.131) #13
  %call2.i388 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i419) #10
  %126 = ptrtoint ptr %state5.i421 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %state5.i421, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i419, i32 noundef %call2.i388) #10
  %128 = ptrtoint ptr %dev.i422 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev.i422, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %127)
  %cmp1.i.i391 = icmp ugt i32 %127, 4
  br i1 %cmp1.i.i391, label %do.end168.wm0010_state_to_str.exit.i397_crit_edge, label %if.end.i.i393

do.end168.wm0010_state_to_str.exit.i397_crit_edge: ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_state_to_str.exit.i397

if.end.i.i393:                                    ; preds = %do.end168
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i392 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %127
  %130 = ptrtoint ptr %arrayidx.i.i392 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %arrayidx.i.i392, align 4
  br label %wm0010_state_to_str.exit.i397

wm0010_state_to_str.exit.i397:                    ; preds = %if.end.i.i393, %do.end168.wm0010_state_to_str.exit.i397_crit_edge
  %retval.0.i.i394 = phi ptr [ %131, %if.end.i.i393 ], [ @.str.82, %do.end168.wm0010_state_to_str.exit.i397_crit_edge ]
  %add.i395 = add i32 %127, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i395)
  %cmp1.i17.i396 = icmp ugt i32 %add.i395, 4
  br i1 %cmp1.i17.i396, label %wm0010_state_to_str.exit.i397.wm0010_mark_boot_failure.exit402_crit_edge, label %if.end.i19.i399

wm0010_state_to_str.exit.i397.wm0010_mark_boot_failure.exit402_crit_edge: ; preds = %wm0010_state_to_str.exit.i397
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_mark_boot_failure.exit402

if.end.i19.i399:                                  ; preds = %wm0010_state_to_str.exit.i397
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18.i398 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %add.i395
  %132 = ptrtoint ptr %arrayidx.i18.i398 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx.i18.i398, align 4
  br label %wm0010_mark_boot_failure.exit402

wm0010_mark_boot_failure.exit402:                 ; preds = %if.end.i19.i399, %wm0010_state_to_str.exit.i397.wm0010_mark_boot_failure.exit402_crit_edge
  %retval.0.i20.i400 = phi ptr [ %133, %if.end.i19.i399 ], [ @.str.82, %wm0010_state_to_str.exit.i397.wm0010_mark_boot_failure.exit402_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %129, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i394, ptr noundef %retval.0.i20.i400) #13
  %134 = ptrtoint ptr %boot_failed.i433 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 1, ptr %boot_failed.i433, align 4
  br label %sw.epilog

do.end173:                                        ; preds = %do.end18
  %135 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.134) #13
  %call2.i404 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i419) #10
  %137 = ptrtoint ptr %state5.i421 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %state5.i421, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i419, i32 noundef %call2.i404) #10
  %139 = ptrtoint ptr %dev.i422 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev.i422, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %138)
  %cmp1.i.i407 = icmp ugt i32 %138, 4
  br i1 %cmp1.i.i407, label %do.end173.wm0010_state_to_str.exit.i413_crit_edge, label %if.end.i.i409

do.end173.wm0010_state_to_str.exit.i413_crit_edge: ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_state_to_str.exit.i413

if.end.i.i409:                                    ; preds = %do.end173
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i408 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %138
  %141 = ptrtoint ptr %arrayidx.i.i408 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %arrayidx.i.i408, align 4
  br label %wm0010_state_to_str.exit.i413

wm0010_state_to_str.exit.i413:                    ; preds = %if.end.i.i409, %do.end173.wm0010_state_to_str.exit.i413_crit_edge
  %retval.0.i.i410 = phi ptr [ %142, %if.end.i.i409 ], [ @.str.82, %do.end173.wm0010_state_to_str.exit.i413_crit_edge ]
  %add.i411 = add i32 %138, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i411)
  %cmp1.i17.i412 = icmp ugt i32 %add.i411, 4
  br i1 %cmp1.i17.i412, label %wm0010_state_to_str.exit.i413.wm0010_mark_boot_failure.exit418_crit_edge, label %if.end.i19.i415

wm0010_state_to_str.exit.i413.wm0010_mark_boot_failure.exit418_crit_edge: ; preds = %wm0010_state_to_str.exit.i413
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_mark_boot_failure.exit418

if.end.i19.i415:                                  ; preds = %wm0010_state_to_str.exit.i413
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18.i414 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %add.i411
  %143 = ptrtoint ptr %arrayidx.i18.i414 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %arrayidx.i18.i414, align 4
  br label %wm0010_mark_boot_failure.exit418

wm0010_mark_boot_failure.exit418:                 ; preds = %if.end.i19.i415, %wm0010_state_to_str.exit.i413.wm0010_mark_boot_failure.exit418_crit_edge
  %retval.0.i20.i416 = phi ptr [ %144, %if.end.i19.i415 ], [ @.str.82, %wm0010_state_to_str.exit.i413.wm0010_mark_boot_failure.exit418_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i410, ptr noundef %retval.0.i20.i416) #13
  %145 = ptrtoint ptr %boot_failed.i433 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 1, ptr %boot_failed.i433, align 4
  br label %sw.epilog

do.end178:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.137) #13
  br label %sw.epilog

do.end183:                                        ; preds = %do.end18
  %148 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %149, ptr noundef nonnull @.str.140) #13
  %call2.i420 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i419) #10
  %150 = ptrtoint ptr %state5.i421 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %state5.i421, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i419, i32 noundef %call2.i420) #10
  %152 = ptrtoint ptr %dev.i422 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dev.i422, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %151)
  %cmp1.i.i423 = icmp ugt i32 %151, 4
  br i1 %cmp1.i.i423, label %do.end183.wm0010_state_to_str.exit.i429_crit_edge, label %if.end.i.i425

do.end183.wm0010_state_to_str.exit.i429_crit_edge: ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_state_to_str.exit.i429

if.end.i.i425:                                    ; preds = %do.end183
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i424 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %151
  %154 = ptrtoint ptr %arrayidx.i.i424 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i.i424, align 4
  br label %wm0010_state_to_str.exit.i429

wm0010_state_to_str.exit.i429:                    ; preds = %if.end.i.i425, %do.end183.wm0010_state_to_str.exit.i429_crit_edge
  %retval.0.i.i426 = phi ptr [ %155, %if.end.i.i425 ], [ @.str.82, %do.end183.wm0010_state_to_str.exit.i429_crit_edge ]
  %add.i427 = add i32 %151, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i427)
  %cmp1.i17.i428 = icmp ugt i32 %add.i427, 4
  br i1 %cmp1.i17.i428, label %wm0010_state_to_str.exit.i429.wm0010_mark_boot_failure.exit434_crit_edge, label %if.end.i19.i431

wm0010_state_to_str.exit.i429.wm0010_mark_boot_failure.exit434_crit_edge: ; preds = %wm0010_state_to_str.exit.i429
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_mark_boot_failure.exit434

if.end.i19.i431:                                  ; preds = %wm0010_state_to_str.exit.i429
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18.i430 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %add.i427
  %156 = ptrtoint ptr %arrayidx.i18.i430 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx.i18.i430, align 4
  br label %wm0010_mark_boot_failure.exit434

wm0010_mark_boot_failure.exit434:                 ; preds = %if.end.i19.i431, %wm0010_state_to_str.exit.i429.wm0010_mark_boot_failure.exit434_crit_edge
  %retval.0.i20.i432 = phi ptr [ %157, %if.end.i19.i431 ], [ @.str.82, %wm0010_state_to_str.exit.i429.wm0010_mark_boot_failure.exit434_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %153, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i426, ptr noundef %retval.0.i20.i432) #13
  %158 = ptrtoint ptr %boot_failed.i433 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 1, ptr %boot_failed.i433, align 4
  br label %sw.epilog

do.end187:                                        ; preds = %do.end18
  %159 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %160, ptr noundef nonnull @.str.143, i32 noundef %30) #13
  %call2.i436 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock.i419) #10
  %161 = ptrtoint ptr %state5.i421 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %state5.i421, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock.i419, i32 noundef %call2.i436) #10
  %163 = ptrtoint ptr %dev.i422 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev.i422, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %162)
  %cmp1.i.i439 = icmp ugt i32 %162, 4
  br i1 %cmp1.i.i439, label %do.end187.wm0010_state_to_str.exit.i445_crit_edge, label %if.end.i.i441

do.end187.wm0010_state_to_str.exit.i445_crit_edge: ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_state_to_str.exit.i445

if.end.i.i441:                                    ; preds = %do.end187
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i.i440 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %162
  %165 = ptrtoint ptr %arrayidx.i.i440 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %arrayidx.i.i440, align 4
  br label %wm0010_state_to_str.exit.i445

wm0010_state_to_str.exit.i445:                    ; preds = %if.end.i.i441, %do.end187.wm0010_state_to_str.exit.i445_crit_edge
  %retval.0.i.i442 = phi ptr [ %166, %if.end.i.i441 ], [ @.str.82, %do.end187.wm0010_state_to_str.exit.i445_crit_edge ]
  %add.i443 = add i32 %162, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %add.i443)
  %cmp1.i17.i444 = icmp ugt i32 %add.i443, 4
  br i1 %cmp1.i17.i444, label %wm0010_state_to_str.exit.i445.wm0010_mark_boot_failure.exit450_crit_edge, label %if.end.i19.i447

wm0010_state_to_str.exit.i445.wm0010_mark_boot_failure.exit450_crit_edge: ; preds = %wm0010_state_to_str.exit.i445
  call void @__sanitizer_cov_trace_pc() #12
  br label %wm0010_mark_boot_failure.exit450

if.end.i19.i447:                                  ; preds = %wm0010_state_to_str.exit.i445
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i18.i446 = getelementptr [5 x ptr], ptr @wm0010_state_to_str.state_to_str, i32 0, i32 %add.i443
  %167 = ptrtoint ptr %arrayidx.i18.i446 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %arrayidx.i18.i446, align 4
  br label %wm0010_mark_boot_failure.exit450

wm0010_mark_boot_failure.exit450:                 ; preds = %if.end.i19.i447, %wm0010_state_to_str.exit.i445.wm0010_mark_boot_failure.exit450_crit_edge
  %retval.0.i20.i448 = phi ptr [ %168, %if.end.i19.i447 ], [ @.str.82, %wm0010_state_to_str.exit.i445.wm0010_mark_boot_failure.exit450_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %164, ptr noundef nonnull @.str.75, ptr noundef %retval.0.i.i442, ptr noundef %retval.0.i20.i448) #13
  %169 = ptrtoint ptr %boot_failed.i433 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 1, ptr %boot_failed.i433, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %wm0010_mark_boot_failure.exit450, %wm0010_mark_boot_failure.exit434, %do.end178, %wm0010_mark_boot_failure.exit418, %wm0010_mark_boot_failure.exit402, %wm0010_mark_boot_failure.exit386, %wm0010_mark_boot_failure.exit370, %wm0010_mark_boot_failure.exit354, %wm0010_mark_boot_failure.exit338, %wm0010_mark_boot_failure.exit322, %do.end139, %if.then117, %do.body105, %if.then99, %do.body87, %if.then81, %do.body69, %if.then63, %do.body51, %if.then45, %do.body33, %wm0010_mark_boot_failure.exit306, %sw.bb24.sw.epilog_crit_edge, %wm0010_mark_boot_failure.exit290
  %170 = ptrtoint ptr %boot_failed.i433 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %boot_failed.i433, align 4, !range !287
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool190.not = icmp eq i8 %171, 0
  br i1 %tobool190.not, label %for.cond, label %sw.epilog.for.end_crit_edge

sw.epilog.for.end_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %sw.epilog.for.end_crit_edge, %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %done193 = getelementptr inbounds %struct.wm0010_boot_xfer, ptr %data, i32 0, i32 2
  %172 = ptrtoint ptr %done193 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %done193, align 4
  %tobool194.not = icmp eq ptr %173, null
  br i1 %tobool194.not, label %for.end.cleanup_crit_edge, label %for.end.cleanup.sink.split_crit_edge

for.end.cleanup.sink.split_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.end.cleanup.sink.split_crit_edge, %wm0010_mark_boot_failure.exit.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %22, %wm0010_mark_boot_failure.exit.cleanup.sink.split_crit_edge ], [ %173, %for.end.cleanup.sink.split_crit_edge ]
  tail call void @complete(ptr noundef nonnull %.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.end.cleanup_crit_edge, %wm0010_mark_boot_failure.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_async(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 131)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !120, !121, !123, !125, !127, !128, !129, !130, !132, !133, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !149, !151, !153, !155, !157, !159, !161, !163, !165, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !181, !182, !183, !185, !186, !188, !189, !191, !192, !193, !195, !196, !198, !199, !200, !201, !203, !204, !206, !207, !208, !210, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !231, !232, !233, !235, !236, !237, !239, !240, !241, !243, !244, !245, !247, !248, !249, !251, !252, !253, !255, !256, !257, !259, !260, !261, !263, !264, !265, !267, !268, !269, !271, !273}
!llvm.module.flags = !{!275, !276, !277, !278, !279, !280, !281, !282}
!llvm.ident = !{!283}

!0 = !{ptr @__initcall__kmod_snd_soc_wm0010__312_995_wm0010_spi_driver_init6, !1, !"__initcall__kmod_snd_soc_wm0010__312_995_wm0010_spi_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/wm0010.c", i32 995, i32 1}
!2 = !{ptr @__exitcall_wm0010_spi_driver_exit, !1, !"__exitcall_wm0010_spi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description313, !4, !"__UNIQUE_ID_description313", i1 false, i1 false}
!4 = !{!"../sound/soc/codecs/wm0010.c", i32 997, i32 1}
!5 = !{ptr @__UNIQUE_ID_author314, !6, !"__UNIQUE_ID_author314", i1 false, i1 false}
!6 = !{!"../sound/soc/codecs/wm0010.c", i32 998, i32 1}
!7 = !{ptr @__UNIQUE_ID_file315, !8, !"__UNIQUE_ID_file315", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/wm0010.c", i32 999, i32 1}
!9 = !{ptr @__UNIQUE_ID_license316, !8, !"__UNIQUE_ID_license316", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/wm0010.c", i32 989, i32 11}
!12 = !{ptr @wm0010_spi_driver, !13, !"wm0010_spi_driver", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/wm0010.c", i32 987, i32 26}
!14 = !{ptr @wm0010_spi_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../sound/soc/codecs/wm0010.c", i32 878, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @wm0010_spi_probe.__key.2, !18, !"__key", i1 false, i1 false}
!18 = !{!"../sound/soc/codecs/wm0010.c", i32 879, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/wm0010.c", i32 890, i32 36}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/wm0010.c", i32 891, i32 36}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/wm0010.c", i32 895, i32 3}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @wm0010_spi_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @wm0010_spi_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/codecs/wm0010.c", i32 900, i32 50}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/codecs/wm0010.c", i32 903, i32 3}
!36 = !{ptr @wm0010_spi_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @wm0010_spi_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/codecs/wm0010.c", i32 921, i32 22}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/codecs/wm0010.c", i32 923, i32 4}
!42 = !{ptr @wm0010_spi_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @wm0010_spi_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/wm0010.c", i32 929, i32 3}
!46 = !{ptr @wm0010_spi_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @wm0010_spi_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/codecs/wm0010.c", i32 945, i32 3}
!50 = !{ptr @wm0010_spi_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @wm0010_spi_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/codecs/wm0010.c", i32 953, i32 3}
!54 = !{ptr @wm0010_spi_probe._entry.25, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @wm0010_spi_probe._entry_ptr.27, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @init_completion.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/linux/completion.h", i32 87, i32 2}
!58 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @soc_component_dev_wm0010, !60, !"soc_component_dev_wm0010", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/wm0010.c", i32 782, i32 46}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/wm0010.c", i32 128, i32 1}
!63 = !{ptr @wm0010_dapm_widgets, !64, !"wm0010_dapm_widgets", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/wm0010.c", i32 127, i32 41}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/wm0010.c", i32 132, i32 4}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/wm0010.c", i32 132, i32 26}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/wm0010.c", i32 133, i32 4}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/wm0010.c", i32 133, i32 26}
!73 = !{ptr @wm0010_dapm_routes, !74, !"wm0010_dapm_routes", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/wm0010.c", i32 131, i32 40}
!75 = !{ptr @pll_clock_map, !76, !"pll_clock_map", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/wm0010.c", i32 72, i32 3}
!77 = !{ptr @.str.35, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/wm0010.c", i32 583, i32 3}
!79 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @wm0010_boot._entry, !78, !"_entry", i1 false, i1 false}
!82 = !{ptr @wm0010_boot._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/soc/codecs/wm0010.c", i32 587, i32 3}
!85 = !{ptr @wm0010_boot._entry.38, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @wm0010_boot._entry_ptr.40, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/wm0010.c", i32 595, i32 2}
!89 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @wm0010_boot.__UNIQUE_ID_ddebug309, !88, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/soc/codecs/wm0010.c", i32 600, i32 3}
!93 = !{ptr @wm0010_boot._entry.43, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @wm0010_boot._entry_ptr.45, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../sound/soc/codecs/wm0010.c", i32 608, i32 3}
!97 = !{ptr @wm0010_boot._entry.46, !96, !"_entry", i1 false, i1 false}
!98 = !{ptr @wm0010_boot._entry_ptr.48, !96, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.50, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/wm0010.c", i32 620, i32 3}
!101 = !{ptr @wm0010_boot._entry.49, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @wm0010_boot._entry_ptr.51, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/wm0010.c", i32 632, i32 3}
!105 = !{ptr @wm0010_boot._entry.52, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @wm0010_boot._entry_ptr.54, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.56, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../sound/soc/codecs/wm0010.c", i32 673, i32 4}
!109 = !{ptr @wm0010_boot._entry.55, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @wm0010_boot._entry_ptr.57, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.59, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../sound/soc/codecs/wm0010.c", i32 680, i32 4}
!113 = !{ptr @wm0010_boot._entry.58, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @wm0010_boot._entry_ptr.60, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.61, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/wm0010.c", i32 689, i32 5}
!117 = !{ptr @wm0010_boot.__UNIQUE_ID_ddebug310, !116, !"__UNIQUE_ID_ddebug310", i1 false, i1 false}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/soc/codecs/wm0010.c", i32 699, i32 3}
!120 = !{ptr @wm0010_boot.__UNIQUE_ID_ddebug311, !119, !"__UNIQUE_ID_ddebug311", i1 false, i1 false}
!121 = !{ptr @.str.63, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../sound/soc/codecs/wm0010.c", i32 701, i32 29}
!123 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../sound/soc/codecs/wm0010.c", i32 507, i32 30}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../sound/soc/codecs/wm0010.c", i32 509, i32 3}
!127 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @wm0010_stage2_load._entry, !126, !"_entry", i1 false, i1 false}
!129 = !{ptr @wm0010_stage2_load._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.67, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/soc/codecs/wm0010.c", i32 514, i32 2}
!132 = !{ptr @wm0010_stage2_load.__UNIQUE_ID_ddebug307, !131, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!133 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../sound/soc/codecs/wm0010.c", i32 538, i32 2}
!135 = !{ptr @wm0010_stage2_load.__UNIQUE_ID_ddebug308, !134, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!136 = !{ptr @.str.70, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/soc/codecs/wm0010.c", i32 543, i32 3}
!138 = !{ptr @wm0010_stage2_load._entry.69, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @wm0010_stage2_load._entry_ptr.71, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.73, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/soc/codecs/wm0010.c", i32 550, i32 4}
!142 = !{ptr @wm0010_stage2_load._entry.72, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @wm0010_stage2_load._entry_ptr.74, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.75, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/soc/codecs/wm0010.c", i32 209, i32 2}
!146 = !{ptr @.str.76, !145, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @wm0010_mark_boot_failure._entry, !145, !"_entry", i1 false, i1 false}
!148 = !{ptr @wm0010_mark_boot_failure._entry_ptr, !145, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.77, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../sound/soc/codecs/wm0010.c", i32 144, i32 3}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../sound/soc/codecs/wm0010.c", i32 145, i32 3}
!153 = !{ptr @.str.79, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../sound/soc/codecs/wm0010.c", i32 146, i32 3}
!155 = !{ptr @.str.80, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../sound/soc/codecs/wm0010.c", i32 147, i32 3}
!157 = !{ptr @.str.81, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../sound/soc/codecs/wm0010.c", i32 148, i32 3}
!159 = !{ptr @wm0010_state_to_str.state_to_str, !160, !"state_to_str", i1 false, i1 false}
!160 = !{!"../sound/soc/codecs/wm0010.c", i32 143, i32 28}
!161 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../sound/soc/codecs/wm0010.c", i32 152, i32 10}
!163 = !{ptr @.str.83, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../sound/soc/codecs/wm0010.c", i32 361, i32 3}
!165 = !{ptr @.str.84, !164, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @wm0010_firmware_load._entry, !164, !"_entry", i1 false, i1 false}
!167 = !{ptr @wm0010_firmware_load._entry_ptr, !164, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/soc/codecs/wm0010.c", i32 376, i32 3}
!170 = !{ptr @wm0010_firmware_load._entry.85, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @wm0010_firmware_load._entry_ptr.87, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.89, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/soc/codecs/wm0010.c", i32 382, i32 3}
!174 = !{ptr @wm0010_firmware_load._entry.88, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @wm0010_firmware_load._entry_ptr.90, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.91, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/soc/codecs/wm0010.c", i32 389, i32 2}
!178 = !{ptr @wm0010_firmware_load.__UNIQUE_ID_ddebug303, !177, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!179 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../sound/soc/codecs/wm0010.c", i32 394, i32 3}
!181 = !{ptr @wm0010_firmware_load._entry.92, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @wm0010_firmware_load._entry_ptr.94, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.95, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../sound/soc/codecs/wm0010.c", i32 404, i32 3}
!185 = !{ptr @wm0010_firmware_load.__UNIQUE_ID_ddebug304, !184, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!186 = !{ptr @.str.96, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../sound/soc/codecs/wm0010.c", i32 459, i32 4}
!188 = !{ptr @wm0010_firmware_load.__UNIQUE_ID_ddebug305, !187, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!189 = !{ptr @.str.98, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../sound/soc/codecs/wm0010.c", i32 465, i32 4}
!191 = !{ptr @wm0010_firmware_load._entry.97, !190, !"_entry", i1 false, i1 false}
!192 = !{ptr @wm0010_firmware_load._entry_ptr.99, !190, !"_entry_ptr", i1 false, i1 false}
!193 = !{ptr @.str.100, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../sound/soc/codecs/wm0010.c", i32 470, i32 4}
!195 = !{ptr @wm0010_firmware_load.__UNIQUE_ID_ddebug306, !194, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!196 = !{ptr @.str.101, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../sound/soc/codecs/wm0010.c", i32 224, i32 3}
!198 = !{ptr @.str.102, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @wm0010_boot_xfer_complete._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @wm0010_boot_xfer_complete._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.103, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../sound/soc/codecs/wm0010.c", i32 233, i32 3}
!203 = !{ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug296, !202, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!204 = !{ptr @.str.105, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../sound/soc/codecs/wm0010.c", i32 237, i32 4}
!206 = !{ptr @wm0010_boot_xfer_complete._entry.104, !205, !"_entry", i1 false, i1 false}
!207 = !{ptr @wm0010_boot_xfer_complete._entry_ptr.106, !205, !"_entry_ptr", i1 false, i1 false}
!208 = !{ptr @.str.108, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../sound/soc/codecs/wm0010.c", i32 245, i32 4}
!210 = !{ptr @wm0010_boot_xfer_complete._entry.107, !209, !"_entry", i1 false, i1 false}
!211 = !{ptr @wm0010_boot_xfer_complete._entry_ptr.109, !209, !"_entry_ptr", i1 false, i1 false}
!212 = !{ptr @.str.110, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../sound/soc/codecs/wm0010.c", i32 251, i32 4}
!214 = !{ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug297, !213, !"__UNIQUE_ID_ddebug297", i1 false, i1 false}
!215 = !{ptr @.str.111, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../sound/soc/codecs/wm0010.c", i32 255, i32 4}
!217 = !{ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug298, !216, !"__UNIQUE_ID_ddebug298", i1 false, i1 false}
!218 = !{ptr @.str.112, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../sound/soc/codecs/wm0010.c", i32 259, i32 4}
!220 = !{ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug299, !219, !"__UNIQUE_ID_ddebug299", i1 false, i1 false}
!221 = !{ptr @.str.113, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../sound/soc/codecs/wm0010.c", i32 263, i32 4}
!223 = !{ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug300, !222, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!224 = !{ptr @.str.114, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../sound/soc/codecs/wm0010.c", i32 267, i32 4}
!226 = !{ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug301, !225, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!227 = !{ptr @wm0010_boot_xfer_complete.__UNIQUE_ID_ddebug302, !228, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!228 = !{!"../sound/soc/codecs/wm0010.c", i32 271, i32 4}
!229 = !{ptr @.str.116, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../sound/soc/codecs/wm0010.c", i32 276, i32 4}
!231 = !{ptr @wm0010_boot_xfer_complete._entry.115, !230, !"_entry", i1 false, i1 false}
!232 = !{ptr @wm0010_boot_xfer_complete._entry_ptr.117, !230, !"_entry_ptr", i1 false, i1 false}
!233 = !{ptr @.str.119, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../sound/soc/codecs/wm0010.c", i32 281, i32 4}
!235 = !{ptr @wm0010_boot_xfer_complete._entry.118, !234, !"_entry", i1 false, i1 false}
!236 = !{ptr @wm0010_boot_xfer_complete._entry_ptr.120, !234, !"_entry_ptr", i1 false, i1 false}
!237 = !{ptr @.str.122, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../sound/soc/codecs/wm0010.c", i32 286, i32 4}
!239 = !{ptr @wm0010_boot_xfer_complete._entry.121, !238, !"_entry", i1 false, i1 false}
!240 = !{ptr @wm0010_boot_xfer_complete._entry_ptr.123, !238, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.125, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../sound/soc/codecs/wm0010.c", i32 291, i32 4}
!243 = !{ptr @wm0010_boot_xfer_complete._entry.124, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @wm0010_boot_xfer_complete._entry_ptr.126, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @.str.128, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../sound/soc/codecs/wm0010.c", i32 296, i32 4}
!247 = !{ptr @wm0010_boot_xfer_complete._entry.127, !246, !"_entry", i1 false, i1 false}
!248 = !{ptr @wm0010_boot_xfer_complete._entry_ptr.129, !246, !"_entry_ptr", i1 false, i1 false}
!249 = !{ptr @.str.131, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../sound/soc/codecs/wm0010.c", i32 301, i32 4}
!251 = !{ptr @wm0010_boot_xfer_complete._entry.130, !250, !"_entry", i1 false, i1 false}
!252 = !{ptr @wm0010_boot_xfer_complete._entry_ptr.132, !250, !"_entry_ptr", i1 false, i1 false}
!253 = !{ptr @.str.134, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../sound/soc/codecs/wm0010.c", i32 306, i32 4}
!255 = !{ptr @wm0010_boot_xfer_complete._entry.133, !254, !"_entry", i1 false, i1 false}
!256 = !{ptr @wm0010_boot_xfer_complete._entry_ptr.135, !254, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.137, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../sound/soc/codecs/wm0010.c", i32 311, i32 4}
!259 = !{ptr @wm0010_boot_xfer_complete._entry.136, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @wm0010_boot_xfer_complete._entry_ptr.138, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.140, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../sound/soc/codecs/wm0010.c", i32 315, i32 4}
!263 = !{ptr @wm0010_boot_xfer_complete._entry.139, !262, !"_entry", i1 false, i1 false}
!264 = !{ptr @wm0010_boot_xfer_complete._entry_ptr.141, !262, !"_entry_ptr", i1 false, i1 false}
!265 = !{ptr @.str.143, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../sound/soc/codecs/wm0010.c", i32 320, i32 4}
!267 = !{ptr @wm0010_boot_xfer_complete._entry.142, !266, !"_entry", i1 false, i1 false}
!268 = !{ptr @wm0010_boot_xfer_complete._entry_ptr.144, !266, !"_entry_ptr", i1 false, i1 false}
!269 = !{ptr @.str.145, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../sound/soc/codecs/wm0010.c", i32 802, i32 11}
!271 = !{ptr @.str.146, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../sound/soc/codecs/wm0010.c", i32 819, i32 11}
!273 = !{ptr @wm0010_dai, !274, !"wm0010_dai", i1 false, i1 false}
!274 = !{!"../sound/soc/codecs/wm0010.c", i32 800, i32 34}
!275 = !{i32 1, !"wchar_size", i32 2}
!276 = !{i32 1, !"min_enum_size", i32 4}
!277 = !{i32 8, !"branch-target-enforcement", i32 0}
!278 = !{i32 8, !"sign-return-address", i32 0}
!279 = !{i32 8, !"sign-return-address-all", i32 0}
!280 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!281 = !{i32 7, !"uwtable", i32 1}
!282 = !{i32 7, !"frame-pointer", i32 2}
!283 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!284 = !{i64 2148974878, i64 2148974883, i64 2148974896, i64 2148974940, i64 2148974974, i64 2148974995}
!285 = !{!"auto-init"}
!286 = !{!"branch_weights", i32 2000, i32 1}
!287 = !{i8 0, i8 2}
