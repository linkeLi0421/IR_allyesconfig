; ModuleID = '/llk/IR_all_yes/sound/atmel/ac97c.c_pt.bc'
source_filename = "../sound/atmel/ac97c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_ac97_bus_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ac97_pcm = type { ptr, i8, i16, i16, i32, [2 x %struct.anon.83], i32 }
%struct.anon.83 = type { i16, [4 x i16], [4 x i8], [4 x ptr] }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_ac97_template = type { ptr, ptr, ptr, i16, i16, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.atmel_ac97c = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i32, i32, i32, %struct.spinlock, ptr, i32, i32, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.snd_ac97 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i16, i16, %struct.mutex, %struct.mutex, i16, i16, i32, i16, i16, i16, ptr, i32, i32, [6 x i32], i32, [128 x i16], [4 x i32], %union.anon.84, i8, i8, i32, %struct.delayed_work, %struct.device, ptr, [2 x ptr] }
%union.anon.84 = type { i32, [28 x i8] }
%struct.snd_pcm_substream = type { ptr, ptr, ptr, i32, [32 x i8], i32, %struct.pm_qos_request, i32, %struct.snd_dma_buffer, i32, ptr, ptr, ptr, i8, i32, ptr, %struct.list_head, %struct.snd_pcm_group, ptr, i32, %struct.atomic_t, i32, ptr, ptr, %struct.snd_pcm_oss_substream, ptr, i8 }
%struct.pm_qos_request = type { %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.snd_dma_buffer = type { %struct.snd_dma_device, ptr, i32, i32, ptr }
%struct.snd_dma_device = type { i32, i32, i8, ptr }
%struct.snd_pcm_group = type { %struct.spinlock, %struct.mutex, %struct.list_head, %struct.refcount_struct }
%struct.snd_pcm_oss_substream = type { i8, %struct.snd_pcm_oss_setup }
%struct.snd_pcm_oss_setup = type { ptr, i8, i32, i32, ptr }
%struct.snd_pcm_runtime = type { ptr, %struct.timespec64, i8, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, %union.snd_pcm_sync_id, ptr, ptr, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i8, ptr, ptr, %struct.snd_pcm_hardware, %struct.snd_pcm_hw_constraints, i32, i32, ptr, i32, i32, ptr, i8, [3 x i8], %struct.snd_pcm_audio_tstamp_config, %struct.snd_pcm_audio_tstamp_report, %struct.timespec64, %struct.snd_pcm_oss_runtime }
%union.snd_pcm_sync_id = type { [4 x i32] }
%struct.snd_pcm_hw_constraints = type { [3 x %struct.snd_mask], [12 x %struct.snd_interval], i32, i32, ptr }
%struct.snd_mask = type { [8 x i32] }
%struct.snd_interval = type { i32, i32, i8 }
%struct.snd_pcm_audio_tstamp_config = type { i8, [3 x i8] }
%struct.snd_pcm_audio_tstamp_report = type { i8, i32 }
%struct.timespec64 = type { i64, i32 }
%struct.snd_pcm_oss_runtime = type { i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.atomic_t, ptr, ptr, i32 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }

@__initcall__kmod_snd_atmel_ac97c__254_874_atmel_ac97c_driver_init6 = internal global ptr @atmel_ac97c_driver_init, section ".initcall6.init", align 4
@atmel_ac97c_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @atmel_ac97c_probe, ptr @atmel_ac97c_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_ac97c_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_ac97c_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_atmel_ac97c_driver_exit = internal global ptr @atmel_ac97c_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file255 = internal constant [49 x i8] c"snd_atmel_ac97c.file=sound/atmel/snd-atmel-ac97c\00", section ".modinfo", align 1
@__UNIQUE_ID_license256 = internal constant [28 x i8] c"snd_atmel_ac97c.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [61 x i8] c"snd_atmel_ac97c.description=Driver for Atmel AC97 controller\00", section ".modinfo", align 1
@__UNIQUE_ID_author258 = internal constant [69 x i8] c"snd_atmel_ac97c.author=Hans-Christian Egtvedt <egtvedt@samfundet.no>\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"atmel_ac97c\00", [20 x i8] zeroinitializer }, align 32
@atmel_ac97c_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9263-ac97c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@atmel_ac97c_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @atmel_ac97c_suspend, ptr @atmel_ac97c_resume, ptr @atmel_ac97c_suspend, ptr @atmel_ac97c_resume, ptr @atmel_ac97c_suspend, ptr @atmel_ac97c_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe.ops = internal constant { %struct.snd_ac97_bus_ops, [40 x i8] } { %struct.snd_ac97_bus_ops { ptr null, ptr null, ptr @atmel_ac97c_write, ptr @atmel_ac97c_read, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -78, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"snd_atmel_ac97c\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_ac97c_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sound/atmel/ac97c.c\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no memory resource\0A\00", [44 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 -76, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"could not get irq: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ac97_clk\00", [23 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -75, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no peripheral clock\0A\00", [43 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.8, i8 0, i8 -72, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not create sound card device\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"AC97C\00", [26 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.10, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Atmel AC97C\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Atmel AC97 controller\00", [42 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.14, i8 0, i8 -66, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not remap register memory\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ac97\00", [27 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 -64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"reset pin not available\0A\00", [39 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.17, i8 0, i8 -62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"could not register on ac97 bus\0A\00", [32 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.18, i8 0, i8 -60, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not register ac97 mixer\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.19, i8 0, i8 -59, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"could not register ac97 pcm device\0A\00", [60 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.20, i8 0, i8 -57, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not register sound card\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 804, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Atmel AC97 controller at 0x%p, irq = %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@atmel_ac97c_probe._entry_ptr = internal global ptr @atmel_ac97c_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@atmel_ac97c_write.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 -100, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel_ac97c_write\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"codec write timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@atmel_ac97c_read.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 -89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel_ac97c_read\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"codec read timeout\0A\00", [44 x i8] zeroinitializer }, align 32
@atmel_ac97c_interrupt.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel_ac97c_interrupt\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"channel A event%s%s%s%s%s%s\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" OVRUN\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" RXRDY\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" UNRUN\00", [25 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" TXEMPTY\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" TXRDY\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c" NONE\00", [26 x i8] zeroinitializer }, align 32
@atmel_ac97c_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.28, ptr @.str.3, i32 528, ptr @.str.22, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"codec channel event%s%s%s%s%s\0A\00", [33 x i8] zeroinitializer }, align 32
@atmel_ac97c_interrupt._entry_ptr = internal global ptr @atmel_ac97c_interrupt._entry, section ".printk_index", align 4
@atmel_ac97c_interrupt._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.28, ptr @.str.3, i32 534, ptr @.str.40, ptr @.str.23 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"spurious interrupt sr 0x%08x casr 0x%08x cosr 0x%08x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@atmel_ac97c_interrupt._entry_ptr.41 = internal global ptr @atmel_ac97c_interrupt._entry.38, section ".printk_index", align 4
@atmel_ac97c_hw = internal constant { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 2949379, i64 12, i32 1073741824, i32 4000, i32 48000, i32 1, i32 2, i32 524288, i32 4096, i32 4096, i32 6, i32 64, i32 0 }, [32 x i8] zeroinitializer }, align 32
@at91_ac97_pcm_defs = internal constant { [3 x %struct.ac97_pcm], [36 x i8] } { [3 x %struct.ac97_pcm] [%struct.ac97_pcm { ptr null, i8 64, i16 0, i16 0, i32 0, [2 x %struct.anon.83] [%struct.anon.83 { i16 24, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.83 zeroinitializer], i32 0 }, %struct.ac97_pcm { ptr null, i8 -64, i16 0, i16 0, i32 0, [2 x %struct.anon.83] [%struct.anon.83 { i16 24, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.83 zeroinitializer], i32 0 }, %struct.ac97_pcm { ptr null, i8 -64, i16 0, i16 0, i32 0, [2 x %struct.anon.83] [%struct.anon.83 { i16 64, [4 x i16] zeroinitializer, [4 x i8] zeroinitializer, [4 x ptr] zeroinitializer }, %struct.anon.83 zeroinitializer], i32 0 }], [36 x i8] zeroinitializer }, align 32
@atmel_ac97_capture_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @atmel_ac97c_capture_open, ptr @atmel_ac97c_capture_close, ptr null, ptr @atmel_ac97c_capture_hw_params, ptr null, ptr @atmel_ac97c_capture_prepare, ptr @atmel_ac97c_capture_trigger, ptr null, ptr @atmel_ac97c_capture_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@atmel_ac97_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @atmel_ac97c_playback_open, ptr @atmel_ac97c_playback_close, ptr null, ptr @atmel_ac97c_playback_hw_params, ptr null, ptr @atmel_ac97c_playback_prepare, ptr @atmel_ac97c_playback_trigger, ptr null, ptr @atmel_ac97c_playback_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@opened_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.42, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @opened_mutex, i64 52), ptr getelementptr (i8, ptr @opened_mutex, i64 52) }, ptr @opened_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.43, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"opened_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"opened_mutex\00", [19 x i8] zeroinitializer }, align 32
@atmel_ac97c_capture_prepare.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.44, ptr @.str.3, ptr @.str.45, i8 0, i8 84, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"atmel_ac97c_capture_prepare\00", [36 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"could not set rate %d Hz\0A\00", [38 x i8] zeroinitializer }, align 32
@atmel_ac97c_playback_prepare.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.46, ptr @.str.3, ptr @.str.45, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"atmel_ac97c_playback_prepare\00", [35 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.48 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@__sancov_gen_cov_switch_values.49 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@__sancov_gen_cov_switch_values.51 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"atmel_ac97c_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 865, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 869, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"atmel_ac97c_dt_ids\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 692, i32 34 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"atmel_ac97c_pm\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 840, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 705, i32 39 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 714, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 720, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 724, i32 29 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 726, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 737, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 743, i32 54 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 745, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 750, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 752, i32 23 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 754, i32 26 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 762, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 767, i32 46 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 769, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 779, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 785, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 791, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 797, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 803, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 624, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 669, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 477, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 523, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 533, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"atmel_ac97c_hw\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 64, i32 38 }
@___asan_gen_.199 = private unnamed_addr constant [19 x i8] c"at91_ac97_pcm_defs\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 540, i32 30 }
@___asan_gen_.202 = private unnamed_addr constant [23 x i8] c"atmel_ac97_capture_ops\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 456, i32 33 }
@___asan_gen_.205 = private unnamed_addr constant [24 x i8] c"atmel_ac97_playback_ops\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 447, i32 33 }
@___asan_gen_.208 = private unnamed_addr constant [13 x i8] c"opened_mutex\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 33, i32 8 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 338, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [23 x i8] c"../sound/atmel/ac97c.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 256, i32 3 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author258, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file255, ptr @__UNIQUE_ID_license256, ptr @__exitcall_atmel_ac97c_driver_exit, ptr @__initcall__kmod_snd_atmel_ac97c__254_874_atmel_ac97c_driver_init6, ptr @atmel_ac97c_driver_exit, ptr @atmel_ac97c_interrupt._entry, ptr @atmel_ac97c_interrupt._entry.38, ptr @atmel_ac97c_interrupt._entry_ptr, ptr @atmel_ac97c_interrupt._entry_ptr.41, ptr @atmel_ac97c_probe._entry, ptr @atmel_ac97c_probe._entry_ptr, ptr @atmel_ac97c_driver, ptr @.str, ptr @atmel_ac97c_dt_ids, ptr @atmel_ac97c_pm, ptr @atmel_ac97c_probe.ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @atmel_ac97c_probe.__key, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.40, ptr @atmel_ac97c_hw, ptr @at91_ac97_pcm_defs, ptr @atmel_ac97_capture_ops, ptr @atmel_ac97_playback_ops, ptr @opened_mutex, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ac97c_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ac97c_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ac97c_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ac97c_probe.ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ac97c_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ac97c_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ac97c_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ac97c_interrupt._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ac97c_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91_ac97_pcm_defs to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ac97_capture_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_ac97_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @opened_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @atmel_ac97c_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @atmel_ac97c_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @atmel_ac97c_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %template.i = alloca %struct.snd_ac97_template, align 4
  %card = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #7
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !131
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_probe, %if.then7)) #7
          to label %cleanup [label %if.then7], !srcloc !132

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_probe.__UNIQUE_ID_ddebug243, ptr noundef %dev1, ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end9:                                          ; preds = %entry
  %call10 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %do.body12, label %if.end29

do.body12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_probe, %if.then24)) #7
          to label %cleanup [label %if.then24], !srcloc !132

