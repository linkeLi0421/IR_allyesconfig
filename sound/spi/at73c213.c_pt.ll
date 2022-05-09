; ModuleID = '/llk/IR_all_yes/sound/spi/at73c213.c_pt.bc'
source_filename = "../sound/spi/at73c213.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_pcm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_pcm_hardware = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.83, i32 }
%union.anon.83 = type { ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.at73c213_board_info = type { i32, ptr, [32 x i8] }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_at73c213 = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, [2 x i8], [2 x i8], [18 x i8], %struct.spinlock, %struct.mutex }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_delay = type { i16, i8 }
%struct.ssc_device = type { %struct.list_head, i32, ptr, ptr, ptr, ptr, i32, i32, i8, i8 }
%struct.snd_pcm = type { ptr, %struct.list_head, i32, i32, i16, i16, [64 x i8], [80 x i8], [2 x %struct.snd_pcm_str], %struct.mutex, %struct.wait_queue_head, ptr, ptr, i8, i8, i8, %struct.snd_pcm_oss }
%struct.snd_pcm_str = type { i32, ptr, i32, i32, ptr, %struct.snd_pcm_oss_stream, ptr, i32, ptr, %struct.device }
%struct.snd_pcm_oss_stream = type { ptr, %struct.mutex, ptr }
%struct.snd_pcm_oss = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
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
%struct.snd_pcm_hw_params = type { i32, [3 x %struct.snd_mask], [5 x %struct.snd_mask], [12 x %struct.snd_interval], [9 x %struct.snd_interval], i32, i32, i32, i32, i32, i32, i32, [64 x i8] }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.81, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.81 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.72, [64 x i8] }
%union.anon.72 = type { %struct.anon.75, [40 x i8] }
%struct.anon.75 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.76, [128 x i8] }
%union.anon.76 = type { %union.anon.78 }
%union.anon.78 = type { [64 x i64] }

@__initcall__kmod_snd_at73c213__248_1116_at73c213_driver_init6 = internal global ptr @at73c213_driver_init, section ".initcall6.init", align 4
@at73c213_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @snd_at73c213_probe, ptr @snd_at73c213_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at73c213_pm_ops, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_at73c213_driver_exit = internal global ptr @at73c213_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author249 = internal constant [66 x i8] c"snd_at73c213.author=Hans-Christian Egtvedt <egtvedt@samfundet.no>\00", section ".modinfo", align 1
@__UNIQUE_ID_description250 = internal constant [66 x i8] c"snd_at73c213.description=Sound driver for AT73C213 with Atmel SSC\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [41 x i8] c"snd_at73c213.file=sound/spi/snd-at73c213\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [25 x i8] c"snd_at73c213.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"at73c213\00", [23 x i8] zeroinitializer }, align 32
@at73c213_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @snd_at73c213_suspend, ptr @snd_at73c213_resume, ptr @snd_at73c213_suspend, ptr @snd_at73c213_resume, ptr @snd_at73c213_suspend, ptr @snd_at73c213_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@snd_at73c213_probe.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"snd_at73c213\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"snd_at73c213_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sound/spi/at73c213.c\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no platform_data\0A\00", [46 x i8] zeroinitializer }, align 32
@snd_at73c213_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 -18, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"no DAC clk\0A\00", [20 x i8] zeroinitializer }, align 32
@snd_at73c213_probe.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, i8 0, i8 -17, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"at73c213_%d\00", [20 x i8] zeroinitializer }, align 32
@snd_at73c213_probe.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -13, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"could not get ssc%d device\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s on irq %d\00", [19 x i8] zeroinitializer }, align 32
@snd_at73c213_dev_init.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @snd_at73c213_dev_free, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@snd_at73c213_dev_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&chip->lock\00", [20 x i8] zeroinitializer }, align 32
@snd_at73c213_dev_init.__key.10 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&chip->mixer_lock\00", [46 x i8] zeroinitializer }, align 32
@snd_at73c213_dev_init.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.12, ptr @.str.3, ptr @.str.13, i8 0, i8 -32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_at73c213_dev_init\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unable to request irq %d\0A\00", [38 x i8] zeroinitializer }, align 32
@snd_at73c213_original_image = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\00\05\05\08\08\00\00\22\09\00\00\00\00\05\00\00\00\00", [46 x i8] zeroinitializer }, align 32
@snd_at73c213_set_bitrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 200, ptr @.str.16, ptr @.str.17 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"at73c213: supported bitrate is %lu (%lu divider)\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_at73c213_set_bitrate\00", [39 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_at73c213_set_bitrate._entry_ptr = internal global ptr @snd_at73c213_set_bitrate._entry, section ".printk_index", align 4
@at73c213_playback_ops = internal constant { %struct.snd_pcm_ops, [32 x i8] } { %struct.snd_pcm_ops { ptr @snd_at73c213_pcm_open, ptr @snd_at73c213_pcm_close, ptr null, ptr @snd_at73c213_pcm_hw_params, ptr null, ptr @snd_at73c213_pcm_prepare, ptr @snd_at73c213_pcm_trigger, ptr null, ptr @snd_at73c213_pcm_pointer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_at73c213_playback_hw = internal global { %struct.snd_pcm_hardware, [32 x i8] } { %struct.snd_pcm_hardware { i32 65792, i64 8, i32 1073741824, i32 8000, i32 50000, i32 1, i32 2, i32 65535, i32 512, i32 65535, i32 4, i32 1024, i32 0 }, [32 x i8] zeroinitializer }, align 32
@snd_at73c213_pcm_trigger.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_at73c213_pcm_trigger\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"spurious command %x\0A\00", [43 x i8] zeroinitializer }, align 32
@snd_at73c213_controls = internal constant { [12 x %struct.snd_kcontrol_new], [128 x i8] } { [12 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_at73c213_stereo_info, ptr @snd_at73c213_stereo_get, ptr @snd_at73c213_stereo_put, %union.anon.83 zeroinitializer, i32 524289027 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_at73c213_stereo_info, ptr @snd_at73c213_stereo_get, ptr @snd_at73c213_stereo_put, %union.anon.83 zeroinitializer, i32 23921667 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 0, i32 0, ptr @snd_at73c213_stereo_info, ptr @snd_at73c213_stereo_get, ptr @snd_at73c213_stereo_put, %union.anon.83 zeroinitializer, i32 524289541 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_at73c213_stereo_info, ptr @snd_at73c213_stereo_get, ptr @snd_at73c213_stereo_put, %union.anon.83 zeroinitializer, i32 23922181 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_at73c213_mono_switch_get, ptr @snd_at73c213_mono_switch_put, %union.anon.83 zeroinitializer, i32 67328 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_at73c213_pa_volume_info, ptr @snd_at73c213_mono_get, ptr @snd_at73c213_mono_put, %union.anon.83 zeroinitializer, i32 17760273 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_at73c213_mono_switch_get, ptr @snd_at73c213_mono_switch_put, %union.anon.83 zeroinitializer, i32 16843793 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_at73c213_mono_switch_get, ptr @snd_at73c213_mono_switch_put, %union.anon.83 zeroinitializer, i32 67089 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_at73c213_aux_capture_volume_info, ptr @snd_at73c213_mono_get, ptr @snd_at73c213_mono_put, %union.anon.83 zeroinitializer, i32 18808845 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_at73c213_mono_switch_get, ptr @snd_at73c213_mono_switch_put, %union.anon.83 zeroinitializer, i32 67072 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_at73c213_line_capture_volume_info, ptr @snd_at73c213_stereo_get, ptr @snd_at73c213_stereo_put, %union.anon.83 zeroinitializer, i32 524288513 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_ctl_boolean_mono_info, ptr @snd_at73c213_mono_switch_get, ptr @snd_at73c213_mono_switch_put, %union.anon.83 zeroinitializer, i32 196608 }], [128 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Mono PA Playback Switch\00", [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PA Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"PA High Gain Playback Switch\00", [35 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PA Playback Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Aux Capture Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Aux Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Volume\00", [44 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Line Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.32 = private unnamed_addr constant [16 x i8] c"at73c213_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1107, i32 26 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1109, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"at73c213_pm_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 1099, i32 8 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 947, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 952, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 962, i32 26 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 974, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 986, i32 26 }
@___asan_gen_.65 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 877, i32 37 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 887, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 888, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 896, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant [28 x i8] c"snd_at73c213_original_image\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 39, i32 17 }
@___asan_gen_.89 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 198, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant [22 x i8] c"at73c213_playback_ops\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 316, i32 33 }
@___asan_gen_.107 = private unnamed_addr constant [25 x i8] c"snd_at73c213_playback_hw\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 110, i32 32 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 288, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [22 x i8] c"snd_at73c213_controls\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 660, i32 38 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 661, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 662, i32 1 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 663, i32 1 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 664, i32 1 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 665, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 669, i32 10 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 677, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 679, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 682, i32 10 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 689, i32 1 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 693, i32 10 }
@___asan_gen_.152 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.153 = private constant [24 x i8] c"../sound/spi/at73c213.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 701, i32 1 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__UNIQUE_ID_author249, ptr @__UNIQUE_ID_description250, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_at73c213_driver_exit, ptr @__initcall__kmod_snd_at73c213__248_1116_at73c213_driver_init6, ptr @at73c213_driver_exit, ptr @snd_at73c213_set_bitrate._entry, ptr @snd_at73c213_set_bitrate._entry_ptr, ptr @at73c213_driver, ptr @.str, ptr @at73c213_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_at73c213_dev_init.ops, ptr @snd_at73c213_dev_init.__key, ptr @.str.9, ptr @snd_at73c213_dev_init.__key.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @snd_at73c213_original_image, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @at73c213_playback_ops, ptr @snd_at73c213_playback_hw, ptr @.str.18, ptr @.str.19, ptr @snd_at73c213_controls, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [41 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at73c213_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at73c213_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_at73c213_dev_init.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_at73c213_dev_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_at73c213_dev_init.__key.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_at73c213_original_image to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_at73c213_set_bitrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at73c213_playback_ops to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_at73c213_playback_hw to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_at73c213_controls to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at73c213_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @at73c213_driver) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at73c213_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @at73c213_driver, i32 0, i32 4)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_probe(ptr noundef %spi) #2 align 64 {
entry:
  %card = alloca ptr, align 4
  %id = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card) #9
  %0 = ptrtoint ptr %card to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %card, align 4, !annotation !98
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %id) #9
  %platform_data = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 7
  %1 = call ptr @memset(ptr %id, i32 255, i32 16)
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_at73c213_probe.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_at73c213_probe, %if.then5)) #9
          to label %cleanup [label %if.then5], !srcloc !99

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_at73c213_probe.__UNIQUE_ID_ddebug244, ptr noundef %spi, ptr noundef nonnull @.str.4) #9
  br label %cleanup

if.end7:                                          ; preds = %entry
  %dac_clk = getelementptr inbounds %struct.at73c213_board_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dac_clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dac_clk, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %do.body10, label %if.end27

do.body10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_at73c213_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_at73c213_probe, %if.then22)) #9
          to label %cleanup [label %if.then22], !srcloc !99

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_at73c213_probe.__UNIQUE_ID_ddebug245, ptr noundef %spi, ptr noundef nonnull @.str.5) #9
  br label %cleanup

if.end27:                                         ; preds = %if.end7
  %cmp.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body31, label %if.end50

do.body31:                                        ; preds = %if.end27
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_at73c213_probe.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_at73c213_probe, %if.then43)) #9
          to label %do.end47 [label %if.then43], !srcloc !99

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_at73c213_probe.__UNIQUE_ID_ddebug246, ptr noundef %spi, ptr noundef nonnull @.str.5) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then43, %do.body31
  %6 = ptrtoint ptr %dac_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dac_clk, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end50:                                         ; preds = %if.end27
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %3, align 4
  %call51 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %id, i32 noundef 16, ptr noundef nonnull @.str.6, i32 noundef %10)
  %call54 = call i32 @snd_card_new(ptr noundef %spi, i32 noundef -1, ptr noundef nonnull %id, ptr noundef null, i32 noundef 196, ptr noundef nonnull %card) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp = icmp slt i32 %call54, 0
  br i1 %cmp, label %if.end50.cleanup_crit_edge, label %if.end56

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end56:                                         ; preds = %if.end50
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %12, i32 0, i32 9
  %13 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %private_data, align 8
  %spi57 = getelementptr inbounds %struct.snd_at73c213, ptr %14, i32 0, i32 8
  %15 = ptrtoint ptr %spi57 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %spi, ptr %spi57, align 4
  %board58 = getelementptr inbounds %struct.snd_at73c213, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %board58 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %3, ptr %board58, align 4
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %3, align 4
  %call60 = call ptr @ssc_request(i32 noundef %18) #9
  %ssc = getelementptr inbounds %struct.snd_at73c213, ptr %14, i32 0, i32 7
  %19 = ptrtoint ptr %ssc to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call60, ptr %ssc, align 4
  %cmp.i145 = icmp ugt ptr %call60, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %do.body64, label %if.end84

do.body64:                                        ; preds = %if.end56
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_at73c213_probe.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_at73c213_probe, %if.then76)) #9
          to label %do.end81 [label %if.then76], !srcloc !99

if.then76:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %3, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_at73c213_probe.__UNIQUE_ID_ddebug247, ptr noundef %spi, ptr noundef nonnull @.str.7, i32 noundef %21) #9
  br label %do.end81

do.end81:                                         ; preds = %if.then76, %do.body64
  %22 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ssc, align 4
  %24 = ptrtoint ptr %23 to i32
  br label %out_card

if.end84:                                         ; preds = %if.end56
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %call85 = call fastcc i32 @snd_at73c213_dev_init(ptr noundef %26)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end84.out_ssc_crit_edge

if.end84.out_ssc_crit_edge:                       ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ssc

