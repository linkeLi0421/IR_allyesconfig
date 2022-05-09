; ModuleID = '/llk/IR_all_yes/sound/soc/atmel/sam9x5_wm8731.c_pt.bc'
source_filename = "../sound/soc/atmel/sam9x5_wm8731.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_soc_dobj = type { i32, i32, %struct.list_head, ptr, %union.anon.91, ptr }
%union.anon.91 = type { %struct.snd_soc_dobj_control }
%struct.snd_soc_dobj_control = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
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
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.snd_soc_dai_link = type { ptr, ptr, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, i32, [2 x i32], ptr, ptr, ptr, ptr, ptr, i24, %struct.snd_soc_dobj }
%struct.snd_soc_dai_link_component = type { ptr, ptr, ptr }
%struct.snd_soc_pcm_runtime = type { ptr, ptr, ptr, %struct.snd_pcm_ops, i32, [2 x %struct.snd_soc_dpcm_runtime], i32, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.delayed_work, ptr, ptr, i32, %struct.list_head, ptr, ptr, ptr, ptr, i8, i32, [0 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_soc_dpcm_runtime = type { %struct.list_head, %struct.list_head, i32, ptr, %struct.snd_pcm_hw_params, i32, i32, i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }

@__initcall__kmod_snd_soc_sam9x5_wm8731__240_202_sam9x5_wm8731_driver_init6 = internal global ptr @sam9x5_wm8731_driver_init, section ".initcall6.init", align 4
@sam9x5_wm8731_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sam9x5_wm8731_driver_probe, ptr @sam9x5_wm8731_driver_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sam9x5_wm8731_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sam9x5_wm8731_driver_exit = internal global ptr @sam9x5_wm8731_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [69 x i8] c"snd_soc_sam9x5_wm8731.author=Nicolas Ferre <nicolas.ferre@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author242 = internal constant [71 x i8] c"snd_soc_sam9x5_wm8731.author=Richard Genoud <richard.genoud@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description243 = internal constant [82 x i8] c"snd_soc_sam9x5_wm8731.description=ALSA SoC machine driver for AT91SAM9x5 - WM8731\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [65 x i8] c"snd_soc_sam9x5_wm8731.file=sound/soc/atmel/snd-soc-sam9x5-wm8731\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [34 x i8] c"snd_soc_sam9x5_wm8731.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias246 = internal constant [55 x i8] c"snd_soc_sam9x5_wm8731.alias=platform:sam9x5-snd-wm8731\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sam9x5-snd-wm8731\00", [46 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sam9x5-wm8731-audio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_driver_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 84, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No device node supplied\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sam9x5_wm8731_driver_probe\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sound/soc/atmel/sam9x5_wm8731.c\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_driver_probe._entry_ptr = internal global ptr @sam9x5_wm8731_driver_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WM8731\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WM8731 PCM\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8731-hifi\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atmel,model\00", [20 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_driver_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 122, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"atmel,model node missing\0A\00", [38 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_driver_probe._entry_ptr.12 = internal global ptr @sam9x5_wm8731_driver_probe._entry.10, section ".printk_index", align 4
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"atmel,audio-routing\00", [44 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_driver_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 128, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"atmel,audio-routing node missing\0A\00", [62 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_driver_probe._entry_ptr.16 = internal global ptr @sam9x5_wm8731_driver_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel,audio-codec\00", [46 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_driver_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 134, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"atmel,audio-codec node missing\0A\00", [32 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_driver_probe._entry_ptr.20 = internal global ptr @sam9x5_wm8731_driver_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"atmel,ssc-controller\00", [43 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_driver_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 143, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"atmel,ssc-controller node missing\0A\00", [61 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_driver_probe._entry_ptr.24 = internal global ptr @sam9x5_wm8731_driver_probe._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ssc\00", [28 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_driver_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set SSC %d for audio: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_driver_probe._entry_ptr.28 = internal global ptr @sam9x5_wm8731_driver_probe._entry.26, section ".printk_index", align 4
@sam9x5_wm8731_driver_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 164, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Platform device allocation failed\0A\00", [61 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_driver_probe._entry_ptr.31 = internal global ptr @sam9x5_wm8731_driver_probe._entry.29, section ".printk_index", align 4
@sam9x5_wm8731_driver_probe.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.2, ptr @.str.3, ptr @.str.33, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_soc_sam9x5_wm8731\00", [42 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"%s ok\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Headphone Jack\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Line In Jack\00", [19 x i8] zeroinitializer }, align 32
@sam9x5_dapm_widgets = internal constant { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }], [88 x i8] } { [2 x { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 }] [{ i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 12, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }, { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, i8, i32, i32, i32, i8, i8, i32, ptr, i16, ptr, i32, ptr, ptr, %struct.snd_soc_dobj, [2 x %struct.list_head], %struct.list_head, %struct.list_head, %struct.list_head, [2 x i32], ptr, i32 } { i32 14, ptr @.str.35, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i32 -1, i8 0, i32 0, i32 0, i32 0, i8 0, i8 0, i32 0, ptr null, i16 6, ptr null, i32 0, ptr null, ptr null, %struct.snd_soc_dobj zeroinitializer, [2 x %struct.list_head] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, [2 x i32] zeroinitializer, ptr null, i32 0 }], [88 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_init.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.32, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 11, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sam9x5_wm8731_init\00", [45 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s called\0A\00", [21 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 53, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to set WM8731 SYSCLK: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@sam9x5_wm8731_init._entry_ptr = internal global ptr @sam9x5_wm8731_init._entry, section ".printk_index", align 4
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"sam9x5_wm8731_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 194, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 196, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [23 x i8] c"sam9x5_wm8731_of_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 188, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 84, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 113, i32 14 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 114, i32 21 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 115, i32 26 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 120, i32 41 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 122, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 126, i32 45 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 128, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 132, i32 34 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 134, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 141, i32 32 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 143, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 150, i32 41 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 154, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 164, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 168, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 69, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 70, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"sam9x5_dapm_widgets\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 68, i32 41 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 47, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [35 x i8] c"../sound/soc/atmel/sam9x5_wm8731.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 53, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_alias246, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_author242, ptr @__UNIQUE_ID_description243, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_sam9x5_wm8731_driver_exit, ptr @__initcall__kmod_snd_soc_sam9x5_wm8731__240_202_sam9x5_wm8731_driver_init6, ptr @sam9x5_wm8731_driver_exit, ptr @sam9x5_wm8731_driver_probe._entry, ptr @sam9x5_wm8731_driver_probe._entry.10, ptr @sam9x5_wm8731_driver_probe._entry.14, ptr @sam9x5_wm8731_driver_probe._entry.18, ptr @sam9x5_wm8731_driver_probe._entry.22, ptr @sam9x5_wm8731_driver_probe._entry.26, ptr @sam9x5_wm8731_driver_probe._entry.29, ptr @sam9x5_wm8731_driver_probe._entry_ptr, ptr @sam9x5_wm8731_driver_probe._entry_ptr.12, ptr @sam9x5_wm8731_driver_probe._entry_ptr.16, ptr @sam9x5_wm8731_driver_probe._entry_ptr.20, ptr @sam9x5_wm8731_driver_probe._entry_ptr.24, ptr @sam9x5_wm8731_driver_probe._entry_ptr.28, ptr @sam9x5_wm8731_driver_probe._entry_ptr.31, ptr @sam9x5_wm8731_init._entry, ptr @sam9x5_wm8731_init._entry_ptr, ptr @sam9x5_wm8731_driver, ptr @.str, ptr @sam9x5_wm8731_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @sam9x5_dapm_widgets, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_wm8731_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_wm8731_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_wm8731_driver_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_wm8731_driver_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_wm8731_driver_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_wm8731_driver_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_wm8731_driver_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_wm8731_driver_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_wm8731_driver_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_dapm_widgets to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sam9x5_wm8731_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x5_wm8731_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sam9x5_wm8731_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sam9x5_wm8731_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @sam9x5_wm8731_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x5_wm8731_driver_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i165 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 648, i32 noundef 3520) #5
  %call.i160 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #5
  %call.i161 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 116, i32 noundef 3520) #5
  %call.i162 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 36, i32 noundef 3520) #5
  %tobool9.not = icmp eq ptr %call.i161, null
  %tobool10.not = icmp eq ptr %call.i, null
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool10.not
  %tobool12.not = icmp eq ptr %call.i160, null
  %or.cond158 = select i1 %or.cond, i1 true, i1 %tobool12.not
  %tobool14.not = icmp eq ptr %call.i162, null
  %or.cond159 = select i1 %or.cond158, i1 true, i1 %tobool14.not
  br i1 %or.cond159, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %drvdata.i = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i160, ptr %drvdata.i, align 4
  %dev18 = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 5
  %3 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev18, align 4
  %owner = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %owner, align 4
  %dai_link = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 24
  %5 = ptrtoint ptr %dai_link to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i161, ptr %dai_link, align 4
  %num_links = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 25
  %6 = ptrtoint ptr %num_links to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %num_links, align 4
  %dapm_widgets = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 35
  %7 = ptrtoint ptr %dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @sam9x5_dapm_widgets, ptr %dapm_widgets, align 4
  %num_dapm_widgets = getelementptr inbounds %struct.snd_soc_card, ptr %call.i, i32 0, i32 36
  %8 = ptrtoint ptr %num_dapm_widgets to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %num_dapm_widgets, align 4
  %cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i161, i32 0, i32 2
  %9 = ptrtoint ptr %cpus to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i162, ptr %cpus, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i161, i32 0, i32 3
  %10 = ptrtoint ptr %num_cpus to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %num_cpus, align 4
  %arrayidx19 = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i162, i32 1
  %codecs = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i161, i32 0, i32 4
  %11 = ptrtoint ptr %codecs to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx19, ptr %codecs, align 4
  %num_codecs = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i161, i32 0, i32 5
  %12 = ptrtoint ptr %num_codecs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %num_codecs, align 4
  %arrayidx20 = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i162, i32 2
  %platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i161, i32 0, i32 6
  %13 = ptrtoint ptr %platforms to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx20, ptr %platforms, align 4
  %num_platforms = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i161, i32 0, i32 7
  %14 = ptrtoint ptr %num_platforms to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %num_platforms, align 4
  %15 = ptrtoint ptr %call.i161 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @.str.6, ptr %call.i161, align 4
  %stream_name = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i161, i32 0, i32 1
  %16 = ptrtoint ptr %stream_name to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str.7, ptr %stream_name, align 4
  %dai_name = getelementptr %struct.snd_soc_dai_link_component, ptr %call.i162, i32 1, i32 2
  %17 = ptrtoint ptr %dai_name to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.8, ptr %dai_name, align 4
  %init = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i161, i32 0, i32 13
  %18 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @sam9x5_wm8731_init, ptr %init, align 4
  %dai_fmt = getelementptr inbounds %struct.snd_soc_dai_link, ptr %call.i161, i32 0, i32 11
  %19 = ptrtoint ptr %dai_fmt to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4100, ptr %dai_fmt, align 4
  %call22 = tail call i32 @snd_soc_of_parse_card_name(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end29:                                         ; preds = %if.end16
  %call30 = tail call i32 @snd_soc_of_parse_audio_routing(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.13) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end37, label %do.end35

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #5
  %20 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i163 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.17, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i163)
  %tobool.not.i = icmp eq i32 %call.i163, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  br label %do.end43

of_parse_phandle.exit:                            ; preds = %if.end37
  %21 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #5
  %tobool39.not = icmp eq ptr %22, null
  br i1 %tobool39.not, label %of_parse_phandle.exit.do.end43_crit_edge, label %if.end45

of_parse_phandle.exit.do.end43_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end43

do.end43:                                         ; preds = %of_parse_phandle.exit.do.end43_crit_edge, %of_parse_phandle.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #8
  br label %cleanup

if.end45:                                         ; preds = %of_parse_phandle.exit
  %23 = ptrtoint ptr %codecs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %codecs, align 4
  %of_node47 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %of_node47 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %of_node47, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i165) #5
  %26 = call ptr @memset(ptr %args.i165, i32 255, i32 72)
  %call.i166 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %1, ptr noundef nonnull @.str.21, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i165) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool.not.i167 = icmp eq i32 %call.i166, 0
  br i1 %tobool.not.i167, label %of_parse_phandle.exit170, label %of_parse_phandle.exit170.thread

of_parse_phandle.exit170.thread:                  ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i165) #5
  br label %do.end53

of_parse_phandle.exit170:                         ; preds = %if.end45
  %27 = ptrtoint ptr %args.i165 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %args.i165, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i165) #5
  %tobool49.not = icmp eq ptr %28, null
  br i1 %tobool49.not, label %of_parse_phandle.exit170.do.end53_crit_edge, label %if.end55

of_parse_phandle.exit170.do.end53_crit_edge:      ; preds = %of_parse_phandle.exit170
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end53

do.end53:                                         ; preds = %of_parse_phandle.exit170.do.end53_crit_edge, %of_parse_phandle.exit170.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #8
  br label %cleanup

if.end55:                                         ; preds = %of_parse_phandle.exit170
  %29 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cpus, align 4
  %of_node57 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %of_node57 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %of_node57, align 4
  %32 = ptrtoint ptr %platforms to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %platforms, align 4
  %of_node59 = getelementptr inbounds %struct.snd_soc_dai_link_component, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %of_node59 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %28, ptr %of_node59, align 4
  %call60 = call i32 @of_alias_get_id(ptr noundef nonnull %28, ptr noundef nonnull @.str.25) #5
  %35 = ptrtoint ptr %call.i160 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %call60, ptr %call.i160, align 4
  %call62 = call i32 @atmel_ssc_set_audio(i32 noundef %call60) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp.not = icmp eq i32 %call62, 0
  br i1 %cmp.not, label %if.end69, label %do.end66

do.end66:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %call.i160 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call.i160, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call62, i32 noundef %37) #8
  br label %cleanup