if.then24:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_probe.__UNIQUE_ID_ddebug244, ptr noundef %dev1, ptr noundef nonnull @.str.5, i32 noundef %call10) #7
  br label %cleanup

if.end29:                                         ; preds = %if.end9
  %call31 = tail call ptr @clk_get(ptr noundef %dev1, ptr noundef nonnull @.str.6) #7
  %cmp.i = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body34, label %if.end52

do.body34:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_probe, %if.then46)) #7
          to label %do.end50 [label %if.then46], !srcloc !132

if.then46:                                        ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_probe.__UNIQUE_ID_ddebug245, ptr noundef %dev1, ptr noundef nonnull @.str.7) #7
  br label %do.end50

do.end50:                                         ; preds = %if.then46, %do.body34
  %1 = ptrtoint ptr %call31 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end29
  %call.i = tail call i32 @clk_prepare(ptr noundef %call31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end52.err_prepare_enable_crit_edge

if.end52.err_prepare_enable_crit_edge:            ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_prepare_enable

if.end.i:                                         ; preds = %if.end52
  %call1.i = tail call i32 @clk_enable(ptr noundef %call31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end56, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %call31) #7
  br label %err_prepare_enable

if.end56:                                         ; preds = %if.end.i
  %call58 = call i32 @snd_card_new(ptr noundef %dev1, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 112, ptr noundef nonnull %card) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %if.end78, label %do.body61

do.body61:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_probe, %if.then73)) #7
          to label %err_snd_card_new [label %if.then73], !srcloc !132

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_probe.__UNIQUE_ID_ddebug246, ptr noundef %dev1, ptr noundef nonnull @.str.8) #7
  br label %err_snd_card_new

if.end78:                                         ; preds = %if.end56
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %private_data, align 8
  %call.i352 = call i32 @request_threaded_irq(i32 noundef %call10, ptr noundef nonnull @atmel_ac97c_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.9, ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i352)
  %tobool80.not = icmp eq i32 %call.i352, 0
  br i1 %tobool80.not, label %if.end99, label %do.body82

do.body82:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_probe, %if.then94)) #7
          to label %err_request_irq [label %if.then94], !srcloc !132

if.then94:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_probe.__UNIQUE_ID_ddebug247, ptr noundef %dev1, ptr noundef nonnull @.str.10, i32 noundef %call10) #7
  br label %err_request_irq

if.end99:                                         ; preds = %if.end78
  %irq100 = getelementptr inbounds %struct.atmel_ac97c, ptr %5, i32 0, i32 14
  %6 = ptrtoint ptr %irq100 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call10, ptr %irq100, align 4
  %lock = getelementptr inbounds %struct.atmel_ac97c, ptr %5, i32 0, i32 12
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @atmel_ac97c_probe.__key, i16 noundef signext 3) #7
  %7 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 2
  %9 = call ptr @memcpy(ptr %driver, ptr @.str.12, i32 12)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 3
  %10 = call ptr @memcpy(ptr %shortname, ptr @.str.12, i32 12)
  %longname = getelementptr inbounds %struct.snd_card, ptr %8, i32 0, i32 4
  %11 = call ptr @memcpy(ptr %longname, ptr @.str.13, i32 22)
  %card110 = getelementptr inbounds %struct.atmel_ac97c, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %card110 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %8, ptr %card110, align 8
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call31, ptr %5, align 8
  %pdev112 = getelementptr inbounds %struct.atmel_ac97c, ptr %5, i32 0, i32 1
  %14 = ptrtoint ptr %pdev112 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %pdev, ptr %pdev112, align 4
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %17 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %16
  %add.i = add i32 %sub.i, %18
  %call114 = call ptr @ioremap(i32 noundef %16, i32 noundef %add.i) #7
  %regs115 = getelementptr inbounds %struct.atmel_ac97c, ptr %5, i32 0, i32 13
  %19 = ptrtoint ptr %regs115 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call114, ptr %regs115, align 8
  %tobool117.not = icmp eq ptr %call114, null
  br i1 %tobool117.not, label %do.body119, label %if.end136

do.body119:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_probe, %if.then131)) #7
          to label %err_ioremap [label %if.then131], !srcloc !132

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_probe.__UNIQUE_ID_ddebug248, ptr noundef %dev1, ptr noundef nonnull @.str.14) #7
  br label %err_ioremap