if.end88:                                         ; preds = %if.end84
  %27 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %card, align 4
  %driver = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 2
  %29 = call ptr @memcpy(ptr %driver, ptr @.str, i32 9)
  %shortname = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 3
  %shortname92 = getelementptr inbounds %struct.at73c213_board_info, ptr %3, i32 0, i32 2
  %call94 = call ptr @strcpy(ptr noundef %shortname, ptr noundef %shortname92) #12
  %longname = getelementptr inbounds %struct.snd_card, ptr %28, i32 0, i32 4
  %irq = getelementptr inbounds %struct.snd_at73c213, ptr %14, i32 0, i32 4
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %irq, align 4
  %call98 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %longname, ptr noundef nonnull @.str.8, ptr noundef %shortname, i32 noundef %31)
  %32 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card, align 4
  %call99 = call i32 @snd_card_register(ptr noundef %33) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call99)
  %tobool100.not = icmp eq i32 %call99, 0
  br i1 %tobool100.not, label %if.end102, label %if.end88.out_ssc_crit_edge

if.end88.out_ssc_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_ssc

if.end102:                                        ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %36 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %35, ptr %driver_data.i, align 4
  br label %cleanup

out_ssc:                                          ; preds = %if.end88.out_ssc_crit_edge, %if.end84.out_ssc_crit_edge
  %retval1.0 = phi i32 [ %call85, %if.end84.out_ssc_crit_edge ], [ %call99, %if.end88.out_ssc_crit_edge ]
  %37 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ssc, align 4
  call void @ssc_free(ptr noundef %38) #9
  br label %out_card

out_card:                                         ; preds = %out_ssc, %do.end81
  %retval1.1 = phi i32 [ %24, %do.end81 ], [ %retval1.0, %out_ssc ]
  %39 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %card, align 4
  %call105 = call i32 @snd_card_free(ptr noundef %40) #9
  br label %cleanup

cleanup:                                          ; preds = %out_card, %if.end102, %if.end50.cleanup_crit_edge, %do.end47, %if.then22, %do.body10, %if.then5, %do.body
  %retval.0 = phi i32 [ %8, %do.end47 ], [ -6, %if.then5 ], [ -6, %if.then22 ], [ %call54, %if.end50.cleanup_crit_edge ], [ %retval1.1, %out_card ], [ 0, %if.end102 ], [ -6, %do.body ], [ -6, %do.body10 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %id) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  %msg.i122 = alloca %struct.spi_message, align 4
  %msg_xfer.i123 = alloca %struct.spi_transfer, align 4
  %msg.i102 = alloca %struct.spi_message, align 4
  %msg_xfer.i103 = alloca %struct.spi_transfer, align 4
  %msg.i82 = alloca %struct.spi_message, align 4
  %msg_xfer.i83 = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %msg_xfer.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %ssc = getelementptr inbounds %struct.snd_at73c213, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ssc, align 4
  %clk = getelementptr inbounds %struct.ssc_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %7) #9
  %8 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 512) #9, !srcloc !100
  %12 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ssc, align 4
  %clk5 = getelementptr inbounds %struct.ssc_device, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %clk5 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk5, align 4
  tail call void @clk_disable(ptr noundef %15) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %msg_xfer.i) #9
  %16 = getelementptr inbounds i8, ptr %msg_xfer.i, i32 12
  %17 = call ptr @memset(ptr %16, i32 0, i32 84)
  %18 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %msg_xfer.i, i32 0, i32 2
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %18, align 4
  %20 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %21 = call ptr @memset(ptr %20, i32 0, i32 40)
  %22 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %24 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %25 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %spi_wbuffer.i = getelementptr inbounds %struct.snd_at73c213, ptr %3, i32 0, i32 9
  %26 = ptrtoint ptr %spi_wbuffer.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 3, ptr %spi_wbuffer.i, align 4
  %arrayidx3.i = getelementptr %struct.snd_at73c213, ptr %3, i32 0, i32 9, i32 1
  %27 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 63, ptr %arrayidx3.i, align 1
  %28 = ptrtoint ptr %msg_xfer.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %spi_wbuffer.i, ptr %msg_xfer.i, align 4
  %spi_rbuffer.i = getelementptr inbounds %struct.snd_at73c213, ptr %3, i32 0, i32 10
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i, i32 0, i32 1
  %29 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %spi_rbuffer.i, ptr %rx_buf.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %31 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i, i32 0, i32 18, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %33 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %spi.i = getelementptr inbounds %struct.snd_at73c213, ptr %3, i32 0, i32 8
  %34 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %35, ptr noundef nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %snd_at73c213_write_reg.exit

snd_at73c213_write_reg.exit:                      ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #9
  br label %out

if.end:                                           ; preds = %spi_message_add_tail.exit.i
  %arrayidx6.i = getelementptr %struct.snd_at73c213, ptr %3, i32 0, i32 11, i32 3
  %36 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 63, ptr %arrayidx6.i, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i82) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %msg_xfer.i83) #9
  %37 = getelementptr inbounds i8, ptr %msg_xfer.i83, i32 12
  %38 = call ptr @memset(ptr %37, i32 0, i32 84)
  %39 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %msg_xfer.i83, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2, ptr %39, align 4
  %41 = getelementptr inbounds i8, ptr %msg.i82, i32 8
  %42 = call ptr @memset(ptr %41, i32 0, i32 40)
  %43 = ptrtoint ptr %msg.i82 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %msg.i82, ptr %msg.i82, align 4
  %prev.i.i.i.i84 = getelementptr inbounds %struct.list_head, ptr %msg.i82, i32 0, i32 1
  %44 = ptrtoint ptr %prev.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %msg.i82, ptr %prev.i.i.i.i84, align 4
  %resources.i.i.i85 = getelementptr inbounds %struct.spi_message, ptr %msg.i82, i32 0, i32 10
  %45 = ptrtoint ptr %resources.i.i.i85 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %resources.i.i.i85, ptr %resources.i.i.i85, align 4
  %prev.i2.i.i.i86 = getelementptr inbounds %struct.spi_message, ptr %msg.i82, i32 0, i32 10, i32 1
  %46 = ptrtoint ptr %prev.i2.i.i.i86 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %resources.i.i.i85, ptr %prev.i2.i.i.i86, align 4
  %47 = ptrtoint ptr %spi_wbuffer.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 4, ptr %spi_wbuffer.i, align 4
  %48 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 63, ptr %arrayidx3.i, align 1
  %49 = ptrtoint ptr %msg_xfer.i83 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %spi_wbuffer.i, ptr %msg_xfer.i83, align 4
  %rx_buf.i90 = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i83, i32 0, i32 1
  %50 = ptrtoint ptr %rx_buf.i90 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %spi_rbuffer.i, ptr %rx_buf.i90, align 4
  %transfer_list.i.i91 = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i83, i32 0, i32 18
  %call.i.i.i.i92 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i91, ptr noundef nonnull %msg.i82, ptr noundef nonnull %msg.i82) #9
  br i1 %call.i.i.i.i92, label %if.end.i.i.i.i94, label %if.end.spi_message_add_tail.exit.i98_crit_edge

if.end.spi_message_add_tail.exit.i98_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i98

if.end.i.i.i.i94:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %51 = ptrtoint ptr %prev.i.i.i.i84 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %transfer_list.i.i91, ptr %prev.i.i.i.i84, align 4
  %52 = ptrtoint ptr %transfer_list.i.i91 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %msg.i82, ptr %transfer_list.i.i91, align 4
  %prev3.i.i.i.i93 = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i83, i32 0, i32 18, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i.i93 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %msg.i82, ptr %prev3.i.i.i.i93, align 4
  %54 = ptrtoint ptr %msg.i82 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %transfer_list.i.i91, ptr %msg.i82, align 4
  br label %spi_message_add_tail.exit.i98

spi_message_add_tail.exit.i98:                    ; preds = %if.end.i.i.i.i94, %if.end.spi_message_add_tail.exit.i98_crit_edge
  %55 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %spi.i, align 4
  %call.i96 = call i32 @spi_sync(ptr noundef %56, ptr noundef nonnull %msg.i82) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool.not.i97 = icmp eq i32 %call.i96, 0
  br i1 %tobool.not.i97, label %if.end10, label %snd_at73c213_write_reg.exit101

snd_at73c213_write_reg.exit101:                   ; preds = %spi_message_add_tail.exit.i98
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i83) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i82) #9
  br label %out

if.end10:                                         ; preds = %spi_message_add_tail.exit.i98
  %arrayidx6.i99 = getelementptr %struct.snd_at73c213, ptr %3, i32 0, i32 11, i32 4
  %57 = ptrtoint ptr %arrayidx6.i99 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 63, ptr %arrayidx6.i99, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i83) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i82) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i102) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %msg_xfer.i103) #9
  %58 = getelementptr inbounds i8, ptr %msg_xfer.i103, i32 12
  %59 = call ptr @memset(ptr %58, i32 0, i32 84)
  %60 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %msg_xfer.i103, i32 0, i32 2
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 2, ptr %60, align 4
  %62 = getelementptr inbounds i8, ptr %msg.i102, i32 8
  %63 = call ptr @memset(ptr %62, i32 0, i32 40)
  %64 = ptrtoint ptr %msg.i102 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %msg.i102, ptr %msg.i102, align 4
  %prev.i.i.i.i104 = getelementptr inbounds %struct.list_head, ptr %msg.i102, i32 0, i32 1
  %65 = ptrtoint ptr %prev.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %msg.i102, ptr %prev.i.i.i.i104, align 4
  %resources.i.i.i105 = getelementptr inbounds %struct.spi_message, ptr %msg.i102, i32 0, i32 10
  %66 = ptrtoint ptr %resources.i.i.i105 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %resources.i.i.i105, ptr %resources.i.i.i105, align 4
  %prev.i2.i.i.i106 = getelementptr inbounds %struct.spi_message, ptr %msg.i102, i32 0, i32 10, i32 1
  %67 = ptrtoint ptr %prev.i2.i.i.i106 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %resources.i.i.i105, ptr %prev.i2.i.i.i106, align 4
  %68 = ptrtoint ptr %spi_wbuffer.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 5, ptr %spi_wbuffer.i, align 4
  %69 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 63, ptr %arrayidx3.i, align 1
  %70 = ptrtoint ptr %msg_xfer.i103 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %spi_wbuffer.i, ptr %msg_xfer.i103, align 4
  %rx_buf.i110 = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i103, i32 0, i32 1
  %71 = ptrtoint ptr %rx_buf.i110 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %spi_rbuffer.i, ptr %rx_buf.i110, align 4
  %transfer_list.i.i111 = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i103, i32 0, i32 18
  %call.i.i.i.i112 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i111, ptr noundef nonnull %msg.i102, ptr noundef nonnull %msg.i102) #9
  br i1 %call.i.i.i.i112, label %if.end.i.i.i.i114, label %if.end10.spi_message_add_tail.exit.i118_crit_edge

if.end10.spi_message_add_tail.exit.i118_crit_edge: ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i118

if.end.i.i.i.i114:                                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %72 = ptrtoint ptr %prev.i.i.i.i104 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %transfer_list.i.i111, ptr %prev.i.i.i.i104, align 4
  %73 = ptrtoint ptr %transfer_list.i.i111 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %msg.i102, ptr %transfer_list.i.i111, align 4
  %prev3.i.i.i.i113 = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i103, i32 0, i32 18, i32 1
  %74 = ptrtoint ptr %prev3.i.i.i.i113 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %msg.i102, ptr %prev3.i.i.i.i113, align 4
  %75 = ptrtoint ptr %msg.i102 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %transfer_list.i.i111, ptr %msg.i102, align 4
  br label %spi_message_add_tail.exit.i118

spi_message_add_tail.exit.i118:                   ; preds = %if.end.i.i.i.i114, %if.end10.spi_message_add_tail.exit.i118_crit_edge
  %76 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %spi.i, align 4
  %call.i116 = call i32 @spi_sync(ptr noundef %77, ptr noundef nonnull %msg.i102) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool.not.i117 = icmp eq i32 %call.i116, 0
  br i1 %tobool.not.i117, label %if.end14, label %snd_at73c213_write_reg.exit121

snd_at73c213_write_reg.exit121:                   ; preds = %spi_message_add_tail.exit.i118
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i103) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i102) #9
  br label %out

if.end14:                                         ; preds = %spi_message_add_tail.exit.i118
  %arrayidx6.i119 = getelementptr %struct.snd_at73c213, ptr %3, i32 0, i32 11, i32 5
  %78 = ptrtoint ptr %arrayidx6.i119 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 63, ptr %arrayidx6.i119, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i103) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i102) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i122) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %msg_xfer.i123) #9
  %79 = getelementptr inbounds i8, ptr %msg_xfer.i123, i32 12
  %80 = call ptr @memset(ptr %79, i32 0, i32 84)
  %81 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %msg_xfer.i123, i32 0, i32 2
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 2, ptr %81, align 4
  %83 = getelementptr inbounds i8, ptr %msg.i122, i32 8
  %84 = call ptr @memset(ptr %83, i32 0, i32 40)
  %85 = ptrtoint ptr %msg.i122 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %msg.i122, ptr %msg.i122, align 4
  %prev.i.i.i.i124 = getelementptr inbounds %struct.list_head, ptr %msg.i122, i32 0, i32 1
  %86 = ptrtoint ptr %prev.i.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %msg.i122, ptr %prev.i.i.i.i124, align 4
  %resources.i.i.i125 = getelementptr inbounds %struct.spi_message, ptr %msg.i122, i32 0, i32 10
  %87 = ptrtoint ptr %resources.i.i.i125 to i32
  call void @__asan_store4_noabort(i32 %87)
  store volatile ptr %resources.i.i.i125, ptr %resources.i.i.i125, align 4
  %prev.i2.i.i.i126 = getelementptr inbounds %struct.spi_message, ptr %msg.i122, i32 0, i32 10, i32 1
  %88 = ptrtoint ptr %prev.i2.i.i.i126 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %resources.i.i.i125, ptr %prev.i2.i.i.i126, align 4
  %89 = ptrtoint ptr %spi_wbuffer.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 6, ptr %spi_wbuffer.i, align 4
  %90 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 63, ptr %arrayidx3.i, align 1
  %91 = ptrtoint ptr %msg_xfer.i123 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %spi_wbuffer.i, ptr %msg_xfer.i123, align 4
  %rx_buf.i130 = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i123, i32 0, i32 1
  %92 = ptrtoint ptr %rx_buf.i130 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %spi_rbuffer.i, ptr %rx_buf.i130, align 4
  %transfer_list.i.i131 = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i123, i32 0, i32 18
  %call.i.i.i.i132 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i131, ptr noundef nonnull %msg.i122, ptr noundef nonnull %msg.i122) #9
  br i1 %call.i.i.i.i132, label %if.end.i.i.i.i134, label %if.end14.spi_message_add_tail.exit.i138_crit_edge