if.end69:                                         ; preds = %if.end55
  call void @of_node_put(ptr noundef nonnull %22) #5
  call void @of_node_put(ptr noundef nonnull %28) #5
  %call71 = call i32 @devm_snd_soc_register_card(ptr noundef %dev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %do.body79, label %do.end76

do.end76:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #8
  %38 = ptrtoint ptr %call.i160 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call.i160, align 4
  call void @atmel_ssc_put_audio(i32 noundef %39) #5
  br label %cleanup

do.body79:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sam9x5_wm8731_driver_probe.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sam9x5_wm8731_driver_probe, %if.then84)) #5
          to label %cleanup [label %if.then84], !srcloc !95

if.then84:                                        ; preds = %do.body79
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sam9x5_wm8731_driver_probe.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %do.body79, %do.end76, %do.end66, %do.end53, %do.end43, %do.end35, %do.end27, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.then84 ], [ %call22, %do.end27 ], [ %call30, %do.end35 ], [ %call62, %do.end66 ], [ %call71, %do.end76 ], [ -22, %do.end53 ], [ -22, %do.end43 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %do.body79 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x5_wm8731_driver_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %drvdata = getelementptr inbounds %struct.snd_soc_card, ptr %1, i32 0, i32 57
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  tail call void @atmel_ssc_put_audio(i32 noundef %5) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sam9x5_wm8731_init(ptr nocapture noundef readonly %rtd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dais = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 9
  %0 = ptrtoint ptr %dais to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dais, align 4
  %num_cpus = getelementptr inbounds %struct.snd_soc_pcm_runtime, ptr %rtd, i32 0, i32 11
  %2 = ptrtoint ptr %num_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_cpus, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %6 = ptrtoint ptr %rtd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rtd, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sam9x5_wm8731_init.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sam9x5_wm8731_init, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !95

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sam9x5_wm8731_init.__UNIQUE_ID_ddebug238, ptr noundef %7, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %call4 = tail call i32 @snd_soc_dai_set_sysclk(ptr noundef %5, i32 noundef 1, i32 noundef 12288000, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.39, i32 noundef %call4) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end8, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %do.end8 ], [ 0, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_card_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_of_parse_audio_routing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atmel_ssc_set_audio(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_snd_soc_register_card(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @atmel_ssc_put_audio(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dai_set_sysclk(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !32, !34, !36, !37, !38, !40, !42, !43, !44, !46, !48, !49, !50, !52, !54, !55, !56, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !74, !76, !78, !79, !80, !82, !83, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @__initcall__kmod_snd_soc_sam9x5_wm8731__240_202_sam9x5_wm8731_driver_init6, !1, !"__initcall__kmod_snd_soc_sam9x5_wm8731__240_202_sam9x5_wm8731_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 202, i32 1}
!2 = !{ptr @__exitcall_sam9x5_wm8731_driver_exit, !1, !"__exitcall_sam9x5_wm8731_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author241, !4, !"__UNIQUE_ID_author241", i1 false, i1 false}
!4 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 205, i32 1}
!5 = !{ptr @__UNIQUE_ID_author242, !6, !"__UNIQUE_ID_author242", i1 false, i1 false}
!6 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 206, i32 1}
!7 = !{ptr @__UNIQUE_ID_description243, !8, !"__UNIQUE_ID_description243", i1 false, i1 false}
!8 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 207, i32 1}
!9 = !{ptr @__UNIQUE_ID_file244, !10, !"__UNIQUE_ID_file244", i1 false, i1 false}
!10 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 208, i32 1}
!11 = !{ptr @__UNIQUE_ID_license245, !10, !"__UNIQUE_ID_license245", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias246, !13, !"__UNIQUE_ID_alias246", i1 false, i1 false}
!13 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 209, i32 1}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 196, i32 11}
!16 = !{ptr @sam9x5_wm8731_driver, !17, !"sam9x5_wm8731_driver", i1 false, i1 false}
!17 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 194, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 84, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @sam9x5_wm8731_driver_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @sam9x5_wm8731_driver_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 113, i32 14}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 114, i32 21}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 115, i32 26}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 120, i32 41}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 122, i32 3}
!36 = !{ptr @sam9x5_wm8731_driver_probe._entry.10, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sam9x5_wm8731_driver_probe._entry_ptr.12, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 126, i32 45}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 128, i32 3}
!42 = !{ptr @sam9x5_wm8731_driver_probe._entry.14, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @sam9x5_wm8731_driver_probe._entry_ptr.16, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 132, i32 34}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 134, i32 3}
!48 = !{ptr @sam9x5_wm8731_driver_probe._entry.18, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @sam9x5_wm8731_driver_probe._entry_ptr.20, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 141, i32 32}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 143, i32 3}
!54 = !{ptr @sam9x5_wm8731_driver_probe._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @sam9x5_wm8731_driver_probe._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 150, i32 41}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 154, i32 3}
!60 = !{ptr @sam9x5_wm8731_driver_probe._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @sam9x5_wm8731_driver_probe._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 164, i32 3}
!64 = !{ptr @sam9x5_wm8731_driver_probe._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @sam9x5_wm8731_driver_probe._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 168, i32 2}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @sam9x5_wm8731_driver_probe.__UNIQUE_ID_ddebug239, !67, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 69, i32 2}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 70, i32 2}
!74 = !{ptr @sam9x5_dapm_widgets, !75, !"sam9x5_dapm_widgets", i1 false, i1 false}
!75 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 68, i32 41}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 47, i32 2}
!78 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @sam9x5_wm8731_init.__UNIQUE_ID_ddebug238, !77, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!80 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 53, i32 3}
!82 = !{ptr @sam9x5_wm8731_init._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @sam9x5_wm8731_init._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @sam9x5_wm8731_of_match, !85, !"sam9x5_wm8731_of_match", i1 false, i1 false}
!85 = !{!"../sound/soc/atmel/sam9x5_wm8731.c", i32 188, i32 34}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!95 = !{i64 2148861348, i64 2148861353, i64 2148861366, i64 2148861410, i64 2148861444, i64 2148861465}