if.end136:                                        ; preds = %if.end99
  %call137 = call ptr @devm_gpiod_get_index(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef 2, i32 noundef 7) #7
  %reset_pin = getelementptr inbounds %struct.atmel_ac97c, ptr %5, i32 0, i32 16
  %20 = ptrtoint ptr %reset_pin to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call137, ptr %reset_pin, align 4
  %cmp.i353 = icmp ugt ptr %call137, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i353, label %do.body141, label %if.end136.if.end157_crit_edge

if.end136.if.end157_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end157

do.body141:                                       ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_probe, %if.then153)) #7
          to label %if.end157 [label %if.then153], !srcloc !132

if.then153:                                       ; preds = %do.body141
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_probe.__UNIQUE_ID_ddebug249, ptr noundef %dev1, ptr noundef nonnull @.str.16) #7
  br label %if.end157

if.end157:                                        ; preds = %if.then153, %do.body141, %if.end136.if.end157_crit_edge
  call fastcc void @atmel_ac97c_reset(ptr noundef %5)
  %21 = ptrtoint ptr %regs115 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs115, align 8
  %add.ptr = getelementptr i8, ptr %22, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 32) #7, !srcloc !133
  %23 = ptrtoint ptr %regs115 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs115, align 8
  %add.ptr160 = getelementptr i8, ptr %24, i32 92
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr160) #7, !srcloc !134
  %or = or i32 %25, 4
  %26 = ptrtoint ptr %regs115 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs115, align 8
  %add.ptr163 = getelementptr i8, ptr %27, i32 84
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr163, i32 %or) #7, !srcloc !133
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 4
  %ac97_bus = getelementptr inbounds %struct.atmel_ac97c, ptr %5, i32 0, i32 7
  %call164 = call i32 @snd_ac97_bus(ptr noundef %29, i32 noundef 0, ptr noundef nonnull @atmel_ac97c_probe.ops, ptr noundef %5, ptr noundef %ac97_bus) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call164)
  %tobool165.not = icmp eq i32 %call164, 0
  br i1 %tobool165.not, label %if.end184, label %do.body167

do.body167:                                       ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_probe, %if.then179)) #7
          to label %err_ac97_bus [label %if.then179], !srcloc !132

if.then179:                                       ; preds = %do.body167
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_probe.__UNIQUE_ID_ddebug250, ptr noundef %dev1, ptr noundef nonnull @.str.17) #7
  br label %err_ac97_bus

if.end184:                                        ; preds = %if.end157
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %template.i) #7
  %30 = getelementptr inbounds i8, ptr %template.i, i32 4
  %31 = call ptr @memset(ptr %30, i32 0, i32 20)
  %32 = ptrtoint ptr %template.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %5, ptr %template.i, align 4
  %33 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ac97_bus, align 4
  %ac97.i = getelementptr inbounds %struct.atmel_ac97c, ptr %5, i32 0, i32 6
  %call.i354 = call i32 @snd_ac97_mixer(ptr noundef %34, ptr noundef nonnull %template.i, ptr noundef %ac97.i) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %template.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %tobool186.not = icmp eq i32 %call.i354, 0
  br i1 %tobool186.not, label %if.end205, label %do.body188

do.body188:                                       ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_probe, %if.then200)) #7
          to label %err_ac97_bus [label %if.then200], !srcloc !132

if.then200:                                       ; preds = %do.body188
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_probe.__UNIQUE_ID_ddebug251, ptr noundef %dev1, ptr noundef nonnull @.str.18) #7
  br label %err_ac97_bus

if.end205:                                        ; preds = %if.end184
  %call206 = call fastcc i32 @atmel_ac97c_pcm_new(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call206)
  %tobool207.not = icmp eq i32 %call206, 0
  br i1 %tobool207.not, label %if.end226, label %do.body209

do.body209:                                       ; preds = %if.end205
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_probe, %if.then221)) #7
          to label %err_ac97_bus [label %if.then221], !srcloc !132

if.then221:                                       ; preds = %do.body209
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_probe.__UNIQUE_ID_ddebug252, ptr noundef %dev1, ptr noundef nonnull @.str.19) #7
  br label %err_ac97_bus

if.end226:                                        ; preds = %if.end205
  %35 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %card, align 4
  %call227 = call i32 @snd_card_register(ptr noundef %36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call227)
  %tobool228.not = icmp eq i32 %call227, 0
  br i1 %tobool228.not, label %if.end247, label %do.body230

do.body230:                                       ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_probe, %if.then242)) #7
          to label %err_ac97_bus [label %if.then242], !srcloc !132

if.then242:                                       ; preds = %do.body230
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_probe.__UNIQUE_ID_ddebug253, ptr noundef %dev1, ptr noundef nonnull @.str.20) #7
  br label %err_ac97_bus

if.end247:                                        ; preds = %if.end226
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %card, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %39 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %driver_data.i.i, align 4
  %40 = ptrtoint ptr %regs115 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs115, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.21, ptr noundef %41, i32 noundef %call10) #10
  br label %cleanup

err_ac97_bus:                                     ; preds = %if.then242, %do.body230, %if.then221, %do.body209, %if.then200, %do.body188, %if.then179, %do.body167
  %retval2.0 = phi i32 [ %call164, %if.then179 ], [ %call.i354, %if.then200 ], [ %call206, %if.then221 ], [ %call227, %if.then242 ], [ %call164, %do.body167 ], [ %call.i354, %do.body188 ], [ %call206, %do.body209 ], [ %call227, %do.body230 ]
  %42 = ptrtoint ptr %regs115 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs115, align 8
  call void @iounmap(ptr noundef %43) #7
  br label %err_ioremap

err_ioremap:                                      ; preds = %err_ac97_bus, %if.then131, %do.body119
  %retval2.1 = phi i32 [ %retval2.0, %err_ac97_bus ], [ -12, %if.then131 ], [ -12, %do.body119 ]
  %call254 = call ptr @free_irq(i32 noundef %call10, ptr noundef %5) #7
  br label %err_request_irq

err_request_irq:                                  ; preds = %err_ioremap, %if.then94, %do.body82
  %retval2.2 = phi i32 [ %call.i352, %if.then94 ], [ %retval2.1, %err_ioremap ], [ %call.i352, %do.body82 ]
  %44 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %card, align 4
  %call255 = call i32 @snd_card_free(ptr noundef %45) #7
  br label %err_snd_card_new

err_snd_card_new:                                 ; preds = %err_request_irq, %if.then73, %do.body61
  %retval2.3 = phi i32 [ %call58, %if.then73 ], [ %retval2.2, %err_request_irq ], [ %call58, %do.body61 ]
  call void @clk_disable(ptr noundef %call31) #7
  call void @clk_unprepare(ptr noundef %call31) #7
  br label %err_prepare_enable

err_prepare_enable:                               ; preds = %err_snd_card_new, %if.then3.i, %if.end52.err_prepare_enable_crit_edge
  %retval2.4 = phi i32 [ %retval2.3, %err_snd_card_new ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end52.err_prepare_enable_crit_edge ]
  call void @clk_put(ptr noundef %call31) #7
  br label %cleanup

cleanup:                                          ; preds = %err_prepare_enable, %if.end247, %do.end50, %if.then24, %do.body12, %if.then7, %do.body
  %retval.0 = phi i32 [ %1, %do.end50 ], [ %retval2.4, %err_prepare_enable ], [ 0, %if.end247 ], [ -6, %if.then7 ], [ %call10, %if.then24 ], [ -6, %do.body ], [ %call10, %do.body12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %regs = getelementptr inbounds %struct.atmel_ac97c, ptr %3, i32 0, i32 13
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !133
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr2 = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #7, !srcloc !133
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #7, !srcloc !133
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 8
  tail call void @clk_disable(ptr noundef %11) #7
  tail call void @clk_unprepare(ptr noundef %11) #7
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %3, align 8
  tail call void @clk_put(ptr noundef %13) #7
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 8
  tail call void @iounmap(ptr noundef %15) #7
  %irq = getelementptr inbounds %struct.atmel_ac97c, ptr %3, i32 0, i32 14
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call7 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %3) #7
  %call8 = tail call i32 @snd_card_free(ptr noundef %1) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @atmel_ac97c_write(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg, i16 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = and i16 %reg, 127
  %and = zext i16 %2 to i32
  %shl = shl nuw nsw i32 %and, 16
  %conv1 = zext i16 %val to i32
  %or = or i32 %shl, %conv1
  %regs = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 13
  br label %do.body

do.body:                                          ; preds = %if.end.do.body_crit_edge, %entry
  %timeout.0 = phi i32 [ 40, %entry ], [ %dec, %if.end.do.body_crit_edge ]
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %4, i32 72
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !134
  %and2 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool.not = icmp eq i32 %and2, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %7, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %or) #7, !srcloc !133
  br label %cleanup