if.end14.spi_message_add_tail.exit.i138_crit_edge: ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i138

if.end.i.i.i.i134:                                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %93 = ptrtoint ptr %prev.i.i.i.i124 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %transfer_list.i.i131, ptr %prev.i.i.i.i124, align 4
  %94 = ptrtoint ptr %transfer_list.i.i131 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %msg.i122, ptr %transfer_list.i.i131, align 4
  %prev3.i.i.i.i133 = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i123, i32 0, i32 18, i32 1
  %95 = ptrtoint ptr %prev3.i.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %msg.i122, ptr %prev3.i.i.i.i133, align 4
  %96 = ptrtoint ptr %msg.i122 to i32
  call void @__asan_store4_noabort(i32 %96)
  store volatile ptr %transfer_list.i.i131, ptr %msg.i122, align 4
  br label %spi_message_add_tail.exit.i138

spi_message_add_tail.exit.i138:                   ; preds = %if.end.i.i.i.i134, %if.end14.spi_message_add_tail.exit.i138_crit_edge
  %97 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %spi.i, align 4
  %call.i136 = call i32 @spi_sync(ptr noundef %98, ptr noundef nonnull %msg.i122) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136)
  %tobool.not.i137 = icmp eq i32 %call.i136, 0
  br i1 %tobool.not.i137, label %if.end18, label %snd_at73c213_write_reg.exit141

snd_at73c213_write_reg.exit141:                   ; preds = %spi_message_add_tail.exit.i138
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i123) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i122) #9
  br label %out

if.end18:                                         ; preds = %spi_message_add_tail.exit.i138
  %arrayidx6.i139 = getelementptr %struct.snd_at73c213, ptr %3, i32 0, i32 11, i32 6
  %99 = ptrtoint ptr %arrayidx6.i139 to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 63, ptr %arrayidx6.i139, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i123) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i122) #9
  %call19 = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %3, i8 noundef zeroext 1, i8 noundef zeroext 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.out_crit_edge

if.end18.out_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end22:                                         ; preds = %if.end18
  %call23 = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %3, i8 noundef zeroext 2, i8 noundef zeroext 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.out_crit_edge

if.end22.out_crit_edge:                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end26:                                         ; preds = %if.end22
  %call27 = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %3, i8 noundef zeroext 13, i8 noundef zeroext 17)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.out_crit_edge

if.end26.out_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end30:                                         ; preds = %if.end26
  %arrayidx = getelementptr %struct.snd_at73c213, ptr %3, i32 0, i32 11, i32 17
  %100 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %arrayidx, align 1
  %102 = or i8 %101, 15
  %call32 = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %3, i8 noundef zeroext 17, i8 noundef zeroext %102)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.out_crit_edge

if.end30.out_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end35:                                         ; preds = %if.end30
  call void @msleep(i32 noundef 10) #9
  %call36 = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %3, i8 noundef zeroext 17, i8 noundef zeroext 31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.out_crit_edge

if.end35.out_crit_edge:                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end39:                                         ; preds = %if.end35
  %call40 = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.out_crit_edge

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end43:                                         ; preds = %if.end39
  call void @msleep(i32 noundef 2) #9
  %call44 = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %3, i8 noundef zeroext 0, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %if.end47, label %if.end43.out_crit_edge

if.end43.out_crit_edge:                           ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end47:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %call48 = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %3, i8 noundef zeroext 12, i8 noundef zeroext 0)
  br label %out

out:                                              ; preds = %if.end47, %if.end43.out_crit_edge, %if.end39.out_crit_edge, %if.end35.out_crit_edge, %if.end30.out_crit_edge, %if.end26.out_crit_edge, %if.end22.out_crit_edge, %if.end18.out_crit_edge, %snd_at73c213_write_reg.exit141, %snd_at73c213_write_reg.exit121, %snd_at73c213_write_reg.exit101, %snd_at73c213_write_reg.exit
  %board = getelementptr inbounds %struct.snd_at73c213, ptr %3, i32 0, i32 3
  %103 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %board, align 4
  %dac_clk = getelementptr inbounds %struct.at73c213_board_info, ptr %104, i32 0, i32 1
  %105 = ptrtoint ptr %dac_clk to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dac_clk, align 4
  call void @clk_disable(ptr noundef %106) #9
  %107 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %ssc, align 4
  call void @ssc_free(ptr noundef %108) #9
  %call53 = call i32 @snd_card_free(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ssc_request(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_at73c213_dev_init(ptr noundef %card) unnamed_addr #2 align 64 {
entry:
  %pcm.i = alloca ptr, align 4
  %msg.i122.i = alloca %struct.spi_message, align 4
  %msg_xfer.i123.i = alloca %struct.spi_transfer, align 4
  %msg.i102.i = alloca %struct.spi_message, align 4
  %msg_xfer.i103.i = alloca %struct.spi_transfer, align 4
  %msg.i.i = alloca %struct.spi_message, align 4
  %msg_xfer.i.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 9
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 8
  %ssc = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ssc, align 4
  %irq2 = getelementptr inbounds %struct.ssc_device, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp slt i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 12
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @snd_at73c213_dev_init.__key, i16 noundef signext 3) #9
  %mixer_lock = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %mixer_lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @snd_at73c213_dev_init.__key.10) #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %card, ptr %1, align 4
  %irq7 = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %irq7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %irq7, align 4
  %8 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ssc, align 4
  %clk = getelementptr inbounds %struct.ssc_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call9 = tail call i32 @clk_enable(ptr noundef %11) #9
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %5, ptr noundef nonnull @snd_at73c213_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end22, label %do.body12

do.body12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_at73c213_dev_init.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_at73c213_dev_init, %if.then17)) #9
          to label %out [label %if.then17], !srcloc !99

if.then17:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #11
  %spi18 = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %spi18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %spi18, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_at73c213_dev_init.__UNIQUE_ID_ddebug243, ptr noundef %13, ptr noundef nonnull @.str.13, i32 noundef %5) #9
  br label %out

if.end22:                                         ; preds = %do.body
  %14 = ptrtoint ptr %irq7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %5, ptr %irq7, align 4
  %reg_image = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 11
  %15 = call ptr @memcpy(ptr %reg_image, ptr @snd_at73c213_original_image, i32 18)
  %16 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ssc, align 4
  %regs.i = getelementptr inbounds %struct.ssc_device, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 251724804) #9, !srcloc !100
  %20 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ssc, align 4
  %regs2.i = getelementptr inbounds %struct.ssc_device, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %regs2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %23, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 2032015) #9, !srcloc !100
  %24 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ssc, align 4
  %clk.i.i = getelementptr inbounds %struct.ssc_device, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %clk.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %clk.i.i, align 4
  %call.i.i = tail call i32 @clk_get_rate(ptr noundef %27) #9
  %div.i.i = udiv i32 %call.i.i, 1536000
  %div1.i.i = udiv i32 %call.i.i, 1600000
  %div2.i.i = udiv i32 %call.i.i, 256000
  %sub.i.i = sub nsw i32 %div2.i.i, %div1.i.i
  %div384.i.i = lshr i32 %sub.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.inv.i.i = icmp ugt i32 %sub.i.i, 1
  %spec.store.select.i.i = select i1 %cmp.inv.i.i, i32 %div384.i.i, i32 1
  %add.i.i = add nuw nsw i32 %div.i.i, 1
  %and.i.i = and i32 %add.i.i, 2097150
  %mul4.i.i = shl nuw nsw i32 %and.i.i, 5
  %div5.i.i = udiv i32 %call.i.i, %mul4.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %div5.i.i)
  %cmp6.i.i = icmp ult i32 %div5.i.i, 8000
  br i1 %cmp6.i.i, label %if.then7.i.i, label %if.end22.if.end15.i.i_crit_edge

if.end22.if.end15.i.i_crit_edge:                  ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

if.then7.i.i:                                     ; preds = %if.end22
  %sub8.i.i = add nsw i32 %and.i.i, -2
  %mul10.i.i = shl nsw i32 %sub8.i.i, 5
  %div11.i.i = udiv i32 %call.i.i, %mul10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %div11.i.i)
  %cmp12.i.i = icmp ugt i32 %div11.i.i, 50000
  br i1 %cmp12.i.i, label %if.then7.i.i.out_irq_crit_edge, label %if.then7.i.i.if.end15.i.i_crit_edge

if.then7.i.i.if.end15.i.i_crit_edge:              ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.i.i

if.then7.i.i.out_irq_crit_edge:                   ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_irq

if.end15.i.i:                                     ; preds = %if.then7.i.i.if.end15.i.i_crit_edge, %if.end22.if.end15.i.i_crit_edge
  %ssc_div.0.i.i = phi i32 [ %sub8.i.i, %if.then7.i.i.if.end15.i.i_crit_edge ], [ %and.i.i, %if.end22.if.end15.i.i_crit_edge ]
  %board.i.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 3
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end32.i.i.do.body.i.i_crit_edge, %if.end15.i.i
  %ssc_div.1.i.i = phi i32 [ %ssc_div.0.i.i, %if.end15.i.i ], [ %add33.i.i, %if.end32.i.i.do.body.i.i_crit_edge ]
  %max_tries.0.i.i = phi i32 [ %spec.store.select.i.i, %if.end15.i.i ], [ %dec.i.i, %if.end32.i.i.do.body.i.i_crit_edge ]
  %mul17.i.i = shl i32 %ssc_div.1.i.i, 5
  %div18.i.i = udiv i32 %call.i.i, %mul17.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %div18.i.i)
  %cmp19.i.i = icmp ult i32 %div18.i.i, 8000
  br i1 %cmp19.i.i, label %do.body.i.i.out_irq_crit_edge, label %if.end21.i.i

do.body.i.i.out_irq_crit_edge:                    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_irq

if.end21.i.i:                                     ; preds = %do.body.i.i
  %div22.i.i = udiv i32 %call.i.i, %ssc_div.1.i.i
  %mul23.i.i = shl i32 %div22.i.i, 3
  %28 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %board.i.i, align 4
  %dac_clk.i.i = getelementptr inbounds %struct.at73c213_board_info, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %dac_clk.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dac_clk.i.i, align 4
  %call24.i.i = tail call i32 @clk_round_rate(ptr noundef %31, i32 noundef %mul23.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call24.i.i)
  %cmp25.i.i = icmp slt i32 %call24.i.i, 1
  br i1 %cmp25.i.i, label %snd_at73c213_set_bitrate.exit.i, label %if.end27.i.i

if.end27.i.i:                                     ; preds = %if.end21.i.i
  %cmp30.unshifted.i.i = xor i32 %call24.i.i, %mul23.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %cmp30.unshifted.i.i)
  %cmp30.i.i = icmp ult i32 %cmp30.unshifted.i.i, 256
  br i1 %cmp30.i.i, label %set_rate.i.i, label %if.end32.i.i

if.end32.i.i:                                     ; preds = %if.end27.i.i
  %add33.i.i = add i32 %ssc_div.1.i.i, 2
  %dec.i.i = add i32 %max_tries.0.i.i, -1
  %tobool.not.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %tobool.not.i.i, label %if.end32.i.i.out_irq_crit_edge, label %if.end32.i.i.do.body.i.i_crit_edge

if.end32.i.i.do.body.i.i_crit_edge:               ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i

if.end32.i.i.out_irq_crit_edge:                   ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_irq

set_rate.i.i:                                     ; preds = %if.end27.i.i
  %32 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %board.i.i, align 4
  %dac_clk35.i.i = getelementptr inbounds %struct.at73c213_board_info, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %dac_clk35.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dac_clk35.i.i, align 4
  %call36.i.i = tail call i32 @clk_set_rate(ptr noundef %35, i32 noundef %call24.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %cmp37.i.i = icmp slt i32 %call36.i.i, 0
  br i1 %cmp37.i.i, label %set_rate.i.i.out_irq_crit_edge, label %snd_at73c213_set_bitrate.exit.thread144.i

set_rate.i.i.out_irq_crit_edge:                   ; preds = %set_rate.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_irq

snd_at73c213_set_bitrate.exit.thread144.i:        ; preds = %set_rate.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div4086.i.i = lshr i32 %ssc_div.1.i.i, 1
  %36 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ssc, align 4
  %regs.i.i = getelementptr inbounds %struct.ssc_device, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %div4086.i.i) #9, !srcloc !100
  %bitrate.i.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %bitrate.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div18.i.i, ptr %bitrate.i.i, align 4
  %spi.i.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 8
  %41 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %spi.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str.14, i32 noundef %div18.i.i, i32 noundef %ssc_div.1.i.i) #13
  br label %if.end.i

snd_at73c213_set_bitrate.exit.i:                  ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i.i)
  %tobool.not.i = icmp eq i32 %call24.i.i, 0
  br i1 %tobool.not.i, label %snd_at73c213_set_bitrate.exit.i.if.end.i_crit_edge, label %snd_at73c213_set_bitrate.exit.i.out_irq_crit_edge

snd_at73c213_set_bitrate.exit.i.out_irq_crit_edge: ; preds = %snd_at73c213_set_bitrate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_irq

snd_at73c213_set_bitrate.exit.i.if.end.i_crit_edge: ; preds = %snd_at73c213_set_bitrate.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %snd_at73c213_set_bitrate.exit.i.if.end.i_crit_edge, %snd_at73c213_set_bitrate.exit.thread144.i
  %43 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %board.i.i, align 4
  %dac_clk.i = getelementptr inbounds %struct.at73c213_board_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %dac_clk.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dac_clk.i, align 4
  %call2.i = tail call i32 @clk_enable(ptr noundef %46) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %msg_xfer.i.i) #9
  %47 = getelementptr inbounds i8, ptr %msg_xfer.i.i, i32 12
  %48 = call ptr @memset(ptr %47, i32 0, i32 84)
  %49 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %msg_xfer.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %49, align 4
  %51 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %52 = call ptr @memset(ptr %51, i32 0, i32 40)
  %53 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %55 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %56 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %spi_wbuffer.i.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 9
  %57 = ptrtoint ptr %spi_wbuffer.i.i to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 16, ptr %spi_wbuffer.i.i, align 4
  %arrayidx3.i.i = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 9, i32 1
  %58 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 4, ptr %arrayidx3.i.i, align 1
  %59 = ptrtoint ptr %msg_xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %spi_wbuffer.i.i, ptr %msg_xfer.i.i, align 4
  %spi_rbuffer.i.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 10
  %rx_buf.i.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %rx_buf.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %spi_rbuffer.i.i, ptr %rx_buf.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #9
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.end.i.spi_message_add_tail.exit.i.i_crit_edge