if.end:                                           ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 214748) #7
  %dec = add nsw i32 %timeout.0, -1
  %tobool5.not = icmp eq i32 %dec, 0
  br i1 %tobool5.not, label %do.body6, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_write.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_write, %if.then11)) #7
          to label %cleanup [label %if.then11], !srcloc !132

if.then11:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %10, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_write.__UNIQUE_ID_ddebug241, ptr noundef %dev, ptr noundef nonnull @.str.25) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then11, %do.body6, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i16 @atmel_ac97c_read(ptr nocapture noundef readonly %ac97, i16 noundef zeroext %reg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_ac97, ptr %ac97, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = and i16 %reg, 127
  %3 = or i16 %2, 128
  %or = zext i16 %3 to i32
  %shl = shl nuw nsw i32 %or, 16
  %regs = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 72
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !134
  %and1 = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %entry.retry_write.preheader_crit_edge, label %if.then

entry.retry_write.preheader_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry_write.preheader

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %8, i32 64
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4) #7, !srcloc !134
  br label %retry_write.preheader

retry_write.preheader:                            ; preds = %if.then, %entry.retry_write.preheader_crit_edge
  br label %retry_write

retry_write:                                      ; preds = %retry_write.backedge, %retry_write.preheader
  %write.0 = phi i32 [ 10, %retry_write.preheader ], [ %write.0.be, %retry_write.backedge ]
  br label %do.body

do.body:                                          ; preds = %if.end15.do.body_crit_edge, %retry_write
  %timeout.0 = phi i32 [ 40, %retry_write ], [ %dec, %if.end15.do.body_crit_edge ]
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr7 = getelementptr i8, ptr %11, i32 72
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !134
  %and9 = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %cmp10.not = icmp eq i32 %and9, 0
  br i1 %cmp10.not, label %if.end15, label %if.then12

if.then12:                                        ; preds = %do.body
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr14 = getelementptr i8, ptr %14, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %shl) #7, !srcloc !133
  br label %do.body20

if.end15:                                         ; preds = %do.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #7
  %dec = add nsw i32 %timeout.0, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %do.end, label %if.end15.do.body_crit_edge

if.end15.do.body_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end:                                           ; preds = %if.end15
  %dec16 = add i32 %write.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec16)
  %tobool17.not = icmp eq i32 %dec16, 0
  br i1 %tobool17.not, label %do.end.do.body41_crit_edge, label %do.end.retry_write.backedge_crit_edge

do.end.retry_write.backedge_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry_write.backedge

do.end.do.body41_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body41

retry_write.backedge:                             ; preds = %do.end36.retry_write.backedge_crit_edge, %do.end.retry_write.backedge_crit_edge
  %write.0.be = phi i32 [ %dec37, %do.end36.retry_write.backedge_crit_edge ], [ %dec16, %do.end.retry_write.backedge_crit_edge ]
  br label %retry_write

do.body20:                                        ; preds = %if.end32.do.body20_crit_edge, %if.then12
  %timeout.1 = phi i32 [ %timeout.0, %if.then12 ], [ %dec34, %if.end32.do.body20_crit_edge ]
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr22 = getelementptr i8, ptr %17, i32 72
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #7, !srcloc !134
  %and24 = and i32 %18, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %cmp25.not = icmp eq i32 %and24, 0
  br i1 %cmp25.not, label %if.end32, label %if.then27

if.then27:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 8
  %add.ptr29 = getelementptr i8, ptr %20, i32 64
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #7, !srcloc !134
  %conv31 = trunc i32 %21 to i16
  br label %cleanup

if.end32:                                         ; preds = %do.body20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #7
  %dec34 = add nsw i32 %timeout.1, -1
  %tobool35.not = icmp eq i32 %dec34, 0
  br i1 %tobool35.not, label %do.end36, label %if.end32.do.body20_crit_edge

if.end32.do.body20_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body20

do.end36:                                         ; preds = %if.end32
  %dec37 = add i32 %write.0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec37)
  %tobool38.not = icmp eq i32 %dec37, 0
  br i1 %tobool38.not, label %do.end36.do.body41_crit_edge, label %do.end36.retry_write.backedge_crit_edge

do.end36.retry_write.backedge_crit_edge:          ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry_write.backedge

do.end36.do.body41_crit_edge:                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body41

do.body41:                                        ; preds = %do.end36.do.body41_crit_edge, %do.end.do.body41_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_read.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_read, %if.then46)) #7
          to label %cleanup [label %if.then46], !srcloc !132

if.then46:                                        ; preds = %do.body41
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %24, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_read.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then46, %do.body41, %if.then27
  %retval.0 = phi i16 [ %conv31, %if.then27 ], [ -1, %if.then46 ], [ -1, %do.body41 ]
  ret i16 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_interrupt(i32 noundef %irq, ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.atmel_ac97c, ptr %dev, i32 0, i32 13
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 80
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !134
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 8
  %add.ptr3 = getelementptr i8, ptr %4, i32 40
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !134
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %7, i32 72
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr6) #7, !srcloc !134
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %10, i32 44
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !134
  %and = and i32 %2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end99.thread, label %if.then

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_interrupt.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_interrupt, %if.then15)) #7
          to label %do.end [label %if.then15], !srcloc !132

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.atmel_ac97c, ptr %dev, i32 0, i32 1
  %12 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdev, align 4
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %13, i32 0, i32 3
  %and17 = and i32 %5, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %cond = select i1 %tobool18.not, ptr @.str.31, ptr @.str.30
  %and19 = and i32 %5, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %cond21 = select i1 %tobool20.not, ptr @.str.31, ptr @.str.32
  %and22 = and i32 %5, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  %cond24 = select i1 %tobool23.not, ptr @.str.31, ptr @.str.33
  %and25 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %cond27 = select i1 %tobool26.not, ptr @.str.31, ptr @.str.34
  %and28 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %cond30 = select i1 %tobool29.not, ptr @.str.31, ptr @.str.35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool31.not = icmp eq i32 %5, 0
  %cond34 = select i1 %tobool31.not, ptr @.str.36, ptr @.str.31
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_interrupt.__UNIQUE_ID_ddebug240, ptr noundef %dev16, ptr noundef nonnull @.str.29, ptr noundef nonnull %cond, ptr noundef nonnull %cond21, ptr noundef nonnull %cond24, ptr noundef nonnull %cond27, ptr noundef nonnull %cond30, ptr noundef nonnull %cond34) #7
  br label %do.end

do.end:                                           ; preds = %if.then15, %if.then
  %and35 = and i32 %11, %5
  %and36 = and i32 %and35, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.end.if.end62_crit_edge, label %if.then38

do.end.if.end62_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then38:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %playback_substream = getelementptr inbounds %struct.atmel_ac97c, ptr %dev, i32 0, i32 2
  %14 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %playback_substream, align 8
  %runtime39 = getelementptr inbounds %struct.snd_pcm_substream, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %runtime39 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %runtime39, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 16
  %18 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %period_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 21
  %20 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %21, %19
  %div1.i = lshr i32 %mul.i, 3
  %playback_period = getelementptr inbounds %struct.atmel_ac97c, ptr %dev, i32 0, i32 10
  %22 = ptrtoint ptr %playback_period to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %playback_period, align 4
  %inc = add i32 %23, 1
  store i32 %inc, ptr %playback_period, align 4
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 17
  %24 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %25)
  %cmp = icmp eq i32 %inc, %25
  %spec.store.select189 = select i1 %cmp, i32 0, i32 %inc
  %26 = ptrtoint ptr %playback_period to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %spec.store.select189, ptr %playback_period, align 4
  %add = add i32 %spec.store.select189, 1
  %27 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %28)
  %cmp47 = icmp eq i32 %add, %28
  %spec.store.select = select i1 %cmp47, i32 0, i32 %add
  %mul = mul i32 %spec.store.select, %div1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !135
  tail call void @arm_heavy_mb() #7
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %17, i32 0, i32 51
  %29 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_addr, align 8
  %add53 = add i32 %mul, %30
  %31 = tail call i32 @llvm.bswap.i32(i32 %add53)
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  %add.ptr55 = getelementptr i8, ptr %33, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr55, i32 %31) #7, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !136
  tail call void @arm_heavy_mb() #7
  %div199200 = lshr i32 %mul.i, 4
  %34 = tail call i32 @llvm.bswap.i32(i32 %div199200)
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 8
  %add.ptr60 = getelementptr i8, ptr %36, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 %34) #7, !srcloc !133
  %37 = ptrtoint ptr %playback_substream to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %playback_substream, align 8
  tail call void @snd_pcm_period_elapsed(ptr noundef %38) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then38, %do.end.if.end62_crit_edge
  %and64 = and i32 %and35, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.end62.if.end99_crit_edge, label %if.then66

if.end62.if.end99_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #9
  %capture_substream = getelementptr inbounds %struct.atmel_ac97c, ptr %dev, i32 0, i32 3
  %39 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %capture_substream, align 4
  %runtime67 = getelementptr inbounds %struct.snd_pcm_substream, ptr %40, i32 0, i32 11
  %41 = ptrtoint ptr %runtime67 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %runtime67, align 4
  %period_size68 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 16
  %43 = ptrtoint ptr %period_size68 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %period_size68, align 4
  %frame_bits.i191 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 21
  %45 = ptrtoint ptr %frame_bits.i191 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %frame_bits.i191, align 8
  %mul.i192 = mul i32 %46, %44
  %div1.i193 = lshr i32 %mul.i192, 3
  %capture_period = getelementptr inbounds %struct.atmel_ac97c, ptr %dev, i32 0, i32 11
  %47 = ptrtoint ptr %capture_period to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %capture_period, align 8
  %inc70 = add i32 %48, 1
  store i32 %inc70, ptr %capture_period, align 8
  %periods72 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 17
  %49 = ptrtoint ptr %periods72 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %periods72, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc70, i32 %50)
  %cmp73 = icmp eq i32 %inc70, %50
  %spec.store.select190 = select i1 %cmp73, i32 0, i32 %inc70
  %51 = ptrtoint ptr %capture_period to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %spec.store.select190, ptr %capture_period, align 8
  %add78 = add i32 %spec.store.select190, 1
  %52 = ptrtoint ptr %periods72 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %periods72, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add78, i32 %53)
  %cmp80 = icmp eq i32 %add78, %53
  %spec.store.select133 = select i1 %cmp80, i32 0, i32 %add78
  %mul83 = mul i32 %spec.store.select133, %div1.i193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !137
  tail call void @arm_heavy_mb() #7
  %dma_addr87 = getelementptr inbounds %struct.snd_pcm_runtime, ptr %42, i32 0, i32 51
  %54 = ptrtoint ptr %dma_addr87 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_addr87, align 8
  %add88 = add i32 %mul83, %55
  %56 = tail call i32 @llvm.bswap.i32(i32 %add88)
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 8
  %add.ptr90 = getelementptr i8, ptr %58, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %56) #7, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !138
  tail call void @arm_heavy_mb() #7
  %div94198201 = lshr i32 %mul.i192, 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %div94198201)
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 8
  %add.ptr96 = getelementptr i8, ptr %61, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr96, i32 %59) #7, !srcloc !133
  %62 = ptrtoint ptr %capture_substream to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %capture_substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %63) #7
  br label %if.end99

if.end99:                                         ; preds = %if.then66, %if.end62.if.end99_crit_edge
  %and100 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end124, label %if.end99.if.end124.thread_crit_edge

if.end99.if.end124.thread_crit_edge:              ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124.thread

if.end99.thread:                                  ; preds = %entry
  %and100202 = and i32 %2, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100202)
  %tobool101.not203 = icmp eq i32 %and100202, 0
  br i1 %tobool101.not203, label %if.end99.thread.do.end129_crit_edge, label %if.end99.thread.if.end124.thread_crit_edge

if.end99.thread.if.end124.thread_crit_edge:       ; preds = %if.end99.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124.thread

if.end99.thread.do.end129_crit_edge:              ; preds = %if.end99.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end129

if.end124.thread:                                 ; preds = %if.end99.thread.if.end124.thread_crit_edge, %if.end99.if.end124.thread_crit_edge
  %pdev106 = getelementptr inbounds %struct.atmel_ac97c, ptr %dev, i32 0, i32 1
  %64 = ptrtoint ptr %pdev106 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %pdev106, align 4
  %dev107 = getelementptr inbounds %struct.platform_device, ptr %65, i32 0, i32 3
  %and108 = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and108)
  %tobool109.not = icmp eq i32 %and108, 0
  %cond110 = select i1 %tobool109.not, ptr @.str.31, ptr @.str.30
  %and111 = and i32 %8, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool112.not = icmp eq i32 %and111, 0
  %cond113 = select i1 %tobool112.not, ptr @.str.31, ptr @.str.32
  %and114 = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  %cond116 = select i1 %tobool115.not, ptr @.str.31, ptr @.str.34
  %and117 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and117)
  %tobool118.not = icmp eq i32 %and117, 0
  %cond119 = select i1 %tobool118.not, ptr @.str.31, ptr @.str.35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool120.not = icmp eq i32 %8, 0
  %cond123 = select i1 %tobool120.not, ptr @.str.36, ptr @.str.31
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev107, ptr noundef nonnull @.str.37, ptr noundef nonnull %cond110, ptr noundef nonnull %cond113, ptr noundef nonnull %cond116, ptr noundef nonnull %cond119, ptr noundef nonnull %cond123) #10
  br label %if.end132

if.end124:                                        ; preds = %if.end99
  br i1 %tobool.not, label %if.end124.do.end129_crit_edge, label %if.end124.if.end132_crit_edge

if.end124.if.end132_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.end124.do.end129_crit_edge:                    ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end129

do.end129:                                        ; preds = %if.end124.do.end129_crit_edge, %if.end99.thread.do.end129_crit_edge
  %pdev130 = getelementptr inbounds %struct.atmel_ac97c, ptr %dev, i32 0, i32 1
  %66 = ptrtoint ptr %pdev130 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdev130, align 4
  %dev131 = getelementptr inbounds %struct.platform_device, ptr %67, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev131, ptr noundef nonnull @.str.39, i32 noundef %2, i32 noundef %5, i32 noundef %8) #10
  br label %if.end132