if.end.i.spi_message_add_tail.exit.i.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i.i

if.end.i.i.i.i.i:                                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %62 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i.i, i32 0, i32 18, i32 1
  %63 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %64 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %spi_message_add_tail.exit.i.i

spi_message_add_tail.exit.i.i:                    ; preds = %if.end.i.i.i.i.i, %if.end.i.spi_message_add_tail.exit.i.i_crit_edge
  %spi.i99.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 8
  %65 = ptrtoint ptr %spi.i99.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %spi.i99.i, align 4
  %call.i100.i = call i32 @spi_sync(ptr noundef %66, ptr noundef nonnull %msg.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100.i)
  %tobool.not.i101.i = icmp eq i32 %call.i100.i, 0
  br i1 %tobool.not.i101.i, label %if.end6.i, label %snd_at73c213_write_reg.exit.i

snd_at73c213_write_reg.exit.i:                    ; preds = %spi_message_add_tail.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #9
  br label %out_clk.i

if.end6.i:                                        ; preds = %spi_message_add_tail.exit.i.i
  %arrayidx6.i.i = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 11, i32 16
  %67 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 4, ptr %arrayidx6.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #9
  call void @msleep(i32 noundef 1) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i102.i) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %msg_xfer.i103.i) #9
  %68 = getelementptr inbounds i8, ptr %msg_xfer.i103.i, i32 12
  %69 = call ptr @memset(ptr %68, i32 0, i32 84)
  %70 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %msg_xfer.i103.i, i32 0, i32 2
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %70, align 4
  %72 = getelementptr inbounds i8, ptr %msg.i102.i, i32 8
  %73 = call ptr @memset(ptr %72, i32 0, i32 40)
  %74 = ptrtoint ptr %msg.i102.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %msg.i102.i, ptr %msg.i102.i, align 4
  %prev.i.i.i.i104.i = getelementptr inbounds %struct.list_head, ptr %msg.i102.i, i32 0, i32 1
  %75 = ptrtoint ptr %prev.i.i.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %msg.i102.i, ptr %prev.i.i.i.i104.i, align 4
  %resources.i.i.i105.i = getelementptr inbounds %struct.spi_message, ptr %msg.i102.i, i32 0, i32 10
  %76 = ptrtoint ptr %resources.i.i.i105.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %resources.i.i.i105.i, ptr %resources.i.i.i105.i, align 4
  %prev.i2.i.i.i106.i = getelementptr inbounds %struct.spi_message, ptr %msg.i102.i, i32 0, i32 10, i32 1
  %77 = ptrtoint ptr %prev.i2.i.i.i106.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %resources.i.i.i105.i, ptr %prev.i2.i.i.i106.i, align 4
  %78 = ptrtoint ptr %spi_wbuffer.i.i to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 16, ptr %spi_wbuffer.i.i, align 4
  %79 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 3, ptr %arrayidx3.i.i, align 1
  %80 = ptrtoint ptr %msg_xfer.i103.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %spi_wbuffer.i.i, ptr %msg_xfer.i103.i, align 4
  %rx_buf.i110.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i103.i, i32 0, i32 1
  %81 = ptrtoint ptr %rx_buf.i110.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %spi_rbuffer.i.i, ptr %rx_buf.i110.i, align 4
  %transfer_list.i.i111.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i103.i, i32 0, i32 18
  %call.i.i.i.i112.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i111.i, ptr noundef nonnull %msg.i102.i, ptr noundef nonnull %msg.i102.i) #9
  br i1 %call.i.i.i.i112.i, label %if.end.i.i.i.i114.i, label %if.end6.i.spi_message_add_tail.exit.i118.i_crit_edge

if.end6.i.spi_message_add_tail.exit.i118.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i118.i

if.end.i.i.i.i114.i:                              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %prev.i.i.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %transfer_list.i.i111.i, ptr %prev.i.i.i.i104.i, align 4
  %83 = ptrtoint ptr %transfer_list.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %msg.i102.i, ptr %transfer_list.i.i111.i, align 4
  %prev3.i.i.i.i113.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i103.i, i32 0, i32 18, i32 1
  %84 = ptrtoint ptr %prev3.i.i.i.i113.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %msg.i102.i, ptr %prev3.i.i.i.i113.i, align 4
  %85 = ptrtoint ptr %msg.i102.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %transfer_list.i.i111.i, ptr %msg.i102.i, align 4
  br label %spi_message_add_tail.exit.i118.i

spi_message_add_tail.exit.i118.i:                 ; preds = %if.end.i.i.i.i114.i, %if.end6.i.spi_message_add_tail.exit.i118.i_crit_edge
  %86 = ptrtoint ptr %spi.i99.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %spi.i99.i, align 4
  %call.i116.i = call i32 @spi_sync(ptr noundef %87, ptr noundef nonnull %msg.i102.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116.i)
  %tobool.not.i117.i = icmp eq i32 %call.i116.i, 0
  br i1 %tobool.not.i117.i, label %if.end10.i, label %snd_at73c213_write_reg.exit121.i

snd_at73c213_write_reg.exit121.i:                 ; preds = %spi_message_add_tail.exit.i118.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i103.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i102.i) #9
  br label %out_clk.i

if.end10.i:                                       ; preds = %spi_message_add_tail.exit.i118.i
  %88 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 3, ptr %arrayidx6.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i103.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i102.i) #9
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i122.i) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %msg_xfer.i123.i) #9
  %89 = getelementptr inbounds i8, ptr %msg_xfer.i123.i, i32 12
  %90 = call ptr @memset(ptr %89, i32 0, i32 84)
  %91 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %msg_xfer.i123.i, i32 0, i32 2
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 2, ptr %91, align 4
  %93 = getelementptr inbounds i8, ptr %msg.i122.i, i32 8
  %94 = call ptr @memset(ptr %93, i32 0, i32 40)
  %95 = ptrtoint ptr %msg.i122.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %msg.i122.i, ptr %msg.i122.i, align 4
  %prev.i.i.i.i124.i = getelementptr inbounds %struct.list_head, ptr %msg.i122.i, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %msg.i122.i, ptr %prev.i.i.i.i124.i, align 4
  %resources.i.i.i125.i = getelementptr inbounds %struct.spi_message, ptr %msg.i122.i, i32 0, i32 10
  %97 = ptrtoint ptr %resources.i.i.i125.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store volatile ptr %resources.i.i.i125.i, ptr %resources.i.i.i125.i, align 4
  %prev.i2.i.i.i126.i = getelementptr inbounds %struct.spi_message, ptr %msg.i122.i, i32 0, i32 10, i32 1
  %98 = ptrtoint ptr %prev.i2.i.i.i126.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %resources.i.i.i125.i, ptr %prev.i2.i.i.i126.i, align 4
  %99 = ptrtoint ptr %spi_wbuffer.i.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 12, ptr %spi_wbuffer.i.i, align 4
  %100 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 -1, ptr %arrayidx3.i.i, align 1
  %101 = ptrtoint ptr %msg_xfer.i123.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %spi_wbuffer.i.i, ptr %msg_xfer.i123.i, align 4
  %rx_buf.i130.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i123.i, i32 0, i32 1
  %102 = ptrtoint ptr %rx_buf.i130.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %spi_rbuffer.i.i, ptr %rx_buf.i130.i, align 4
  %transfer_list.i.i131.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i123.i, i32 0, i32 18
  %call.i.i.i.i132.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i131.i, ptr noundef nonnull %msg.i122.i, ptr noundef nonnull %msg.i122.i) #9
  br i1 %call.i.i.i.i132.i, label %if.end.i.i.i.i134.i, label %if.end10.i.spi_message_add_tail.exit.i138.i_crit_edge

if.end10.i.spi_message_add_tail.exit.i138.i_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i138.i

if.end.i.i.i.i134.i:                              ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %prev.i.i.i.i124.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %transfer_list.i.i131.i, ptr %prev.i.i.i.i124.i, align 4
  %104 = ptrtoint ptr %transfer_list.i.i131.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %msg.i122.i, ptr %transfer_list.i.i131.i, align 4
  %prev3.i.i.i.i133.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i123.i, i32 0, i32 18, i32 1
  %105 = ptrtoint ptr %prev3.i.i.i.i133.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %msg.i122.i, ptr %prev3.i.i.i.i133.i, align 4
  %106 = ptrtoint ptr %msg.i122.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %transfer_list.i.i131.i, ptr %msg.i122.i, align 4
  br label %spi_message_add_tail.exit.i138.i

spi_message_add_tail.exit.i138.i:                 ; preds = %if.end.i.i.i.i134.i, %if.end10.i.spi_message_add_tail.exit.i138.i_crit_edge
  %107 = ptrtoint ptr %spi.i99.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %spi.i99.i, align 4
  %call.i136.i = call i32 @spi_sync(ptr noundef %108, ptr noundef nonnull %msg.i122.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i136.i)
  %tobool.not.i137.i = icmp eq i32 %call.i136.i, 0
  br i1 %tobool.not.i137.i, label %if.end14.i, label %snd_at73c213_write_reg.exit141.i

snd_at73c213_write_reg.exit141.i:                 ; preds = %spi_message_add_tail.exit.i138.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i123.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i122.i) #9
  br label %out_clk.i

if.end14.i:                                       ; preds = %spi_message_add_tail.exit.i138.i
  %arrayidx6.i139.i = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 11, i32 12
  %109 = ptrtoint ptr %arrayidx6.i139.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 -1, ptr %arrayidx6.i139.i, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i123.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i122.i) #9
  %call15.i = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %1, i8 noundef zeroext 17, i8 noundef zeroext 32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %if.end18.i, label %if.end14.i.out_clk.i_crit_edge

if.end14.i.out_clk.i_crit_edge:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk.i

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end22.i, label %if.end18.i.out_clk.i_crit_edge

if.end18.i.out_clk.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk.i

if.end22.i:                                       ; preds = %if.end18.i
  call void @msleep(i32 noundef 50) #9
  %call23.i = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %1, i8 noundef zeroext 17, i8 noundef zeroext 31) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end22.i.out_clk.i_crit_edge

if.end22.i.out_clk.i_crit_edge:                   ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk.i

if.end26.i:                                       ; preds = %if.end22.i
  call void @msleep(i32 noundef 450) #9
  %call27.i = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %1, i8 noundef zeroext 12, i8 noundef zeroext 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %tobool28.not.i = icmp eq i32 %call27.i, 0
  br i1 %tobool28.not.i, label %if.end30.i, label %if.end26.i.out_clk.i_crit_edge

if.end26.i.out_clk.i_crit_edge:                   ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk.i

if.end30.i:                                       ; preds = %if.end26.i
  call void @msleep(i32 noundef 1) #9
  %call31.i = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 60) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %tobool32.not.i = icmp eq i32 %call31.i, 0
  br i1 %tobool32.not.i, label %if.end34.i, label %if.end30.i.out_clk.i_crit_edge

if.end30.i.out_clk.i_crit_edge:                   ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk.i

if.end34.i:                                       ; preds = %if.end30.i
  %call35.i = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %1, i8 noundef zeroext 3, i8 noundef zeroext 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end38.i, label %if.end34.i.out_clk.i_crit_edge

if.end34.i.out_clk.i_crit_edge:                   ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk.i

if.end38.i:                                       ; preds = %if.end34.i
  %call39.i = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %1, i8 noundef zeroext 4, i8 noundef zeroext 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end38.i.out_clk.i_crit_edge

if.end38.i.out_clk.i_crit_edge:                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk.i

if.end42.i:                                       ; preds = %if.end38.i
  %call43.i = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %1, i8 noundef zeroext 5, i8 noundef zeroext 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43.i)
  %tobool44.not.i = icmp eq i32 %call43.i, 0
  br i1 %tobool44.not.i, label %if.end46.i, label %if.end42.i.out_clk.i_crit_edge

if.end42.i.out_clk.i_crit_edge:                   ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk.i

if.end46.i:                                       ; preds = %if.end42.i
  %call47.i = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %1, i8 noundef zeroext 6, i8 noundef zeroext 63) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %if.end50.i, label %if.end46.i.out_clk.i_crit_edge

if.end46.i.out_clk.i_crit_edge:                   ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk.i

if.end50.i:                                       ; preds = %if.end46.i
  %call51.i = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %1, i8 noundef zeroext 1, i8 noundef zeroext 17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %if.end50.i.out_clk.i_crit_edge

if.end50.i.out_clk.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk.i

if.end54.i:                                       ; preds = %if.end50.i
  %call55.i = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %1, i8 noundef zeroext 2, i8 noundef zeroext 17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55.i)
  %tobool56.not.i = icmp eq i32 %call55.i, 0
  br i1 %tobool56.not.i, label %if.end58.i, label %if.end54.i.out_clk.i_crit_edge

if.end54.i.out_clk.i_crit_edge:                   ; preds = %if.end54.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk.i

if.end58.i:                                       ; preds = %if.end54.i
  %call59.i = call fastcc i32 @snd_at73c213_write_reg(ptr noundef %1, i8 noundef zeroext 13, i8 noundef zeroext 17) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end31, label %if.end58.i.out_clk.i_crit_edge

if.end58.i.out_clk.i_crit_edge:                   ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_clk.i

out_clk.i:                                        ; preds = %if.end58.i.out_clk.i_crit_edge, %if.end54.i.out_clk.i_crit_edge, %if.end50.i.out_clk.i_crit_edge, %if.end46.i.out_clk.i_crit_edge, %if.end42.i.out_clk.i_crit_edge, %if.end38.i.out_clk.i_crit_edge, %if.end34.i.out_clk.i_crit_edge, %if.end30.i.out_clk.i_crit_edge, %if.end26.i.out_clk.i_crit_edge, %if.end22.i.out_clk.i_crit_edge, %if.end18.i.out_clk.i_crit_edge, %if.end14.i.out_clk.i_crit_edge, %snd_at73c213_write_reg.exit141.i, %snd_at73c213_write_reg.exit121.i, %snd_at73c213_write_reg.exit.i
  %retval1.0.i = phi i32 [ %call.i100.i, %snd_at73c213_write_reg.exit.i ], [ %call.i116.i, %snd_at73c213_write_reg.exit121.i ], [ %call.i136.i, %snd_at73c213_write_reg.exit141.i ], [ %call15.i, %if.end14.i.out_clk.i_crit_edge ], [ %call19.i, %if.end18.i.out_clk.i_crit_edge ], [ %call23.i, %if.end22.i.out_clk.i_crit_edge ], [ %call27.i, %if.end26.i.out_clk.i_crit_edge ], [ %call31.i, %if.end30.i.out_clk.i_crit_edge ], [ %call35.i, %if.end34.i.out_clk.i_crit_edge ], [ %call39.i, %if.end38.i.out_clk.i_crit_edge ], [ %call43.i, %if.end42.i.out_clk.i_crit_edge ], [ %call47.i, %if.end46.i.out_clk.i_crit_edge ], [ %call51.i, %if.end50.i.out_clk.i_crit_edge ], [ %call55.i, %if.end54.i.out_clk.i_crit_edge ], [ %call59.i, %if.end58.i.out_clk.i_crit_edge ]
  %110 = ptrtoint ptr %board.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %board.i.i, align 4
  %dac_clk64.i = getelementptr inbounds %struct.at73c213_board_info, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %dac_clk64.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dac_clk64.i, align 4
  call void @clk_disable(ptr noundef %113) #9
  br label %out_irq

if.end31:                                         ; preds = %if.end58.i
  %114 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %ssc, align 4
  %regs.i1 = getelementptr inbounds %struct.ssc_device, ptr %115, i32 0, i32 2
  %116 = ptrtoint ptr %regs.i1 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %regs.i1, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 256) #9, !srcloc !100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pcm.i) #9
  %118 = ptrtoint ptr %pcm.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr inttoptr (i32 -1 to ptr), ptr %pcm.i, align 4, !annotation !98
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %120, i32 0, i32 3
  %call.i2 = call i32 @snd_pcm_new(ptr noundef %120, ptr noundef %shortname.i, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %pcm.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %cmp.i = icmp slt i32 %call.i2, 0
  br i1 %cmp.i, label %snd_at73c213_pcm_new.exit.thread, label %snd_at73c213_pcm_new.exit

snd_at73c213_pcm_new.exit.thread:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #9
  br label %out_irq

snd_at73c213_pcm_new.exit:                        ; preds = %if.end31
  %121 = ptrtoint ptr %pcm.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %pcm.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_pcm, ptr %122, i32 0, i32 11
  %123 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %1, ptr %private_data.i, align 8
  %info_flags.i = getelementptr inbounds %struct.snd_pcm, ptr %122, i32 0, i32 3
  %124 = ptrtoint ptr %info_flags.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store i32 65536, ptr %info_flags.i, align 8
  %name.i = getelementptr inbounds %struct.snd_pcm, ptr %122, i32 0, i32 7
  %125 = call ptr @memcpy(ptr %name.i, ptr @.str, i32 9)
  %pcm5.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 1
  %126 = ptrtoint ptr %pcm5.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %122, ptr %pcm5.i, align 4
  call void @snd_pcm_set_ops(ptr noundef %122, i32 noundef 0, ptr noundef nonnull @at73c213_playback_ops) #9
  %127 = ptrtoint ptr %pcm5.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %pcm5.i, align 4
  %129 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %ssc, align 4
  %pdev.i = getelementptr inbounds %struct.ssc_device, ptr %130, i32 0, i32 3
  %131 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %pdev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %132, i32 0, i32 3
  %call7.i = call i32 @snd_pcm_set_managed_buffer_all(ptr noundef %128, i32 noundef 2, ptr noundef %dev.i, i32 noundef 65536, i32 noundef 65536) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pcm.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool33.not = icmp eq i32 %call.i2, 0
  br i1 %tobool33.not, label %if.end35, label %snd_at73c213_pcm_new.exit.out_irq_crit_edge

snd_at73c213_pcm_new.exit.out_irq_crit_edge:      ; preds = %snd_at73c213_pcm_new.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_irq

if.end35:                                         ; preds = %snd_at73c213_pcm_new.exit
  %call36 = call i32 @snd_device_new(ptr noundef %card, i32 noundef 0, ptr noundef %1, ptr noundef nonnull @snd_at73c213_dev_init.ops) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %if.end35.out_irq_crit_edge

if.end35.out_irq_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_irq

if.end39:                                         ; preds = %if.end35
  %call40 = call fastcc i32 @snd_at73c213_mixer(ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end39.out_crit_edge, label %out_snd_dev

if.end39.out_crit_edge:                           ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

out_snd_dev:                                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  call void @snd_device_free(ptr noundef %card, ptr noundef %1) #9
  br label %out_irq

out_irq:                                          ; preds = %out_snd_dev, %if.end35.out_irq_crit_edge, %snd_at73c213_pcm_new.exit.out_irq_crit_edge, %snd_at73c213_pcm_new.exit.thread, %out_clk.i, %snd_at73c213_set_bitrate.exit.i.out_irq_crit_edge, %set_rate.i.i.out_irq_crit_edge, %if.end32.i.i.out_irq_crit_edge, %do.body.i.i.out_irq_crit_edge, %if.then7.i.i.out_irq_crit_edge
  %retval1.0 = phi i32 [ %call.i2, %snd_at73c213_pcm_new.exit.out_irq_crit_edge ], [ %call36, %if.end35.out_irq_crit_edge ], [ %call40, %out_snd_dev ], [ %call.i2, %snd_at73c213_pcm_new.exit.thread ], [ -6, %if.then7.i.i.out_irq_crit_edge ], [ %call36.i.i, %set_rate.i.i.out_irq_crit_edge ], [ %retval1.0.i, %out_clk.i ], [ %call24.i.i, %snd_at73c213_set_bitrate.exit.i.out_irq_crit_edge ], [ -6, %if.end32.i.i.out_irq_crit_edge ], [ -6, %do.body.i.i.out_irq_crit_edge ]
  %133 = ptrtoint ptr %irq7 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %irq7, align 4
  %call45 = call ptr @free_irq(i32 noundef %134, ptr noundef %1) #9
  %135 = ptrtoint ptr %irq7 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 -1, ptr %irq7, align 4
  br label %out

out:                                              ; preds = %out_irq, %if.end39.out_crit_edge, %if.then17, %do.body12
  %retval1.1 = phi i32 [ %call.i, %if.then17 ], [ %retval1.0, %out_irq ], [ 0, %if.end39.out_crit_edge ], [ %call.i, %do.body12 ]
  %136 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %ssc, align 4
  %clk48 = getelementptr inbounds %struct.ssc_device, ptr %137, i32 0, i32 5
  %138 = ptrtoint ptr %clk48 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %clk48, align 4
  call void @clk_disable(ptr noundef %139) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %out ], [ %5, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ssc_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_dev_free(ptr nocapture noundef readonly %device) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %ssc = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 512) #9, !srcloc !100
  %irq = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %cmp = icmp sgt i32 %7, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call ptr @free_irq(i32 noundef %7, ptr noundef %1) #9
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %irq, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %substream = getelementptr inbounds %struct.snd_at73c213, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %substream, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %lock = getelementptr inbounds %struct.snd_at73c213, ptr %dev_id, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %period_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 16
  %4 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %period_size, align 4
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %6 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %frame_bits.i, align 8
  %ssc = getelementptr inbounds %struct.snd_at73c213, ptr %dev_id, i32 0, i32 7
  %8 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 76
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !101
  %and = and i32 %12, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end21_crit_edge, label %if.then

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul i32 %7, %5
  %div1.i = lshr i32 %mul.i, 3
  %period = getelementptr inbounds %struct.snd_at73c213, ptr %dev_id, i32 0, i32 5
  %13 = ptrtoint ptr %period to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %period, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %period, align 4
  %periods = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 17
  %15 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %16)
  %cmp = icmp eq i32 %inc, %16
  %spec.store.select51 = select i1 %cmp, i32 0, i32 %inc
  %17 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %spec.store.select51, ptr %period, align 4
  %add = add i32 %spec.store.select51, 1
  %18 = ptrtoint ptr %periods to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %periods, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %19)
  %cmp9 = icmp eq i32 %add, %19
  %spec.store.select = select i1 %cmp9, i32 0, i32 %add
  %mul = mul i32 %spec.store.select, %div1.i
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %20 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_addr, align 8
  %add12 = add i32 %mul, %21
  %22 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ssc, align 4
  %regs14 = getelementptr inbounds %struct.ssc_device, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %regs14 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs14, align 4
  %add.ptr15 = getelementptr i8, ptr %25, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %add12) #9, !srcloc !100
  %26 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %period_size, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %28 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %channels, align 8
  %mul17 = mul i32 %29, %27
  %30 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ssc, align 4
  %regs19 = getelementptr inbounds %struct.ssc_device, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %regs19 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regs19, align 4
  %add.ptr20 = getelementptr i8, ptr %33, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %mul17) #9, !srcloc !100
  br label %if.end21

if.end21:                                         ; preds = %if.then, %entry.if.end21_crit_edge
  %retval2.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end21_crit_edge ]
  %34 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ssc, align 4
  %regs23 = getelementptr inbounds %struct.ssc_device, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %regs23 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs23, align 4
  %add.ptr24 = getelementptr i8, ptr %37, i32 76
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #9, !srcloc !101
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  br i1 %tobool.not, label %if.end21.if.end31_crit_edge, label %if.then29

if.end21.if.end31_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end31

if.then29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %substream to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %substream, align 4
  tail call void @snd_pcm_period_elapsed(ptr noundef %40) #9
  br label %if.end31

if.end31:                                         ; preds = %if.then29, %if.end21.if.end31_crit_edge
  ret i32 %retval2.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_at73c213_mixer(ptr noundef %chip) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %chip, null
  br i1 %cmp, label %entry.cleanup21_crit_edge, label %lor.lhs.false

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

lor.lhs.false:                                    ; preds = %entry
  %pcm = getelementptr inbounds %struct.snd_at73c213, ptr %chip, i32 0, i32 1
  %0 = ptrtoint ptr %pcm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pcm, align 4
  %cmp1 = icmp eq ptr %1, null
  br i1 %cmp1, label %lor.lhs.false.cleanup21_crit_edge, label %if.end

lor.lhs.false.cleanup21_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

if.end:                                           ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %mixername = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 6
  %name = getelementptr inbounds %struct.snd_pcm, ptr %1, i32 0, i32 7
  %call = tail call ptr @strcpy(ptr noundef %mixername, ptr noundef %name) #12
  %call6 = tail call ptr @snd_ctl_new1(ptr noundef nonnull @snd_at73c213_controls, ptr noundef nonnull %chip) #9
  %call7 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.end.for.cond11.preheader_crit_edge, label %for.cond

if.end.for.cond11.preheader_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11.preheader

for.cond:                                         ; preds = %if.end
  %call6.1 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @snd_at73c213_controls, i32 0, i32 1), ptr noundef nonnull %chip) #9
  %call7.1 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call6.1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.1)
  %cmp8.1 = icmp slt i32 %call7.1, 0
  br i1 %cmp8.1, label %for.cond.for.cond11.preheader_crit_edge, label %for.cond.1

for.cond.for.cond11.preheader_crit_edge:          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11.preheader

for.cond.1:                                       ; preds = %for.cond
  %call6.2 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @snd_at73c213_controls, i32 0, i32 2), ptr noundef nonnull %chip) #9
  %call7.2 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call6.2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.2)
  %cmp8.2 = icmp slt i32 %call7.2, 0
  br i1 %cmp8.2, label %for.cond.1.for.cond11.preheader_crit_edge, label %for.cond.2

for.cond.1.for.cond11.preheader_crit_edge:        ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11.preheader

for.cond.2:                                       ; preds = %for.cond.1
  %call6.3 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @snd_at73c213_controls, i32 0, i32 3), ptr noundef nonnull %chip) #9
  %call7.3 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call6.3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.3)
  %cmp8.3 = icmp slt i32 %call7.3, 0
  br i1 %cmp8.3, label %for.cond.2.for.cond11.preheader_crit_edge, label %for.cond.3

for.cond.2.for.cond11.preheader_crit_edge:        ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11.preheader

for.cond.3:                                       ; preds = %for.cond.2
  %call6.4 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @snd_at73c213_controls, i32 0, i32 4), ptr noundef nonnull %chip) #9
  %call7.4 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call6.4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.4)
  %cmp8.4 = icmp slt i32 %call7.4, 0
  br i1 %cmp8.4, label %for.cond.3.for.cond11.preheader_crit_edge, label %for.cond.4

for.cond.3.for.cond11.preheader_crit_edge:        ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11.preheader

for.cond.4:                                       ; preds = %for.cond.3
  %call6.5 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @snd_at73c213_controls, i32 0, i32 5), ptr noundef nonnull %chip) #9
  %call7.5 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call6.5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.5)
  %cmp8.5 = icmp slt i32 %call7.5, 0
  br i1 %cmp8.5, label %for.cond.4.for.cond11.preheader_crit_edge, label %for.cond.5

for.cond.4.for.cond11.preheader_crit_edge:        ; preds = %for.cond.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11.preheader

for.cond.5:                                       ; preds = %for.cond.4
  %call6.6 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @snd_at73c213_controls, i32 0, i32 6), ptr noundef nonnull %chip) #9
  %call7.6 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call6.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.6)
  %cmp8.6 = icmp slt i32 %call7.6, 0
  br i1 %cmp8.6, label %for.cond.5.for.cond11.preheader_crit_edge, label %for.cond.6

for.cond.5.for.cond11.preheader_crit_edge:        ; preds = %for.cond.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11.preheader