if.end132:                                        ; preds = %do.end129, %if.end124.if.end132_crit_edge, %if.end124.thread
  %retval1.1197 = phi i32 [ 1, %if.end124.thread ], [ 0, %do.end129 ], [ 1, %if.end124.if.end132_crit_edge ]
  ret i32 %retval1.1197
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @atmel_ac97c_reset(ptr nocapture noundef readonly %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.atmel_ac97c, ptr %chip, i32 0, i32 13
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %1, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #7, !srcloc !133
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr2 = getelementptr i8, ptr %3, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 1) #7, !srcloc !133
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %5, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #7, !srcloc !133
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %7, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #7, !srcloc !133
  %reset_pin = getelementptr inbounds %struct.atmel_ac97c, ptr %chip, i32 0, i32 16
  %8 = ptrtoint ptr %reset_pin to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reset_pin, align 4
  %cmp.i = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @gpiod_set_value(ptr noundef %9, i32 noundef 0) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 429496) #7
  %11 = ptrtoint ptr %reset_pin to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reset_pin, align 4
  tail call void @gpiod_set_value(ptr noundef %12, i32 noundef 1) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr10 = getelementptr i8, ptr %14, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 3) #7, !srcloc !133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496) #7
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr12 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12, i32 1) #7, !srcloc !133
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_bus(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @atmel_ac97c_pcm_new(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  %pcm = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm) #7
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm, align 4, !annotation !131
  %ac97_bus = getelementptr inbounds %struct.atmel_ac97c, ptr %chip, i32 0, i32 7
  %1 = ptrtoint ptr %ac97_bus to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ac97_bus, align 4
  %call = tail call i32 @snd_ac97_pcm_assign(ptr noundef %2, i16 noundef zeroext 3, ptr noundef nonnull @at91_ac97_pcm_defs) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %card = getelementptr inbounds %struct.atmel_ac97c, ptr %chip, i32 0, i32 4
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card, align 8
  %shortname = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 3
  %call3 = call i32 @snd_pcm_new(ptr noundef %4, ptr noundef %shortname, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %pcm) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %6, i32 noundef 1, ptr noundef nonnull @atmel_ac97_capture_ops) #7
  %7 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pcm, align 4
  call void @snd_pcm_set_ops(ptr noundef %8, i32 noundef 0, ptr noundef nonnull @atmel_ac97_playback_ops) #7
  %9 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcm, align 4
  %pdev = getelementptr inbounds %struct.atmel_ac97c, ptr %chip, i32 0, i32 1
  %11 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %12, i32 0, i32 3
  %call7 = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %10, i32 noundef 2, ptr noundef %dev, i32 noundef 24576, i32 noundef 524288) #7
  %13 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcm, align 4
  %private_data = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %chip, ptr %private_data, align 8
  %info_flags = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %info_flags to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %info_flags, align 8
  %name = getelementptr inbounds %struct.snd_pcm, ptr %14, i32 0, i32 7
  %17 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %card, align 8
  %shortname10 = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 3
  %call12 = call ptr @strcpy(ptr noundef %name, ptr noundef %shortname10) #11
  %pcm13 = getelementptr inbounds %struct.atmel_ac97c, ptr %chip, i32 0, i32 5
  %19 = ptrtoint ptr %pcm13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %14, ptr %pcm13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_mixer(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_pcm_assign(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_capture_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @opened_mutex, i32 noundef 0) #7
  %opened = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opened, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %opened, align 8
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @atmel_ac97c_hw, i32 64)
  %cur_rate = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %9 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rate_min, align 4
  %10 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_rate, align 8
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %12 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rate_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cur_format = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %cur_format to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cur_format, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool6.not = icmp eq i64 %14, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sh_prom.i = and i64 %14, 4294967295
  %shl.i = shl nuw i64 1, %sh_prom.i
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 1
  %15 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %shl.i, ptr %formats, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @opened_mutex) #7
  %capture_substream = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %substream, ptr %capture_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_capture_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @opened_mutex, i32 noundef 0) #7
  %opened = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opened, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %opened, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_rate = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %cur_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cur_rate, align 8
  %cur_format = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %cur_format to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %cur_format, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @opened_mutex) #7
  %capture_substream = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %capture_substream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %capture_substream, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_capture_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @opened_mutex, i32 noundef 0) #7
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %cur_rate = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %cur_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cur_rate, align 8
  %arrayidx.i.i4 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %6, %entry.if.then.i.i_crit_edge ], [ %9, %for.inc.i.i.if.then.i.i_crit_edge ]
  %7 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !139
  %add.i.i = or i32 %7, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %conv = sext i32 %retval.0.i.i to i64
  %cur_format = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %cur_format to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %cur_format, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @opened_mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_capture_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %7, %5
  %div1.i = lshr i32 %mul.i, 3
  %regs = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !134
  %capture_period = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %capture_period to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %capture_period, align 8
  %and = and i32 %10, -64
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channels, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 9, %sw.bb4 ], [ %13, %entry.sw.epilog_crit_edge ]
  %or5 = or i32 %and, %.sink
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %add.ptr7 = getelementptr i8, ptr %16, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %or5) #7, !srcloc !133
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %18, i32 44
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !134
  %opened = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %opened, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp = icmp slt i32 %21, 2
  %or11 = or i32 %19, 4325376
  %word.1 = select i1 %cmp, i32 4325376, i32 %or11
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %22 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %format, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %23, label %sw.default14 [
    i32 2, label %sw.epilog.sw.epilog21_crit_edge
    i32 3, label %sw.bb12
  ]

sw.epilog.sw.epilog21_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %and13 = and i32 %word.1, -262145
  br label %sw.epilog21

sw.default14:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 8
  %add.ptr16 = getelementptr i8, ptr %26, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !134
  %and18 = and i32 %27, -64
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %add.ptr20 = getelementptr i8, ptr %29, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %and18) #7, !srcloc !133
  br label %cleanup

sw.epilog21:                                      ; preds = %sw.bb12, %sw.epilog.sw.epilog21_crit_edge
  %word.2 = phi i32 [ %and13, %sw.bb12 ], [ %word.1, %sw.epilog.sw.epilog21_crit_edge ]
  %or22 = or i32 %word.2, 32
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 8
  %add.ptr24 = getelementptr i8, ptr %31, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %or22) #7, !srcloc !133
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  %add.ptr26 = getelementptr i8, ptr %33, i32 92
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !134
  %or28 = or i32 %34, 8
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 8
  %add.ptr30 = getelementptr i8, ptr %36, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %or28) #7, !srcloc !133
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %37 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %38)
  %cmp31.not = icmp eq i32 %38, 48000
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 8
  %add.ptr41 = getelementptr i8, ptr %40, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7
  br i1 %cmp31.not, label %if.else39, label %if.then32

if.then32:                                        ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  %or36 = or i32 %41, 4
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 8
  %add.ptr38 = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %or36) #7, !srcloc !133
  br label %if.end46

if.else39:                                        ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  %and43 = and i32 %41, -5
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %add.ptr45 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %and43) #7, !srcloc !133
  br label %if.end46

if.end46:                                         ; preds = %if.else39, %if.then32
  %ac97 = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ac97, align 8
  %48 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rate, align 4
  %call48 = tail call i32 @snd_ac97_set_rate(ptr noundef %47, i32 noundef 50, i32 noundef %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool.not = icmp eq i32 %call48, 0
  br i1 %tobool.not, label %if.end46.do.body58_crit_edge, label %do.body

if.end46.do.body58_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58

do.body:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_capture_prepare.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_capture_prepare, %if.then54)) #7
          to label %do.body58 [label %if.then54], !srcloc !132

if.then54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_capture_prepare.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %53) #7
  br label %do.body58

do.body58:                                        ; preds = %if.then54, %do.body, %if.end46.do.body58_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !140
  tail call void @arm_heavy_mb() #7
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %54 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_addr, align 8
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 8
  %add.ptr62 = getelementptr i8, ptr %58, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %56) #7, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !141
  tail call void @arm_heavy_mb() #7
  %div131132 = lshr i32 %mul.i, 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %div131132)
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 8
  %add.ptr67 = getelementptr i8, ptr %61, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %59) #7, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !142
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_addr, align 8
  %add = add i32 %63, %div1.i
  %64 = tail call i32 @llvm.bswap.i32(i32 %add)
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 8
  %add.ptr73 = getelementptr i8, ptr %66, i32 272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %64) #7, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !143
  tail call void @arm_heavy_mb() #7
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 8
  %add.ptr79 = getelementptr i8, ptr %68, i32 276
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %59) #7, !srcloc !133
  br label %cleanup

cleanup:                                          ; preds = %do.body58, %sw.default14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default14 ], [ %call48, %do.body58 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_capture_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %regs = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !134
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 8
  %add.ptr2 = getelementptr i8, ptr %6, i32 292
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !134
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !144
  %8 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge20
    i32 1, label %entry.sw.bb_crit_edge21
    i32 3, label %entry.sw.bb5_crit_edge
    i32 5, label %entry.sw.bb5_crit_edge22
    i32 0, label %entry.sw.bb5_crit_edge23
  ]

entry.sw.bb5_crit_edge23:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge22:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb5

entry.sw.bb_crit_edge21:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge20:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge20, %entry.sw.bb_crit_edge21
  %or = or i32 %4, 2113536
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge22, %entry.sw.bb5_crit_edge23
  %9 = or i32 %7, 33554432
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %opened = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 15
  %11 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %opened, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp = icmp slt i32 %12, 2
  %and = and i32 %4, -2097153
  %spec.select = select i1 %cmp, i32 %and, i32 %4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %ptcr.0 = phi i32 [ 1, %sw.bb ], [ %10, %sw.bb5 ]
  %camr.0 = phi i32 [ %or, %sw.bb ], [ %spec.select, %sw.bb5 ]
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 8
  %add.ptr8 = getelementptr i8, ptr %14, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %camr.0) #7, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !145
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %ptcr.0)
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 8
  %add.ptr10 = getelementptr i8, ptr %17, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %15) #7, !srcloc !133
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_capture_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %regs = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 256
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !134
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !146
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr, align 8
  %sub = sub i32 %7, %9
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %11
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %13)
  %cmp.not = icmp ult i32 %div.i, %13
  %sub5 = select i1 %cmp.not, i32 0, i32 %13
  %spec.select = sub i32 %div.i, %sub5
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ac97_set_rate(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_playback_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @opened_mutex, i32 noundef 0) #7
  %opened = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %opened, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %opened, align 8
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @atmel_ac97c_hw, i32 64)
  %cur_rate = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 9
  %7 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %rate_min = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 3
  %9 = ptrtoint ptr %rate_min to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %rate_min, align 4
  %10 = ptrtoint ptr %cur_rate to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_rate, align 8
  %rate_max = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 4
  %12 = ptrtoint ptr %rate_max to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %rate_max, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %cur_format = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %cur_format to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %cur_format, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool6.not = icmp eq i64 %14, 0
  br i1 %tobool6.not, label %if.end.if.end10_crit_edge, label %if.then7

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %sh_prom.i = and i64 %14, 4294967295
  %shl.i = shl nuw i64 1, %sh_prom.i
  %formats = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46, i32 1
  %15 = ptrtoint ptr %formats to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %shl.i, ptr %formats, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %if.end.if.end10_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @opened_mutex) #7
  %playback_substream = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %substream, ptr %playback_substream, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_playback_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @opened_mutex, i32 noundef 0) #7
  %opened = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %opened, align 8
  %dec = add i32 %3, -1
  store i32 %dec, ptr %opened, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %cur_rate = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %cur_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cur_rate, align 8
  %cur_format = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %cur_format to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 0, ptr %cur_format, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @opened_mutex) #7
  %playback_substream = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %playback_substream to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %playback_substream, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_playback_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @opened_mutex, i32 noundef 0) #7
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %cur_rate = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %cur_rate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %cur_rate, align 8
  %arrayidx.i.i4 = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.i.i4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i.i, label %for.inc.i.i, label %entry.if.then.i.i_crit_edge