for.cond.6:                                       ; preds = %for.cond.5
  %call6.7 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @snd_at73c213_controls, i32 0, i32 7), ptr noundef nonnull %chip) #9
  %call7.7 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call6.7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.7)
  %cmp8.7 = icmp slt i32 %call7.7, 0
  br i1 %cmp8.7, label %for.cond.6.for.cond11.preheader_crit_edge, label %for.cond.7

for.cond.6.for.cond11.preheader_crit_edge:        ; preds = %for.cond.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11.preheader

for.cond.7:                                       ; preds = %for.cond.6
  %call6.8 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @snd_at73c213_controls, i32 0, i32 8), ptr noundef nonnull %chip) #9
  %call7.8 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call6.8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.8)
  %cmp8.8 = icmp slt i32 %call7.8, 0
  br i1 %cmp8.8, label %for.cond.7.for.cond11.preheader_crit_edge, label %for.cond.8

for.cond.7.for.cond11.preheader_crit_edge:        ; preds = %for.cond.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11.preheader

for.cond.8:                                       ; preds = %for.cond.7
  %call6.9 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @snd_at73c213_controls, i32 0, i32 9), ptr noundef nonnull %chip) #9
  %call7.9 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call6.9) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.9)
  %cmp8.9 = icmp slt i32 %call7.9, 0
  br i1 %cmp8.9, label %for.cond.8.for.cond11.preheader_crit_edge, label %for.cond.9

for.cond.8.for.cond11.preheader_crit_edge:        ; preds = %for.cond.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11.preheader

for.cond.9:                                       ; preds = %for.cond.8
  %call6.10 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @snd_at73c213_controls, i32 0, i32 10), ptr noundef nonnull %chip) #9
  %call7.10 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call6.10) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.10)
  %cmp8.10 = icmp slt i32 %call7.10, 0
  br i1 %cmp8.10, label %for.cond.9.for.cond11.preheader_crit_edge, label %for.cond.10

for.cond.9.for.cond11.preheader_crit_edge:        ; preds = %for.cond.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11.preheader

for.cond.10:                                      ; preds = %for.cond.9
  %call6.11 = tail call ptr @snd_ctl_new1(ptr noundef getelementptr inbounds ([12 x %struct.snd_kcontrol_new], ptr @snd_at73c213_controls, i32 0, i32 11), ptr noundef nonnull %chip) #9
  %call7.11 = tail call i32 @snd_ctl_add(ptr noundef %3, ptr noundef %call6.11) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.11)
  %cmp8.11 = icmp slt i32 %call7.11, 0
  br i1 %cmp8.11, label %for.cond.10.for.cond11.preheader_crit_edge, label %for.cond.10.cleanup21_crit_edge

for.cond.10.cleanup21_crit_edge:                  ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

for.cond.10.for.cond11.preheader_crit_edge:       ; preds = %for.cond.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.cond.10.for.cond11.preheader_crit_edge, %for.cond.9.for.cond11.preheader_crit_edge, %for.cond.8.for.cond11.preheader_crit_edge, %for.cond.7.for.cond11.preheader_crit_edge, %for.cond.6.for.cond11.preheader_crit_edge, %for.cond.5.for.cond11.preheader_crit_edge, %for.cond.4.for.cond11.preheader_crit_edge, %for.cond.3.for.cond11.preheader_crit_edge, %for.cond.2.for.cond11.preheader_crit_edge, %for.cond.1.for.cond11.preheader_crit_edge, %for.cond.for.cond11.preheader_crit_edge, %if.end.for.cond11.preheader_crit_edge
  %call7.lcssa = phi i32 [ %call7, %if.end.for.cond11.preheader_crit_edge ], [ %call7.1, %for.cond.for.cond11.preheader_crit_edge ], [ %call7.2, %for.cond.1.for.cond11.preheader_crit_edge ], [ %call7.3, %for.cond.2.for.cond11.preheader_crit_edge ], [ %call7.4, %for.cond.3.for.cond11.preheader_crit_edge ], [ %call7.5, %for.cond.4.for.cond11.preheader_crit_edge ], [ %call7.6, %for.cond.5.for.cond11.preheader_crit_edge ], [ %call7.7, %for.cond.6.for.cond11.preheader_crit_edge ], [ %call7.8, %for.cond.7.for.cond11.preheader_crit_edge ], [ %call7.9, %for.cond.8.for.cond11.preheader_crit_edge ], [ %call7.10, %for.cond.9.for.cond11.preheader_crit_edge ], [ %call7.11, %for.cond.10.for.cond11.preheader_crit_edge ]
  %call14 = tail call ptr @snd_ctl_find_numid(ptr noundef %3, i32 noundef 1) #9
  %tobool.not = icmp eq ptr %call14, null
  br i1 %tobool.not, label %for.cond11.preheader.if.end17_crit_edge, label %if.then15

for.cond11.preheader.if.end17_crit_edge:          ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then15:                                        ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #11
  %call16 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef nonnull %call14) #9
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %for.cond11.preheader.if.end17_crit_edge
  %call14.1 = tail call ptr @snd_ctl_find_numid(ptr noundef %3, i32 noundef 2) #9
  %tobool.not.1 = icmp eq ptr %call14.1, null
  br i1 %tobool.not.1, label %if.end17.if.end17.1_crit_edge, label %if.then15.1

if.end17.if.end17.1_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.1

if.then15.1:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  %call16.1 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef nonnull %call14.1) #9
  br label %if.end17.1

if.end17.1:                                       ; preds = %if.then15.1, %if.end17.if.end17.1_crit_edge
  %call14.2 = tail call ptr @snd_ctl_find_numid(ptr noundef %3, i32 noundef 3) #9
  %tobool.not.2 = icmp eq ptr %call14.2, null
  br i1 %tobool.not.2, label %if.end17.1.if.end17.2_crit_edge, label %if.then15.2

if.end17.1.if.end17.2_crit_edge:                  ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.2

if.then15.2:                                      ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #11
  %call16.2 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef nonnull %call14.2) #9
  br label %if.end17.2

if.end17.2:                                       ; preds = %if.then15.2, %if.end17.1.if.end17.2_crit_edge
  %call14.3 = tail call ptr @snd_ctl_find_numid(ptr noundef %3, i32 noundef 4) #9
  %tobool.not.3 = icmp eq ptr %call14.3, null
  br i1 %tobool.not.3, label %if.end17.2.if.end17.3_crit_edge, label %if.then15.3

if.end17.2.if.end17.3_crit_edge:                  ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.3

if.then15.3:                                      ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #11
  %call16.3 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef nonnull %call14.3) #9
  br label %if.end17.3

if.end17.3:                                       ; preds = %if.then15.3, %if.end17.2.if.end17.3_crit_edge
  %call14.4 = tail call ptr @snd_ctl_find_numid(ptr noundef %3, i32 noundef 5) #9
  %tobool.not.4 = icmp eq ptr %call14.4, null
  br i1 %tobool.not.4, label %if.end17.3.if.end17.4_crit_edge, label %if.then15.4

if.end17.3.if.end17.4_crit_edge:                  ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.4

if.then15.4:                                      ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #11
  %call16.4 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef nonnull %call14.4) #9
  br label %if.end17.4

if.end17.4:                                       ; preds = %if.then15.4, %if.end17.3.if.end17.4_crit_edge
  %call14.5 = tail call ptr @snd_ctl_find_numid(ptr noundef %3, i32 noundef 6) #9
  %tobool.not.5 = icmp eq ptr %call14.5, null
  br i1 %tobool.not.5, label %if.end17.4.if.end17.5_crit_edge, label %if.then15.5

if.end17.4.if.end17.5_crit_edge:                  ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.5

if.then15.5:                                      ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #11
  %call16.5 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef nonnull %call14.5) #9
  br label %if.end17.5

if.end17.5:                                       ; preds = %if.then15.5, %if.end17.4.if.end17.5_crit_edge
  %call14.6 = tail call ptr @snd_ctl_find_numid(ptr noundef %3, i32 noundef 7) #9
  %tobool.not.6 = icmp eq ptr %call14.6, null
  br i1 %tobool.not.6, label %if.end17.5.if.end17.6_crit_edge, label %if.then15.6

if.end17.5.if.end17.6_crit_edge:                  ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.6

if.then15.6:                                      ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #11
  %call16.6 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef nonnull %call14.6) #9
  br label %if.end17.6

if.end17.6:                                       ; preds = %if.then15.6, %if.end17.5.if.end17.6_crit_edge
  %call14.7 = tail call ptr @snd_ctl_find_numid(ptr noundef %3, i32 noundef 8) #9
  %tobool.not.7 = icmp eq ptr %call14.7, null
  br i1 %tobool.not.7, label %if.end17.6.if.end17.7_crit_edge, label %if.then15.7

if.end17.6.if.end17.7_crit_edge:                  ; preds = %if.end17.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.7

if.then15.7:                                      ; preds = %if.end17.6
  call void @__sanitizer_cov_trace_pc() #11
  %call16.7 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef nonnull %call14.7) #9
  br label %if.end17.7

if.end17.7:                                       ; preds = %if.then15.7, %if.end17.6.if.end17.7_crit_edge
  %call14.8 = tail call ptr @snd_ctl_find_numid(ptr noundef %3, i32 noundef 9) #9
  %tobool.not.8 = icmp eq ptr %call14.8, null
  br i1 %tobool.not.8, label %if.end17.7.if.end17.8_crit_edge, label %if.then15.8

if.end17.7.if.end17.8_crit_edge:                  ; preds = %if.end17.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.8

if.then15.8:                                      ; preds = %if.end17.7
  call void @__sanitizer_cov_trace_pc() #11
  %call16.8 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef nonnull %call14.8) #9
  br label %if.end17.8

if.end17.8:                                       ; preds = %if.then15.8, %if.end17.7.if.end17.8_crit_edge
  %call14.9 = tail call ptr @snd_ctl_find_numid(ptr noundef %3, i32 noundef 10) #9
  %tobool.not.9 = icmp eq ptr %call14.9, null
  br i1 %tobool.not.9, label %if.end17.8.if.end17.9_crit_edge, label %if.then15.9

if.end17.8.if.end17.9_crit_edge:                  ; preds = %if.end17.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.9

if.then15.9:                                      ; preds = %if.end17.8
  call void @__sanitizer_cov_trace_pc() #11
  %call16.9 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef nonnull %call14.9) #9
  br label %if.end17.9

if.end17.9:                                       ; preds = %if.then15.9, %if.end17.8.if.end17.9_crit_edge
  %call14.10 = tail call ptr @snd_ctl_find_numid(ptr noundef %3, i32 noundef 11) #9
  %tobool.not.10 = icmp eq ptr %call14.10, null
  br i1 %tobool.not.10, label %if.end17.9.if.end17.10_crit_edge, label %if.then15.10

if.end17.9.if.end17.10_crit_edge:                 ; preds = %if.end17.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17.10

if.then15.10:                                     ; preds = %if.end17.9
  call void @__sanitizer_cov_trace_pc() #11
  %call16.10 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef nonnull %call14.10) #9
  br label %if.end17.10

if.end17.10:                                      ; preds = %if.then15.10, %if.end17.9.if.end17.10_crit_edge
  %call14.11 = tail call ptr @snd_ctl_find_numid(ptr noundef %3, i32 noundef 12) #9
  %tobool.not.11 = icmp eq ptr %call14.11, null
  br i1 %tobool.not.11, label %if.end17.10.cleanup21_crit_edge, label %if.then15.11

if.end17.10.cleanup21_crit_edge:                  ; preds = %if.end17.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup21

if.then15.11:                                     ; preds = %if.end17.10
  call void @__sanitizer_cov_trace_pc() #11
  %call16.11 = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef nonnull %call14.11) #9
  br label %cleanup21

cleanup21:                                        ; preds = %if.then15.11, %if.end17.10.cleanup21_crit_edge, %for.cond.10.cleanup21_crit_edge, %lor.lhs.false.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup21_crit_edge ], [ -22, %entry.cleanup21_crit_edge ], [ 0, %for.cond.10.cleanup21_crit_edge ], [ %call7.lcssa, %if.then15.11 ], [ %call7.lcssa, %if.end17.10.cleanup21_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_device_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_period_elapsed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_at73c213_write_reg(ptr noundef %chip, i8 noundef zeroext %reg, i8 noundef zeroext %val) unnamed_addr #2 align 64 {
entry:
  %msg = alloca %struct.spi_message, align 4
  %msg_xfer = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %msg_xfer) #9
  %0 = getelementptr inbounds i8, ptr %msg_xfer, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 84)
  %2 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %msg_xfer, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %2, align 4
  %4 = getelementptr inbounds i8, ptr %msg, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 40)
  %6 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %msg, ptr %msg, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %msg, ptr %prev.i.i.i, align 4
  %resources.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10
  %8 = ptrtoint ptr %resources.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %resources.i.i, ptr %resources.i.i, align 4
  %prev.i2.i.i = getelementptr inbounds %struct.spi_message, ptr %msg, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %resources.i.i, ptr %prev.i2.i.i, align 4
  %spi_wbuffer = getelementptr inbounds %struct.snd_at73c213, ptr %chip, i32 0, i32 9
  %10 = ptrtoint ptr %spi_wbuffer to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %reg, ptr %spi_wbuffer, align 4
  %arrayidx3 = getelementptr %struct.snd_at73c213, ptr %chip, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %val, ptr %arrayidx3, align 1
  %12 = ptrtoint ptr %msg_xfer to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %spi_wbuffer, ptr %msg_xfer, align 4
  %spi_rbuffer = getelementptr inbounds %struct.snd_at73c213, ptr %chip, i32 0, i32 10
  %rx_buf = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer, i32 0, i32 1
  %13 = ptrtoint ptr %rx_buf to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spi_rbuffer, ptr %rx_buf, align 4
  %transfer_list.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer, i32 0, i32 18
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i, ptr noundef nonnull %msg, ptr noundef nonnull %msg) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %entry.spi_message_add_tail.exit_crit_edge

entry.spi_message_add_tail.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit

if.end.i.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg, ptr %transfer_list.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i, ptr %msg, align 4
  br label %spi_message_add_tail.exit

spi_message_add_tail.exit:                        ; preds = %if.end.i.i.i, %entry.spi_message_add_tail.exit_crit_edge
  %spi = getelementptr inbounds %struct.snd_at73c213, ptr %chip, i32 0, i32 8
  %18 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi, align 4
  %call = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %spi_message_add_tail.exit.if.end_crit_edge

spi_message_add_tail.exit.if.end_crit_edge:       ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %spi_message_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  %idxprom = zext i8 %reg to i32
  %arrayidx6 = getelementptr %struct.snd_at73c213, ptr %chip, i32 0, i32 11, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %val, ptr %arrayidx6, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %spi_message_add_tail.exit.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_new(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_pcm_set_ops(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_set_managed_buffer_all(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_pcm_open(ptr noundef %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %call = tail call i32 @snd_pcm_hw_constraint_integer(ptr noundef %3, i32 noundef 15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %bitrate = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %bitrate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bitrate, align 4
  store i32 %5, ptr getelementptr inbounds (%struct.snd_pcm_hardware, ptr @snd_at73c213_playback_hw, i32 0, i32 3), align 4
  store i32 %5, ptr getelementptr inbounds (%struct.snd_pcm_hardware, ptr @snd_at73c213_playback_hw, i32 0, i32 4), align 8
  %hw = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 46
  %6 = call ptr @memcpy(ptr %hw, ptr @snd_at73c213_playback_hw, i32 64)
  %substream3 = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %substream3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %substream, ptr %substream3, align 4
  %ssc = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ssc, align 4
  %clk = getelementptr inbounds %struct.ssc_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call4 = tail call i32 @clk_enable(ptr noundef %11) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_pcm_close(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %substream1 = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %substream1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %substream1, align 4
  %ssc = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ssc, align 4
  %clk = getelementptr inbounds %struct.ssc_device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %6) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_pcm_hw_params(ptr nocapture noundef readonly %substream, ptr nocapture noundef readonly %hw_params) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx.i.i = getelementptr %struct.snd_pcm_hw_params, ptr %hw_params, i32 0, i32 3, i32 2
  %2 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i.i, align 4
  %ssc = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 28
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !101
  %and = and i32 %8, -3841
  %sub = shl i32 %3, 8
  %and2 = add i32 %sub, 3840
  %shl = and i32 %and2, 3840
  %or = or i32 %and, %shl
  %9 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ssc, align 4
  %regs4 = getelementptr inbounds %struct.ssc_device, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs4, align 4
  %add.ptr5 = getelementptr i8, ptr %12, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %or) #9, !srcloc !100
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_pcm_prepare(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  %period = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %period to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %period, align 4
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %9 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_addr, align 8
  %ssc = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %10) #9, !srcloc !100
  %15 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %period_size, align 4
  %channels = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 15
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %channels, align 8
  %mul = mul i32 %18, %16
  %19 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ssc, align 4
  %regs4 = getelementptr inbounds %struct.ssc_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %regs4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs4, align 4
  %add.ptr5 = getelementptr i8, ptr %22, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5, i32 %mul) #9, !srcloc !100
  %23 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_addr, align 8
  %add = add i32 %24, %div1.i
  %25 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ssc, align 4
  %regs8 = getelementptr inbounds %struct.ssc_device, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %regs8 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %regs8, align 4
  %add.ptr9 = getelementptr i8, ptr %28, i32 280
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 %add) #9, !srcloc !100
  %29 = ptrtoint ptr %period_size to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %period_size, align 4
  %31 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %channels, align 8
  %mul12 = mul i32 %32, %30
  %33 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ssc, align 4
  %regs14 = getelementptr inbounds %struct.ssc_device, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %regs14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs14, align 4
  %add.ptr15 = getelementptr i8, ptr %36, i32 284
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %mul12) #9, !srcloc !100
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_pcm_trigger(ptr nocapture noundef readonly %substream, i32 noundef %cmd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %lock = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %do.body [
    i32 1, label %sw.bb
    i32 0, label %sw.bb5
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ssc = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 4) #9, !srcloc !100
  %7 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ssc, align 4
  %regs3 = getelementptr inbounds %struct.ssc_device, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %regs3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs3, align 4
  %add.ptr4 = getelementptr i8, ptr %10, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 256) #9, !srcloc !100
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ssc6 = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 7
  %11 = ptrtoint ptr %ssc6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ssc6, align 4
  %regs7 = getelementptr inbounds %struct.ssc_device, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %regs7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs7, align 4
  %add.ptr8 = getelementptr i8, ptr %14, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 512) #9, !srcloc !100
  %15 = ptrtoint ptr %ssc6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ssc6, align 4
  %regs10 = getelementptr inbounds %struct.ssc_device, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs10, align 4
  %add.ptr11 = getelementptr i8, ptr %18, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 4) #9, !srcloc !100
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_at73c213_pcm_trigger.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_at73c213_pcm_trigger, %if.then)) #9
          to label %sw.epilog [label %if.then], !srcloc !99

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %spi = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 8
  %19 = ptrtoint ptr %spi to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %spi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_at73c213_pcm_trigger.__UNIQUE_ID_ddebug242, ptr noundef %20, ptr noundef nonnull @.str.19, i32 noundef %cmd) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then, %do.body, %sw.bb5, %sw.bb
  %retval1.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.bb ], [ -22, %if.then ], [ -22, %do.body ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  ret i32 %retval1.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_pcm_pointer(ptr nocapture noundef readonly %substream) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 2
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %runtime1 = getelementptr inbounds %struct.snd_pcm_substream, ptr %substream, i32 0, i32 11
  %2 = ptrtoint ptr %runtime1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %runtime1, align 4
  %ssc = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 264
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !101
  %dma_addr = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 51
  %9 = ptrtoint ptr %dma_addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_addr, align 8
  %sub = sub i32 %8, %10
  %mul.i = shl i32 %sub, 3
  %frame_bits.i = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 21
  %11 = ptrtoint ptr %frame_bits.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %frame_bits.i, align 8
  %div.i = udiv i32 %mul.i, %12
  %buffer_size = getelementptr inbounds %struct.snd_pcm_runtime, ptr %3, i32 0, i32 18
  %13 = ptrtoint ptr %buffer_size to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %14)
  %cmp.not = icmp ult i32 %div.i, %14
  %sub4 = select i1 %cmp.not, i32 0, i32 %14
  %spec.select = sub i32 %div.i, %sub4
  ret i32 %spec.select
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_pcm_hw_constraint_integer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_numid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_remove(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_at73c213_stereo_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp = icmp eq i32 %shr, 1
  %spec.select = select i1 %cmp, i32 1, i32 2
  %2 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %spec.select, ptr %2, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %4 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %5 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %6 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %shr, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_stereo_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 7
  %shr7 = lshr i32 %3, 19
  %and8 = and i32 %shr7, 7
  %shr10 = lshr i32 %3, 24
  %mixer_lock = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mixer_lock, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 11, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shr15 = lshr i32 %conv, %and5
  %and16 = and i32 %shr15, %shr10
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and16, ptr %value, align 8
  %arrayidx19 = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 11, i32 %and2
  %7 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx19, align 1
  %conv20 = zext i8 %8 to i32
  %shr21 = lshr i32 %conv20, %and8
  %and22 = and i32 %shr21, %shr10
  %arrayidx24 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and22, ptr %arrayidx24, align 4
  %10 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = sub nsw i32 %shr10, %and16
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub, ptr %value, align 8
  %sub31 = sub nsw i32 %shr10, %and22
  %12 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub31, ptr %arrayidx24, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef %mixer_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_stereo_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  %msg.i118 = alloca %struct.spi_message, align 4
  %msg_xfer.i119 = alloca %struct.spi_transfer, align 4
  %msg.i = alloca %struct.spi_message, align 4
  %msg_xfer.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 7
  %shr7 = lshr i32 %3, 19
  %and8 = and i32 %shr7, 7
  %shr10 = lshr i32 %3, 24
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %and16 = and i32 %5, %shr10
  %arrayidx18 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx18, align 4
  %and19 = and i32 %7, %shr10
  %8 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %sub = sub nsw i32 %shr10, %and16
  %sub24 = sub nsw i32 %shr10, %and19
  %val1.0 = select i1 %tobool.not, i32 %and16, i32 %sub
  %val2.0 = select i1 %tobool.not, i32 %and19, i32 %sub24
  %shl = shl nsw i32 %val1.0, %and5
  %shl29 = shl nsw i32 %val2.0, %and8
  %mixer_lock = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mixer_lock, i32 noundef 0) #9
  %arrayidx31 = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 11, i32 %and
  %9 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx31, align 1
  %conv32 = zext i8 %10 to i32
  %shl33 = shl nuw nsw i32 %shr10, %and5
  %neg = xor i32 %shl33, -1
  %and34 = and i32 %conv32, %neg
  %or = or i32 %and34, %shl
  %arrayidx38 = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 11, i32 %and2
  %11 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx38, align 1
  %conv39 = zext i8 %12 to i32
  %shl40 = shl nuw nsw i32 %shr10, %and8
  %neg41 = xor i32 %shl40, -1
  %and42 = and i32 %conv39, %neg41
  %or44 = or i32 %and42, %shl29
  %conv46 = and i32 %or, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv46, i32 %conv32)
  %cmp.not = icmp ne i32 %conv46, %conv32
  %conv51 = and i32 %or44, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv51, i32 %conv39)
  %cmp55 = icmp ne i32 %conv51, %conv39
  %narrow = select i1 %cmp.not, i1 true, i1 %cmp55
  %13 = zext i1 %narrow to i32
  %conv57 = trunc i32 %3 to i8
  %conv58 = trunc i32 %or to i8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %msg_xfer.i) #9
  %14 = getelementptr inbounds i8, ptr %msg_xfer.i, i32 12
  %15 = call ptr @memset(ptr %14, i32 0, i32 84)
  %16 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %msg_xfer.i, i32 0, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %16, align 4
  %18 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %19 = call ptr @memset(ptr %18, i32 0, i32 40)
  %20 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %22 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %spi_wbuffer.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %spi_wbuffer.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv57, ptr %spi_wbuffer.i, align 4
  %arrayidx3.i = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 9, i32 1
  %25 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv58, ptr %arrayidx3.i, align 1
  %26 = ptrtoint ptr %msg_xfer.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %spi_wbuffer.i, ptr %msg_xfer.i, align 4
  %spi_rbuffer.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 10
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i, i32 0, i32 1
  %27 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %spi_rbuffer.i, ptr %rx_buf.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %29 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i, i32 0, i32 18, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %31 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %spi.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 8
  %32 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %33, ptr noundef nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end62, label %if.then60

if.then60:                                        ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #9
  br label %cleanup

if.end62:                                         ; preds = %spi_message_add_tail.exit.i
  %34 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv58, ptr %arrayidx31, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #9
  %conv63 = trunc i32 %shr to i8
  %conv64 = trunc i32 %or44 to i8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i118) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %msg_xfer.i119) #9
  %35 = getelementptr inbounds i8, ptr %msg_xfer.i119, i32 12
  %36 = call ptr @memset(ptr %35, i32 0, i32 84)
  %37 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %msg_xfer.i119, i32 0, i32 2
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %37, align 4
  %39 = getelementptr inbounds i8, ptr %msg.i118, i32 8
  %40 = call ptr @memset(ptr %39, i32 0, i32 40)
  %41 = ptrtoint ptr %msg.i118 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %msg.i118, ptr %msg.i118, align 4
  %prev.i.i.i.i120 = getelementptr inbounds %struct.list_head, ptr %msg.i118, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %msg.i118, ptr %prev.i.i.i.i120, align 4
  %resources.i.i.i121 = getelementptr inbounds %struct.spi_message, ptr %msg.i118, i32 0, i32 10
  %43 = ptrtoint ptr %resources.i.i.i121 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %resources.i.i.i121, ptr %resources.i.i.i121, align 4
  %prev.i2.i.i.i122 = getelementptr inbounds %struct.spi_message, ptr %msg.i118, i32 0, i32 10, i32 1
  %44 = ptrtoint ptr %prev.i2.i.i.i122 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %resources.i.i.i121, ptr %prev.i2.i.i.i122, align 4
  %45 = ptrtoint ptr %spi_wbuffer.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv63, ptr %spi_wbuffer.i, align 4
  %46 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %conv64, ptr %arrayidx3.i, align 1
  %47 = ptrtoint ptr %msg_xfer.i119 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %spi_wbuffer.i, ptr %msg_xfer.i119, align 4
  %rx_buf.i126 = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i119, i32 0, i32 1
  %48 = ptrtoint ptr %rx_buf.i126 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %spi_rbuffer.i, ptr %rx_buf.i126, align 4
  %transfer_list.i.i127 = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i119, i32 0, i32 18
  %call.i.i.i.i128 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i127, ptr noundef nonnull %msg.i118, ptr noundef nonnull %msg.i118) #9
  br i1 %call.i.i.i.i128, label %if.end.i.i.i.i130, label %if.end62.spi_message_add_tail.exit.i134_crit_edge

if.end62.spi_message_add_tail.exit.i134_crit_edge: ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i134

if.end.i.i.i.i130:                                ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %prev.i.i.i.i120 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %transfer_list.i.i127, ptr %prev.i.i.i.i120, align 4
  %50 = ptrtoint ptr %transfer_list.i.i127 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %msg.i118, ptr %transfer_list.i.i127, align 4
  %prev3.i.i.i.i129 = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i119, i32 0, i32 18, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i.i129 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %msg.i118, ptr %prev3.i.i.i.i129, align 4
  %52 = ptrtoint ptr %msg.i118 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %transfer_list.i.i127, ptr %msg.i118, align 4
  br label %spi_message_add_tail.exit.i134

spi_message_add_tail.exit.i134:                   ; preds = %if.end.i.i.i.i130, %if.end62.spi_message_add_tail.exit.i134_crit_edge
  %53 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %spi.i, align 4
  %call.i132 = call i32 @spi_sync(ptr noundef %54, ptr noundef nonnull %msg.i118) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i132)
  %tobool.not.i133 = icmp eq i32 %call.i132, 0
  br i1 %tobool.not.i133, label %if.end69, label %if.then67

if.then67:                                        ; preds = %spi_message_add_tail.exit.i134
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i119) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i118) #9
  br label %cleanup