entry.if.then.i.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %for.inc.i.i.if.then.i.i_crit_edge, %entry.if.then.i.i_crit_edge
  %i.09.lcssa.i.i = phi i32 [ 0, %entry.if.then.i.i_crit_edge ], [ 32, %for.inc.i.i.if.then.i.i_crit_edge ]
  %.lcssa.i.i = phi i32 [ %6, %entry.if.then.i.i_crit_edge ], [ %9, %for.inc.i.i.if.then.i.i_crit_edge ]
  %7 = tail call i32 @llvm.cttz.i32(i32 %.lcssa.i.i, i1 true) #7, !range !139
  %add.i.i = or i32 %7, %i.09.lcssa.i.i
  br label %params_format.exit

for.inc.i.i:                                      ; preds = %entry
  %arrayidx.1.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 1, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.1.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.1.i.i, label %for.inc.i.i.params_format.exit_crit_edge, label %for.inc.i.i.if.then.i.i_crit_edge

for.inc.i.i.if.then.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

for.inc.i.i.params_format.exit_crit_edge:         ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %params_format.exit

params_format.exit:                               ; preds = %for.inc.i.i.params_format.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi i32 [ %add.i.i, %if.then.i.i ], [ 0, %for.inc.i.i.params_format.exit_crit_edge ]
  %conv = sext i32 %retval.0.i.i to i64
  %cur_format = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 8
  %10 = ptrtoint ptr %cur_format to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %conv, ptr %cur_format, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @opened_mutex) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_playback_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i, align 8
  %mul.i = mul i32 %7, %5
  %div1.i = lshr i32 %mul.i, 3
  %regs = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 13
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !134
  %playback_period = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %playback_period to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %playback_period, align 4
  %and = and i32 %10, -64
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channels, align 8
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.49)
  switch i32 %13, label %entry.cleanup_crit_edge [
    i32 1, label %entry.sw.epilog_crit_edge
    i32 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 9, %sw.bb4 ], [ %13, %entry.sw.epilog_crit_edge ]
  %or5 = or i32 %and, %.sink
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 8
  %add.ptr7 = getelementptr i8, ptr %16, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %or5) #7, !srcloc !133
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 8
  %add.ptr9 = getelementptr i8, ptr %18, i32 44
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !134
  %opened = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 15
  %20 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %opened, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp = icmp slt i32 %21, 2
  %or11 = or i32 %19, 4325376
  %word.1 = select i1 %cmp, i32 4325376, i32 %or11
  %format = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 12
  %22 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %format, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %23, label %sw.default14 [
    i32 2, label %sw.epilog.sw.epilog21_crit_edge
    i32 3, label %sw.bb12
  ]

sw.epilog.sw.epilog21_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog21

sw.bb12:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %and13 = and i32 %word.1, -262145
  br label %sw.epilog21

sw.default14:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 8
  %add.ptr16 = getelementptr i8, ptr %26, i32 20
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16) #7, !srcloc !134
  %and18 = and i32 %27, -64
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 8
  %add.ptr20 = getelementptr i8, ptr %29, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %and18) #7, !srcloc !133
  br label %cleanup

sw.epilog21:                                      ; preds = %sw.bb12, %sw.epilog.sw.epilog21_crit_edge
  %word.2 = phi i32 [ %and13, %sw.bb12 ], [ %word.1, %sw.epilog.sw.epilog21_crit_edge ]
  %or22 = or i32 %word.2, 4
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 8
  %add.ptr24 = getelementptr i8, ptr %31, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24, i32 %or22) #7, !srcloc !133
  %32 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs, align 8
  %add.ptr26 = getelementptr i8, ptr %33, i32 92
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !134
  %or28 = or i32 %34, 8
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 8
  %add.ptr30 = getelementptr i8, ptr %36, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %or28) #7, !srcloc !133
  %rate = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 14
  %37 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 48000, i32 %38)
  %cmp31.not = icmp eq i32 %38, 48000
  %39 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs, align 8
  %add.ptr41 = getelementptr i8, ptr %40, i32 8
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr41) #7
  br i1 %cmp31.not, label %if.else39, label %if.then32

if.then32:                                        ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  %or36 = or i32 %41, 4
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 8
  %add.ptr38 = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %or36) #7, !srcloc !133
  br label %if.end46

if.else39:                                        ; preds = %sw.epilog21
  call void @__sanitizer_cov_trace_pc() #9
  %and43 = and i32 %41, -5
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 8
  %add.ptr45 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 %and43) #7, !srcloc !133
  br label %if.end46

if.end46:                                         ; preds = %if.else39, %if.then32
  %ac97 = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %ac97 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ac97, align 8
  %48 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %rate, align 4
  %call48 = tail call i32 @snd_ac97_set_rate(ptr noundef %47, i32 noundef 44, i32 noundef %49) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool.not = icmp eq i32 %call48, 0
  br i1 %tobool.not, label %if.end46.do.body58_crit_edge, label %do.body

if.end46.do.body58_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body58

do.body:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @atmel_ac97c_playback_prepare.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@atmel_ac97c_playback_prepare, %if.then54)) #7
          to label %do.body58 [label %if.then54], !srcloc !132

if.then54:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %pdev = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 1
  %50 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %rate, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @atmel_ac97c_playback_prepare.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %53) #7
  br label %do.body58

do.body58:                                        ; preds = %if.then54, %do.body, %if.end46.do.body58_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  tail call void @arm_heavy_mb() #7
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %54 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_addr, align 8
  %56 = tail call i32 @llvm.bswap.i32(i32 %55)
  %57 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %regs, align 8
  %add.ptr62 = getelementptr i8, ptr %58, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr62, i32 %56) #7, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !148
  tail call void @arm_heavy_mb() #7
  %div131132 = lshr i32 %mul.i, 4
  %59 = tail call i32 @llvm.bswap.i32(i32 %div131132)
  %60 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %regs, align 8
  %add.ptr67 = getelementptr i8, ptr %61, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %59) #7, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !149
  tail call void @arm_heavy_mb() #7
  %62 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_addr, align 8
  %add = add i32 %63, %div1.i
  %64 = tail call i32 @llvm.bswap.i32(i32 %add)
  %65 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs, align 8
  %add.ptr73 = getelementptr i8, ptr %66, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr73, i32 %64) #7, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !150
  tail call void @arm_heavy_mb() #7
  %67 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs, align 8
  %add.ptr79 = getelementptr i8, ptr %68, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 %59) #7, !srcloc !133
  br label %cleanup

cleanup:                                          ; preds = %do.body58, %sw.default14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.default14 ], [ %call48, %do.body58 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_playback_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %regs = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %3, i32 44
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !134
  %5 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 4, label %entry.sw.bb_crit_edge
    i32 6, label %entry.sw.bb_crit_edge15
    i32 1, label %entry.sw.bb_crit_edge16
    i32 3, label %entry.sw.bb1_crit_edge
    i32 5, label %entry.sw.bb1_crit_edge17
    i32 0, label %entry.sw.bb1_crit_edge18
  ]

entry.sw.bb1_crit_edge18:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge17:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb1_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1