if.end69:                                         ; preds = %spi_message_add_tail.exit.i134
  call void @__sanitizer_cov_trace_pc() #11
  %55 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %conv64, ptr %arrayidx38, align 1
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i119) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i118) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.then67, %if.then60
  %retval.0 = phi i32 [ %13, %if.end69 ], [ %call.i, %if.then60 ], [ %call.i132, %if.then67 ]
  call void @mutex_unlock(ptr noundef %mixer_lock) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_boolean_mono_info(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_mono_switch_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  %mixer_lock = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mixer_lock, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 11, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shr6 = lshr i32 %conv, %and2
  %and7 = and i32 %shr6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %3)
  %tobool.not = icmp ugt i32 %3, 16777215
  %sub = zext i1 %tobool.not to i32
  %spec.select = xor i32 %and7, %sub
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %mixer_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_mono_switch_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %msg_xfer.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 255
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %conv = trunc i32 %and5 to i16
  %val.0 = select i1 %tobool.not, i16 0, i16 %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %tobool10.not = icmp ult i32 %3, 16777216
  %conv13 = sub nsw i16 %conv, %val.0
  %val.1 = select i1 %tobool10.not, i16 %val.0, i16 %conv13
  %conv15 = zext i16 %val.1 to i32
  %shl = shl i32 %conv15, %and2
  %mixer_lock = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mixer_lock, i32 noundef 0) #9
  %arrayidx17 = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 11, i32 %and
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx17, align 1
  %conv18 = zext i8 %7 to i32
  %shl19 = shl i32 %and5, %and2
  %neg = xor i32 %shl19, -1
  %and20 = and i32 %conv18, %neg
  %or = or i32 %shl, %and20
  %conv28 = trunc i32 %3 to i8
  %conv29 = trunc i32 %or to i8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %msg_xfer.i) #9
  %8 = getelementptr inbounds i8, ptr %msg_xfer.i, i32 12
  %9 = call ptr @memset(ptr %8, i32 0, i32 84)
  %10 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %msg_xfer.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %spi_wbuffer.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %spi_wbuffer.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv28, ptr %spi_wbuffer.i, align 4
  %arrayidx3.i = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv29, ptr %arrayidx3.i, align 1
  %20 = ptrtoint ptr %msg_xfer.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spi_wbuffer.i, ptr %msg_xfer.i, align 4
  %spi_rbuffer.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 10
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i, i32 0, i32 1
  %21 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spi_rbuffer.i, ptr %rx_buf.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %spi.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %spi_message_add_tail.exit.i.snd_at73c213_write_reg.exit_crit_edge

spi_message_add_tail.exit.i.snd_at73c213_write_reg.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_at73c213_write_reg.exit

if.then.i:                                        ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv29, ptr %arrayidx17, align 1
  br label %snd_at73c213_write_reg.exit

snd_at73c213_write_reg.exit:                      ; preds = %if.then.i, %spi_message_add_tail.exit.i.snd_at73c213_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #9
  call void @mutex_unlock(ptr noundef %mixer_lock) #9
  %conv23 = and i32 %or, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23, i32 %conv18)
  %cmp = icmp ne i32 %conv23, %conv18
  %conv27 = zext i1 %cmp to i32
  %retval.0 = select i1 %tobool.not.i, i32 %conv27, i32 %call.i
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_at73c213_pa_volume_info(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %3 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %4, 16
  %and = and i32 %shr, 255
  %sub = add nsw i32 %and, -1
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_mono_get(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 255
  %mixer_lock = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mixer_lock, i32 noundef 0) #9
  %arrayidx = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 11, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shr9 = lshr i32 %conv, %and2
  %and10 = and i32 %shr9, %and5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %tobool.not = icmp ult i32 %3, 16777216
  %sub = sub nsw i32 %and5, %and10
  %spec.select = select i1 %tobool.not, i32 %and10, i32 %sub
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %value, align 8
  tail call void @mutex_unlock(ptr noundef %mixer_lock) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_mono_put(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #2 align 64 {
entry:
  %msg.i = alloca %struct.spi_message, align 4
  %msg_xfer.i = alloca %struct.spi_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %and = and i32 %3, 255
  %shr = lshr i32 %3, 8
  %and2 = and i32 %shr, 255
  %shr4 = lshr i32 %3, 16
  %and5 = and i32 %shr4, 255
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %and10 = and i32 %and5, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %3)
  %tobool.not = icmp ult i32 %3, 16777216
  %sub = sub nsw i32 %and5, %and10
  %spec.select = select i1 %tobool.not, i32 %and10, i32 %sub
  %shl = shl i32 %spec.select, %and2
  %mixer_lock = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %mixer_lock, i32 noundef 0) #9
  %arrayidx15 = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 11, i32 %and
  %6 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx15, align 1
  %conv16 = zext i8 %7 to i32
  %shl17 = shl i32 %and5, %and2
  %neg = xor i32 %shl17, -1
  %and18 = and i32 %conv16, %neg
  %or = or i32 %shl, %and18
  %conv26 = trunc i32 %3 to i8
  %conv27 = trunc i32 %or to i8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %msg_xfer.i) #9
  %8 = getelementptr inbounds i8, ptr %msg_xfer.i, i32 12
  %9 = call ptr @memset(ptr %8, i32 0, i32 84)
  %10 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %msg_xfer.i, i32 0, i32 2
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %10, align 4
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %13 = call ptr @memset(ptr %12, i32 0, i32 40)
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %16 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %spi_wbuffer.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %spi_wbuffer.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv26, ptr %spi_wbuffer.i, align 4
  %arrayidx3.i = getelementptr %struct.snd_at73c213, ptr %1, i32 0, i32 9, i32 1
  %19 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv27, ptr %arrayidx3.i, align 1
  %20 = ptrtoint ptr %msg_xfer.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spi_wbuffer.i, ptr %msg_xfer.i, align 4
  %spi_rbuffer.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 10
  %rx_buf.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i, i32 0, i32 1
  %21 = ptrtoint ptr %rx_buf.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %spi_rbuffer.i, ptr %rx_buf.i, align 4
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i, i32 0, i32 18
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %entry.spi_message_add_tail.exit.i_crit_edge

entry.spi_message_add_tail.exit.i_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %spi_message_add_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %23 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %msg_xfer.i, i32 0, i32 18, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %25 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %spi_message_add_tail.exit.i

spi_message_add_tail.exit.i:                      ; preds = %if.end.i.i.i.i, %entry.spi_message_add_tail.exit.i_crit_edge
  %spi.i = getelementptr inbounds %struct.snd_at73c213, ptr %1, i32 0, i32 8
  %26 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %spi.i, align 4
  %call.i = call i32 @spi_sync(ptr noundef %27, ptr noundef nonnull %msg.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %spi_message_add_tail.exit.i.snd_at73c213_write_reg.exit_crit_edge

spi_message_add_tail.exit.i.snd_at73c213_write_reg.exit_crit_edge: ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %snd_at73c213_write_reg.exit

if.then.i:                                        ; preds = %spi_message_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv27, ptr %arrayidx15, align 1
  br label %snd_at73c213_write_reg.exit

snd_at73c213_write_reg.exit:                      ; preds = %if.then.i, %spi_message_add_tail.exit.i.snd_at73c213_write_reg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %msg_xfer.i) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #9
  call void @mutex_unlock(ptr noundef %mixer_lock) #9
  %conv21 = and i32 %or, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv21, i32 %conv16)
  %cmp = icmp ne i32 %conv21, %conv16
  %conv25 = zext i1 %cmp to i32
  %retval.0 = select i1 %tobool.not.i, i32 %conv25, i32 %call.i
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_at73c213_aux_capture_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 14, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 31, ptr %max, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_at73c213_line_capture_volume_info(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  store i32 14, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 31, ptr %max, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %ssc = getelementptr inbounds %struct.snd_at73c213, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 512) #9, !srcloc !100
  %8 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ssc, align 4
  %clk = getelementptr inbounds %struct.ssc_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %11) #9
  %board = getelementptr inbounds %struct.snd_at73c213, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %board, align 4
  %dac_clk = getelementptr inbounds %struct.at73c213_board_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dac_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dac_clk, align 4
  tail call void @clk_disable(ptr noundef %15) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_at73c213_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %private_data = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 8
  %board = getelementptr inbounds %struct.snd_at73c213, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %board to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %board, align 4
  %dac_clk = getelementptr inbounds %struct.at73c213_board_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %dac_clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dac_clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %7) #9
  %ssc = getelementptr inbounds %struct.snd_at73c213, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ssc, align 4
  %clk = getelementptr inbounds %struct.ssc_device, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk, align 4
  %call2 = tail call i32 @clk_enable(ptr noundef %11) #9
  %12 = ptrtoint ptr %ssc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ssc, align 4
  %regs = getelementptr inbounds %struct.ssc_device, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 256) #9, !srcloc !100
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 41)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }
attributes #13 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !25, !27, !29, !30, !32, !34, !36, !37, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !52, !53, !55, !57, !59, !60, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__initcall__kmod_snd_at73c213__248_1116_at73c213_driver_init6, !1, !"__initcall__kmod_snd_at73c213__248_1116_at73c213_driver_init6", i1 false, i1 false}
!1 = !{!"../sound/spi/at73c213.c", i32 1116, i32 1}
!2 = !{ptr @__exitcall_at73c213_driver_exit, !1, !"__exitcall_at73c213_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author249, !4, !"__UNIQUE_ID_author249", i1 false, i1 false}
!4 = !{!"../sound/spi/at73c213.c", i32 1118, i32 1}
!5 = !{ptr @__UNIQUE_ID_description250, !6, !"__UNIQUE_ID_description250", i1 false, i1 false}
!6 = !{!"../sound/spi/at73c213.c", i32 1119, i32 1}
!7 = !{ptr @__UNIQUE_ID_file251, !8, !"__UNIQUE_ID_file251", i1 false, i1 false}
!8 = !{!"../sound/spi/at73c213.c", i32 1120, i32 1}
!9 = !{ptr @__UNIQUE_ID_license252, !8, !"__UNIQUE_ID_license252", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/spi/at73c213.c", i32 1109, i32 11}
!12 = !{ptr @at73c213_driver, !13, !"at73c213_driver", i1 false, i1 false}
!13 = !{!"../sound/spi/at73c213.c", i32 1107, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/spi/at73c213.c", i32 947, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @snd_at73c213_probe.__UNIQUE_ID_ddebug244, !15, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/spi/at73c213.c", i32 952, i32 3}
!22 = !{ptr @snd_at73c213_probe.__UNIQUE_ID_ddebug245, !21, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!23 = !{ptr @snd_at73c213_probe.__UNIQUE_ID_ddebug246, !24, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!24 = !{!"../sound/spi/at73c213.c", i32 957, i32 3}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/spi/at73c213.c", i32 962, i32 26}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/spi/at73c213.c", i32 974, i32 3}
!29 = !{ptr @snd_at73c213_probe.__UNIQUE_ID_ddebug247, !28, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/spi/at73c213.c", i32 986, i32 26}
!32 = !{ptr @snd_at73c213_dev_init.ops, !33, !"ops", i1 false, i1 false}
!33 = !{!"../sound/spi/at73c213.c", i32 877, i32 37}
!34 = !{ptr @snd_at73c213_dev_init.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../sound/spi/at73c213.c", i32 887, i32 2}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @snd_at73c213_dev_init.__key.10, !38, !"__key", i1 false, i1 false}
!38 = !{!"../sound/spi/at73c213.c", i32 888, i32 2}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/spi/at73c213.c", i32 896, i32 3}
!42 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @snd_at73c213_dev_init.__UNIQUE_ID_ddebug243, !41, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!44 = !{ptr @snd_at73c213_original_image, !45, !"snd_at73c213_original_image", i1 false, i1 false}
!45 = !{!"../sound/spi/at73c213.c", i32 39, i32 17}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/spi/at73c213.c", i32 198, i32 2}
!48 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @snd_at73c213_set_bitrate._entry, !47, !"_entry", i1 false, i1 false}
!52 = !{ptr @snd_at73c213_set_bitrate._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @at73c213_playback_ops, !54, !"at73c213_playback_ops", i1 false, i1 false}
!54 = !{!"../sound/spi/at73c213.c", i32 316, i32 33}
!55 = !{ptr @snd_at73c213_playback_hw, !56, !"snd_at73c213_playback_hw", i1 false, i1 false}
!56 = !{!"../sound/spi/at73c213.c", i32 110, i32 32}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/spi/at73c213.c", i32 288, i32 3}
!59 = !{ptr @.str.19, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @snd_at73c213_pcm_trigger.__UNIQUE_ID_ddebug242, !58, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/spi/at73c213.c", i32 661, i32 1}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/spi/at73c213.c", i32 662, i32 1}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/spi/at73c213.c", i32 663, i32 1}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/spi/at73c213.c", i32 664, i32 1}
!69 = !{ptr @.str.24, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/spi/at73c213.c", i32 665, i32 1}
!71 = !{ptr @.str.25, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/spi/at73c213.c", i32 669, i32 10}
!73 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/spi/at73c213.c", i32 677, i32 1}
!75 = !{ptr @.str.27, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/spi/at73c213.c", i32 679, i32 1}
!77 = !{ptr @.str.28, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/spi/at73c213.c", i32 682, i32 10}
!79 = !{ptr @.str.29, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/spi/at73c213.c", i32 689, i32 1}
!81 = !{ptr @.str.30, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../sound/spi/at73c213.c", i32 693, i32 10}
!83 = !{ptr @.str.31, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/spi/at73c213.c", i32 701, i32 1}
!85 = !{ptr @snd_at73c213_controls, !86, !"snd_at73c213_controls", i1 false, i1 false}
!86 = !{!"../sound/spi/at73c213.c", i32 660, i32 38}
!87 = !{ptr @at73c213_pm_ops, !88, !"at73c213_pm_ops", i1 false, i1 false}
!88 = !{!"../sound/spi/at73c213.c", i32 1099, i32 8}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{!"auto-init"}
!99 = !{i64 2148747816, i64 2148747821, i64 2148747834, i64 2148747878, i64 2148747912, i64 2148747933}
!100 = !{i64 6281964}
!101 = !{i64 6282382}