entry.sw.bb_crit_edge16:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge15:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.sw.bb_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry.sw.bb_crit_edge, %entry.sw.bb_crit_edge15, %entry.sw.bb_crit_edge16
  %or = or i32 %4, 2098176
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry.sw.bb1_crit_edge, %entry.sw.bb1_crit_edge17, %entry.sw.bb1_crit_edge18
  %opened = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 15
  %6 = ptrtoint ptr %opened to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %opened, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp slt i32 %7, 2
  %and = and i32 %4, -2097153
  %spec.select = select i1 %cmp, i32 %and, i32 %4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb
  %camr.0 = phi i32 [ %or, %sw.bb ], [ %spec.select, %sw.bb1 ]
  %ptcr.0 = phi i32 [ 65536, %sw.bb ], [ 131072, %sw.bb1 ]
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 8
  %add.ptr4 = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %camr.0) #7, !srcloc !133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !151
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 8
  %add.ptr6 = getelementptr i8, ptr %11, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %ptcr.0) #7, !srcloc !133
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_playback_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %regs = getelementptr inbounds %struct.atmel_ac97c, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 8
  %add.ptr = getelementptr i8, ptr %5, i32 264
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !134
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !152
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %8 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_addr, align 8
  %sub = sub i32 %7, %9
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %10 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %11
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %12 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %13)
  %cmp.not = icmp ult i32 %div.i, %13
  %sub5 = select i1 %cmp.not, i32 0, i32 %13
  %spec.select = sub i32 %div.i, %sub5
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_suspend(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  tail call void @clk_disable(ptr noundef %5) #7
  tail call void @clk_unprepare(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_ac97c_resume(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.clk_prepare_enable.exit_crit_edge

entry.clk_prepare_enable.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %5) #7
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %entry.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i, %entry.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ], [ 0, %if.end.i.clk_prepare_enable.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !24, !25, !27, !29, !30, !32, !33, !35, !37, !38, !40, !41, !43, !45, !47, !48, !50, !52, !53, !55, !56, !58, !59, !61, !62, !64, !65, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !103, !105, !107, !108, !109, !111, !112, !113, !115, !117, !118, !120}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__initcall__kmod_snd_atmel_ac97c__254_874_atmel_ac97c_driver_init6, !1, !"__initcall__kmod_snd_atmel_ac97c__254_874_atmel_ac97c_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/atmel/ac97c.c", i32 874, i32 1}
!2 = !{ptr @__exitcall_atmel_ac97c_driver_exit, !1, !"__exitcall_atmel_ac97c_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file255, !4, !"__UNIQUE_ID_file255", i1 false, i1 false}
!4 = !{!"../sound/atmel/ac97c.c", i32 876, i32 1}
!5 = !{ptr @__UNIQUE_ID_license256, !4, !"__UNIQUE_ID_license256", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description257, !7, !"__UNIQUE_ID_description257", i1 false, i1 false}
!7 = !{!"../sound/atmel/ac97c.c", i32 877, i32 1}
!8 = !{ptr @__UNIQUE_ID_author258, !9, !"__UNIQUE_ID_author258", i1 false, i1 false}
!9 = !{!"../sound/atmel/ac97c.c", i32 878, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/atmel/ac97c.c", i32 869, i32 11}
!12 = !{ptr @atmel_ac97c_driver, !13, !"atmel_ac97c_driver", i1 false, i1 false}
!13 = !{!"../sound/atmel/ac97c.c", i32 865, i32 31}
!14 = !{ptr @atmel_ac97c_probe.ops, !15, !"ops", i1 false, i1 false}
!15 = !{!"../sound/atmel/ac97c.c", i32 705, i32 39}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/atmel/ac97c.c", i32 714, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug243, !17, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/atmel/ac97c.c", i32 720, i32 3}
!24 = !{ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug244, !23, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/atmel/ac97c.c", i32 724, i32 29}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/atmel/ac97c.c", i32 726, i32 3}
!29 = !{ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug245, !28, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/atmel/ac97c.c", i32 737, i32 3}
!32 = !{ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug246, !31, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/atmel/ac97c.c", i32 743, i32 54}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/atmel/ac97c.c", i32 745, i32 3}
!37 = !{ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug247, !36, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!38 = !{ptr @atmel_ac97c_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../sound/atmel/ac97c.c", i32 750, i32 2}
!40 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/atmel/ac97c.c", i32 752, i32 23}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/atmel/ac97c.c", i32 754, i32 26}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/atmel/ac97c.c", i32 762, i32 3}
!47 = !{ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug248, !46, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/atmel/ac97c.c", i32 767, i32 46}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/atmel/ac97c.c", i32 769, i32 3}
!52 = !{ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug249, !51, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!53 = !{ptr @.str.17, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/atmel/ac97c.c", i32 779, i32 3}
!55 = !{ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug250, !54, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/atmel/ac97c.c", i32 785, i32 3}
!58 = !{ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug251, !57, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/atmel/ac97c.c", i32 791, i32 3}
!61 = !{ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug252, !60, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/atmel/ac97c.c", i32 797, i32 3}
!64 = !{ptr @atmel_ac97c_probe.__UNIQUE_ID_ddebug253, !63, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/atmel/ac97c.c", i32 803, i32 2}
!67 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.23, !66, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @atmel_ac97c_probe._entry, !66, !"_entry", i1 false, i1 false}
!70 = !{ptr @atmel_ac97c_probe._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/atmel/ac97c.c", i32 624, i32 2}
!73 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @atmel_ac97c_write.__UNIQUE_ID_ddebug241, !72, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!75 = !{ptr @.str.26, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/atmel/ac97c.c", i32 669, i32 2}
!77 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @atmel_ac97c_read.__UNIQUE_ID_ddebug242, !76, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!79 = !{ptr @.str.28, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/atmel/ac97c.c", i32 477, i32 3}
!81 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @atmel_ac97c_interrupt.__UNIQUE_ID_ddebug240, !80, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!83 = !{ptr @.str.30, !80, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @.str.33, !80, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.36, !80, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/atmel/ac97c.c", i32 523, i32 3}
!92 = !{ptr @atmel_ac97c_interrupt._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @atmel_ac97c_interrupt._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/atmel/ac97c.c", i32 533, i32 3}
!96 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @atmel_ac97c_interrupt._entry.38, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @atmel_ac97c_interrupt._entry_ptr.41, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @atmel_ac97c_hw, !100, !"atmel_ac97c_hw", i1 false, i1 false}
!100 = !{!"../sound/atmel/ac97c.c", i32 64, i32 38}
!101 = !{ptr @at91_ac97_pcm_defs, !102, !"at91_ac97_pcm_defs", i1 false, i1 false}
!102 = !{!"../sound/atmel/ac97c.c", i32 540, i32 30}
!103 = !{ptr @atmel_ac97_capture_ops, !104, !"atmel_ac97_capture_ops", i1 false, i1 false}
!104 = !{!"../sound/atmel/ac97c.c", i32 456, i32 33}
!105 = !{ptr @.str.42, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/atmel/ac97c.c", i32 33, i32 8}
!107 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @opened_mutex, !106, !"opened_mutex", i1 false, i1 false}
!109 = !{ptr @.str.44, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../sound/atmel/ac97c.c", i32 338, i32 3}
!111 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @atmel_ac97c_capture_prepare.__UNIQUE_ID_ddebug239, !110, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!113 = !{ptr @atmel_ac97_playback_ops, !114, !"atmel_ac97_playback_ops", i1 false, i1 false}
!114 = !{!"../sound/atmel/ac97c.c", i32 447, i32 33}
!115 = !{ptr @.str.46, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/atmel/ac97c.c", i32 256, i32 3}
!117 = !{ptr @atmel_ac97c_playback_prepare.__UNIQUE_ID_ddebug238, !116, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!118 = !{ptr @atmel_ac97c_dt_ids, !119, !"atmel_ac97c_dt_ids", i1 false, i1 false}
!119 = !{!"../sound/atmel/ac97c.c", i32 692, i32 34}
!120 = !{ptr @atmel_ac97c_pm, !121, !"atmel_ac97c_pm", i1 false, i1 false}
!121 = !{!"../sound/atmel/ac97c.c", i32 840, i32 8}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"auto-init"}
!132 = !{i64 2148742342, i64 2148742347, i64 2148742360, i64 2148742404, i64 2148742438, i64 2148742459}
!133 = !{i64 4946041}
!134 = !{i64 4946459}
!135 = !{i64 2154576474}
!136 = !{i64 2154576951}
!137 = !{i64 2154577414}
!138 = !{i64 2154577891}
!139 = !{i32 0, i32 33}
!140 = !{i64 2154567858}
!141 = !{i64 2154568308}
!142 = !{i64 2154568765}
!143 = !{i64 2154569254}
!144 = !{i64 2154570747}
!145 = !{i64 2154571124}
!146 = !{i64 2154572371}
!147 = !{i64 2154561865}
!148 = !{i64 2154562315}
!149 = !{i64 2154562772}
!150 = !{i64 2154563261}
!151 = !{i64 2154569956}
!152 = !{i64 2154571837}
