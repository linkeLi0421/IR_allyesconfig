; ModuleID = '/llk/IR_all_yes/drivers/staging/vc04_services/bcm2835-audio/bcm2835.c_pt.bc'
source_filename = "../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bcm2835_audio_drivers = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.bcm2835_audio_driver = type { %struct.device_driver, ptr, ptr, i32, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.bcm2835_chip = type { ptr, ptr, ptr, ptr, [8 x ptr], i32, i32, i32, i32, i32, %struct.mutex, ptr }

@__param_str_enable_hdmi = internal constant [24 x i8] c"snd_bcm2835.enable_hdmi\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@enable_hdmi = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_hdmi = internal constant %struct.kernel_param { ptr @__param_str_enable_hdmi, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable_hdmi } }, section "__param", align 4
@__UNIQUE_ID_enable_hdmitype230 = internal constant [38 x i8] c"snd_bcm2835.parmtype=enable_hdmi:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_hdmi231 = internal constant [63 x i8] c"snd_bcm2835.parm=enable_hdmi:Enables HDMI virtual audio device\00", section ".modinfo", align 1
@__param_str_enable_headphones = internal constant [30 x i8] c"snd_bcm2835.enable_headphones\00", align 1
@enable_headphones = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_enable_headphones = internal constant %struct.kernel_param { ptr @__param_str_enable_headphones, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable_headphones } }, section "__param", align 4
@__UNIQUE_ID_enable_headphonestype232 = internal constant [44 x i8] c"snd_bcm2835.parmtype=enable_headphones:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_headphones233 = internal constant [75 x i8] c"snd_bcm2835.parm=enable_headphones:Enables Headphones virtual audio device\00", section ".modinfo", align 1
@__param_str_enable_compat_alsa = internal constant [31 x i8] c"snd_bcm2835.enable_compat_alsa\00", align 1
@enable_compat_alsa = internal global { i8, [31 x i8] } { i8 1, [31 x i8] zeroinitializer }, align 32
@__param_enable_compat_alsa = internal constant %struct.kernel_param { ptr @__param_str_enable_compat_alsa, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.65 { ptr @enable_compat_alsa } }, section "__param", align 4
@__UNIQUE_ID_enable_compat_alsatype234 = internal constant [45 x i8] c"snd_bcm2835.parmtype=enable_compat_alsa:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_enable_compat_alsa235 = internal constant [84 x i8] c"snd_bcm2835.parm=enable_compat_alsa:Enables ALSA compatibility virtual audio device\00", section ".modinfo", align 1
@__param_str_num_channels = internal constant [25 x i8] c"snd_bcm2835.num_channels\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@num_channels = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_num_channels = internal constant %struct.kernel_param { ptr @__param_str_num_channels, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @num_channels } }, section "__param", align 4
@__UNIQUE_ID_num_channelstype236 = internal constant [38 x i8] c"snd_bcm2835.parmtype=num_channels:int\00", section ".modinfo", align 1
@__UNIQUE_ID_num_channels237 = internal constant [68 x i8] c"snd_bcm2835.parm=num_channels:Number of audio channels (default: 8)\00", section ".modinfo", align 1
@__initcall__kmod_snd_bcm2835__242_337_bcm2835_alsa_driver_init6 = internal global ptr @bcm2835_alsa_driver_init, section ".initcall6.init", align 4
@bcm2835_alsa_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @snd_bcm2835_alsa_probe, ptr null, ptr null, ptr @snd_bcm2835_alsa_suspend, ptr @snd_bcm2835_alsa_resume, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bcm2835_alsa_driver_exit = internal global ptr @bcm2835_alsa_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author243 = internal constant [30 x i8] c"snd_bcm2835.author=Dom Cobley\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [53 x i8] c"snd_bcm2835.description=Alsa driver for BCM2835 chip\00", section ".modinfo", align 1
@__UNIQUE_ID_file245 = internal constant [73 x i8] c"snd_bcm2835.file=drivers/staging/vc04_services/bcm2835-audio/snd-bcm2835\00", section ".modinfo", align 1
@__UNIQUE_ID_license246 = internal constant [24 x i8] c"snd_bcm2835.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias247 = internal constant [41 x i8] c"snd_bcm2835.alias=platform:bcm2835_audio\00", section ".modinfo", align 1
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"bcm2835_audio\00", [18 x i8] zeroinitializer }, align 32
@snd_bcm2835_alsa_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Illegal num_channels value, will use %u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"snd_bcm2835_alsa_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"drivers/staging/vc04_services/bcm2835-audio/bcm2835.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_bcm2835_alsa_probe._entry_ptr = internal global ptr @snd_bcm2835_alsa_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm2835_devm_free_vchi_ctx\00", [37 x i8] zeroinitializer }, align 32
@children_devices = internal constant { [3 x %struct.bcm2835_audio_drivers], [40 x i8] } { [3 x %struct.bcm2835_audio_drivers] [%struct.bcm2835_audio_drivers { ptr @bcm2835_audio_alsa, ptr @enable_compat_alsa }, %struct.bcm2835_audio_drivers { ptr @bcm2835_audio_hdmi, ptr @enable_hdmi }, %struct.bcm2835_audio_drivers { ptr @bcm2835_audio_headphones, ptr @enable_headphones }], [40 x i8] zeroinitializer }, align 32
@snd_add_child_devices.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 62, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd_bcm2835\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_add_child_devices\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"minchannels %d\0A\00", [16 x i8] zeroinitializer }, align 32
@snd_add_child_devices.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.10, i8 0, i8 62, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"extrachannels %d\0A\00", [46 x i8] zeroinitializer }, align 32
@snd_add_child_devices.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.11, i8 0, i8 63, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"extrachannels_per_driver %d\0A\00", [35 x i8] zeroinitializer }, align 32
@snd_add_child_devices.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.12, i8 0, i8 63, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"extrachannels_remainder %d\0A\00", [36 x i8] zeroinitializer }, align 32
@snd_add_child_devices._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.8, ptr @.str.3, i32 270, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Out of channels, needed %d but only %d left\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@snd_add_child_devices._entry_ptr = internal global ptr @snd_add_child_devices._entry, section ".printk_index", align 4
@bcm2835_audio_alsa = internal global { %struct.bcm2835_audio_driver, [60 x i8] } { %struct.bcm2835_audio_driver { %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @.str.16, ptr @.str.16, i32 2, ptr @bcm2835_audio_alsa_newpcm, ptr @snd_bcm2835_new_ctl, i32 0 }, [60 x i8] zeroinitializer }, align 32
@bcm2835_audio_hdmi = internal global { %struct.bcm2835_audio_driver, [60 x i8] } { %struct.bcm2835_audio_driver { %struct.device_driver { ptr @.str.18, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @.str.19, ptr @.str.19, i32 1, ptr @bcm2835_audio_simple_newpcm, ptr @snd_bcm2835_new_hdmi_ctl, i32 2 }, [60 x i8] zeroinitializer }, align 32
@bcm2835_audio_headphones = internal global { %struct.bcm2835_audio_driver, [60 x i8] } { %struct.bcm2835_audio_driver { %struct.device_driver { ptr @.str.20, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @.str.21, ptr @.str.21, i32 1, ptr @bcm2835_audio_simple_newpcm, ptr @snd_bcm2835_new_headphones_ctl, i32 1 }, [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm2835_alsa\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm2835 ALSA\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm2835 IEC958/HDMI\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm2835_hdmi\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bcm2835 HDMI\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm2835_headphones\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm2835 Headphones\00", [45 x i8] zeroinitializer }, align 32
@snd_add_child_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 166, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to create card\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"snd_add_child_device\00", [43 x i8] zeroinitializer }, align 32
@snd_add_child_device._entry_ptr = internal global ptr @snd_add_child_device._entry, section ".printk_index", align 4
@snd_add_child_device.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&chip->audio_mutex\00", [45 x i8] zeroinitializer }, align 32
@snd_add_child_device._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.23, ptr @.str.3, i32 190, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to create pcm, error %d\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_add_child_device._entry_ptr.27 = internal global ptr @snd_add_child_device._entry.25, section ".printk_index", align 4
@snd_add_child_device._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.23, ptr @.str.3, i32 196, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to create controls, error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_add_child_device._entry_ptr.30 = internal global ptr @snd_add_child_device._entry.28, section ".printk_index", align 4
@snd_add_child_device._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.23, ptr @.str.3, i32 202, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to register card, error %d\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_add_child_device._entry_ptr.33 = internal global ptr @snd_add_child_device._entry.31, section ".printk_index", align 4
@snd_add_child_device._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.23, ptr @.str.3, i32 210, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to add devm action, err %d\0A\00", [61 x i8] zeroinitializer }, align 32
@snd_add_child_device._entry_ptr.36 = internal global ptr @snd_add_child_device._entry.34, section ".printk_index", align 4
@snd_add_child_device._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.23, ptr @.str.3, i32 214, ptr @.str.39, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"card created with %d channels\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@snd_add_child_device._entry_ptr.40 = internal global ptr @snd_add_child_device._entry.37, section ".printk_index", align 4
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"enable_hdmi\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 12, i32 13 }
@___asan_gen_.44 = private unnamed_addr constant [18 x i8] c"enable_headphones\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 13, i32 13 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"enable_compat_alsa\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 14, i32 13 }
@___asan_gen_.50 = private unnamed_addr constant [13 x i8] c"num_channels\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 15, i32 12 }
@___asan_gen_.53 = private unnamed_addr constant [20 x i8] c"bcm2835_alsa_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 327, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 334, i32 11 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 297, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 39, i32 13 }
@___asan_gen_.80 = private unnamed_addr constant [17 x i8] c"children_devices\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 136, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 249, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 250, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 251, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 253, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 267, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [19 x i8] c"bcm2835_audio_alsa\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 93, i32 36 }
@___asan_gen_.113 = private unnamed_addr constant [19 x i8] c"bcm2835_audio_hdmi\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 105, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant [25 x i8] c"bcm2835_audio_headphones\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 118, i32 36 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 95, i32 11 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 98, i32 15 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 78, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 107, i32 11 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 110, i32 15 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 120, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 123, i32 15 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 166, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 173, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 190, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 196, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 202, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 210, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [57 x i8] c"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 214, i32 2 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_alias247, ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_enable_compat_alsa235, ptr @__UNIQUE_ID_enable_compat_alsatype234, ptr @__UNIQUE_ID_enable_hdmi231, ptr @__UNIQUE_ID_enable_hdmitype230, ptr @__UNIQUE_ID_enable_headphones233, ptr @__UNIQUE_ID_enable_headphonestype232, ptr @__UNIQUE_ID_file245, ptr @__UNIQUE_ID_license246, ptr @__UNIQUE_ID_num_channels237, ptr @__UNIQUE_ID_num_channelstype236, ptr @__exitcall_bcm2835_alsa_driver_exit, ptr @__initcall__kmod_snd_bcm2835__242_337_bcm2835_alsa_driver_init6, ptr @__param_enable_compat_alsa, ptr @__param_enable_hdmi, ptr @__param_enable_headphones, ptr @__param_num_channels, ptr @bcm2835_alsa_driver_exit, ptr @snd_add_child_device._entry, ptr @snd_add_child_device._entry.25, ptr @snd_add_child_device._entry.28, ptr @snd_add_child_device._entry.31, ptr @snd_add_child_device._entry.34, ptr @snd_add_child_device._entry.37, ptr @snd_add_child_device._entry_ptr, ptr @snd_add_child_device._entry_ptr.27, ptr @snd_add_child_device._entry_ptr.30, ptr @snd_add_child_device._entry_ptr.33, ptr @snd_add_child_device._entry_ptr.36, ptr @snd_add_child_device._entry_ptr.40, ptr @snd_add_child_devices._entry, ptr @snd_add_child_devices._entry_ptr, ptr @snd_bcm2835_alsa_probe._entry, ptr @snd_bcm2835_alsa_probe._entry_ptr, ptr @enable_hdmi, ptr @enable_headphones, ptr @enable_compat_alsa, ptr @num_channels, ptr @bcm2835_alsa_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @children_devices, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @bcm2835_audio_alsa, ptr @bcm2835_audio_hdmi, ptr @bcm2835_audio_headphones, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @snd_add_child_device.__key, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_hdmi to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_headphones to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enable_compat_alsa to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @num_channels to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_alsa_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_bcm2835_alsa_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @children_devices to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_add_child_devices._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_audio_alsa to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_audio_hdmi to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm2835_audio_headphones to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_add_child_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_add_child_device.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_add_child_device._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_add_child_device._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_add_child_device._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_add_child_device._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_add_child_device._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_alsa_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm2835_alsa_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_alsa_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @bcm2835_alsa_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_bcm2835_alsa_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %0 = load i32, ptr @num_channels, align 4
  %1 = add i32 %0, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %1)
  %2 = icmp ult i32 %1, -8
  br i1 %2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  store i32 8, ptr @num_channels, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 8) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @bcm2835_devm_free_vchi_ctx, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.6) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @bcm2835_new_vchi_ctx(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devres_free(ptr noundef nonnull %call.i) #6
  br label %cleanup

if.end4:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @devres_add(ptr noundef %dev1, ptr noundef nonnull %call.i) #6
  %3 = load i32, ptr @num_channels, align 4
  %call5 = tail call fastcc i32 @snd_add_child_devices(ptr noundef %dev1, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3.i, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -12, %if.end.cleanup_crit_edge ], [ %call1.i, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_bcm2835_alsa_suspend(ptr nocapture noundef readnone %pdev, [1 x i32] %state.coerce) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_bcm2835_alsa_resume(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_add_child_devices(ptr noundef %device, i32 noundef %numchans) unnamed_addr #2 align 64 {
entry:
  %card.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @enable_compat_alsa, align 1, !range !137
  %1 = load i8, ptr @enable_hdmi, align 1, !range !137
  %narrow = add nuw nsw i8 %0, %1
  %2 = load i8, ptr @enable_headphones, align 1, !range !137
  %narrow201 = add nuw nsw i8 %narrow, %2
  %spec.select.2 = zext i8 %narrow201 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %narrow201)
  %tobool2.not = icmp eq i8 %narrow201, 0
  br i1 %tobool2.not, label %entry.cleanup106_crit_edge, label %for.body7.preheader

entry.cleanup106_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup106

for.body7.preheader:                              ; preds = %entry
  %3 = load i8, ptr @enable_compat_alsa, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool10.not = icmp eq i8 %3, 0
  br i1 %tobool10.not, label %for.body7.preheader.for.inc15_crit_edge, label %if.then11

for.body7.preheader.for.inc15_crit_edge:          ; preds = %for.body7.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc15

if.then11:                                        ; preds = %for.body7.preheader
  call void @__sanitizer_cov_trace_pc() #8
  %4 = load i32, ptr getelementptr inbounds (%struct.bcm2835_audio_driver, ptr @bcm2835_audio_alsa, i32 0, i32 3), align 4
  br label %for.inc15

for.inc15:                                        ; preds = %if.then11, %for.body7.preheader.for.inc15_crit_edge
  %minchannels.1 = phi i32 [ %4, %if.then11 ], [ 0, %for.body7.preheader.for.inc15_crit_edge ]
  %5 = load i8, ptr @enable_hdmi, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool10.not.1 = icmp eq i8 %5, 0
  br i1 %tobool10.not.1, label %for.inc15.for.inc15.1_crit_edge, label %if.then11.1

for.inc15.for.inc15.1_crit_edge:                  ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc15.1

if.then11.1:                                      ; preds = %for.inc15
  call void @__sanitizer_cov_trace_pc() #8
  %6 = load i32, ptr getelementptr inbounds (%struct.bcm2835_audio_driver, ptr @bcm2835_audio_hdmi, i32 0, i32 3), align 4
  %add.1 = add i32 %6, %minchannels.1
  br label %for.inc15.1

for.inc15.1:                                      ; preds = %if.then11.1, %for.inc15.for.inc15.1_crit_edge
  %minchannels.1.1 = phi i32 [ %add.1, %if.then11.1 ], [ %minchannels.1, %for.inc15.for.inc15.1_crit_edge ]
  %7 = load i8, ptr @enable_headphones, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool10.not.2 = icmp eq i8 %7, 0
  br i1 %tobool10.not.2, label %for.inc15.1.for.inc15.2_crit_edge, label %if.then11.2

for.inc15.1.for.inc15.2_crit_edge:                ; preds = %for.inc15.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc15.2

if.then11.2:                                      ; preds = %for.inc15.1
  call void @__sanitizer_cov_trace_pc() #8
  %8 = load i32, ptr getelementptr inbounds (%struct.bcm2835_audio_driver, ptr @bcm2835_audio_headphones, i32 0, i32 3), align 4
  %add.2 = add i32 %8, %minchannels.1.1
  br label %for.inc15.2

for.inc15.2:                                      ; preds = %if.then11.2, %for.inc15.1.for.inc15.2_crit_edge
  %minchannels.1.2 = phi i32 [ %add.2, %if.then11.2 ], [ %minchannels.1.1, %for.inc15.1.for.inc15.2_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %minchannels.1.2, i32 %numchans)
  %cmp18 = icmp ult i32 %minchannels.1.2, %numchans
  br i1 %cmp18, label %if.then19, label %for.inc15.2.do.body_crit_edge

for.inc15.2.do.body_crit_edge:                    ; preds = %for.inc15.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then19:                                        ; preds = %for.inc15.2
  call void @__sanitizer_cov_trace_pc() #8
  %sub = sub i32 %numchans, %minchannels.1.2
  %sub.frozen = freeze i32 %sub
  %spec.select.2.frozen = freeze i32 %spec.select.2
  %div = sdiv i32 %sub.frozen, %spec.select.2.frozen
  %9 = mul i32 %div, %spec.select.2.frozen
  %rem.decomposed = sub i32 %sub.frozen, %9
  br label %do.body

do.body:                                          ; preds = %if.then19, %for.inc15.2.do.body_crit_edge
  %extrachannels.0 = phi i32 [ %sub, %if.then19 ], [ 0, %for.inc15.2.do.body_crit_edge ]
  %extrachannels_remainder.0 = phi i32 [ %rem.decomposed, %if.then19 ], [ 0, %for.inc15.2.do.body_crit_edge ]
  %extrachannels_per_driver.0 = phi i32 [ %div, %if.then19 ], [ 0, %for.inc15.2.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_add_child_devices.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_add_child_devices, %if.then24)) #6
          to label %do.body26 [label %if.then24], !srcloc !138

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_add_child_devices.__UNIQUE_ID_ddebug238, ptr noundef %device, ptr noundef nonnull @.str.9, i32 noundef %minchannels.1.2) #6
  br label %do.body26

do.body26:                                        ; preds = %if.then24, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_add_child_devices.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_add_child_devices, %if.then38)) #6
          to label %do.body42 [label %if.then38], !srcloc !138

if.then38:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_add_child_devices.__UNIQUE_ID_ddebug239, ptr noundef %device, ptr noundef nonnull @.str.10, i32 noundef %extrachannels.0) #6
  br label %do.body42

do.body42:                                        ; preds = %if.then38, %do.body26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_add_child_devices.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_add_child_devices, %if.then54)) #6
          to label %do.body58 [label %if.then54], !srcloc !138

if.then54:                                        ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_add_child_devices.__UNIQUE_ID_ddebug240, ptr noundef %device, ptr noundef nonnull @.str.11, i32 noundef %extrachannels_per_driver.0) #6
  br label %do.body58

do.body58:                                        ; preds = %if.then54, %do.body42
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @snd_add_child_devices.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@snd_add_child_devices, %if.then70)) #6
          to label %do.end73 [label %if.then70], !srcloc !138

if.then70:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @snd_add_child_devices.__UNIQUE_ID_ddebug241, ptr noundef %device, ptr noundef nonnull @.str.12, i32 noundef %extrachannels_remainder.0) #6
  br label %do.end73

do.end73:                                         ; preds = %if.then70, %do.body58
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 8
  br label %for.body76

for.body76:                                       ; preds = %for.inc103.for.body76_crit_edge, %do.end73
  %numchans.addr.0189 = phi i32 [ %numchans, %do.end73 ], [ %numchans.addr.1.ph, %for.inc103.for.body76_crit_edge ]
  %extrachannels_remainder.1188 = phi i32 [ %extrachannels_remainder.0, %do.end73 ], [ %extrachannels_remainder.2.ph, %for.inc103.for.body76_crit_edge ]
  %i.2186 = phi i32 [ 0, %do.end73 ], [ %inc104, %for.inc103.for.body76_crit_edge ]
  %is_enabled79 = getelementptr [3 x %struct.bcm2835_audio_drivers], ptr @children_devices, i32 0, i32 %i.2186, i32 1
  %10 = ptrtoint ptr %is_enabled79 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %is_enabled79, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1, !range !137
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool80.not = icmp eq i8 %13, 0
  br i1 %tobool80.not, label %for.body76.for.inc103_crit_edge, label %if.end82

for.body76.for.inc103_crit_edge:                  ; preds = %for.body76
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc103

if.end82:                                         ; preds = %for.body76
  %arrayidx78 = getelementptr [3 x %struct.bcm2835_audio_drivers], ptr @children_devices, i32 0, i32 %i.2186
  %14 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx78, align 4
  %minchannels85 = getelementptr inbounds %struct.bcm2835_audio_driver, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %minchannels85 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %minchannels85, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %numchans.addr.0189)
  %cmp86 = icmp ugt i32 %17, %numchans.addr.0189
  br i1 %cmp86, label %do.end90, label %if.end92

do.end90:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.13, i32 noundef %17, i32 noundef %numchans.addr.0189) #9
  br label %for.inc103

if.end92:                                         ; preds = %if.end82
  %add94 = add i32 %extrachannels_remainder.1188, %extrachannels_per_driver.0
  %add95 = add i32 %add94, %17
  %sub96 = sub i32 %numchans.addr.0189, %add95
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %card.i) #6
  %18 = ptrtoint ptr %card.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -1 to ptr), ptr %card.i, align 4, !annotation !139
  %call.i = call i32 @snd_card_new(ptr noundef %device, i32 noundef -1, ptr noundef null, ptr noundef null, i32 noundef 164, ptr noundef nonnull %card.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.22) #9
  br label %snd_add_child_device.exit.thread

if.end.i:                                         ; preds = %if.end92
  %19 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %card.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_card, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %private_data.i, align 8
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %22, align 4
  %dev2.i = getelementptr inbounds %struct.bcm2835_chip, ptr %22, i32 0, i32 3
  %24 = ptrtoint ptr %dev2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %device, ptr %dev2.i, align 4
  %audio_mutex.i = getelementptr inbounds %struct.bcm2835_chip, ptr %22, i32 0, i32 10
  call void @__mutex_init(ptr noundef %audio_mutex.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @snd_add_child_device.__key) #6
  %call6.i = call ptr @devres_find(ptr noundef %device, ptr noundef nonnull @bcm2835_devm_free_vchi_ctx, ptr noundef null, ptr noundef null) #6
  %vchi_ctx.i = getelementptr inbounds %struct.bcm2835_chip, ptr %22, i32 0, i32 11
  %25 = ptrtoint ptr %vchi_ctx.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call6.i, ptr %vchi_ctx.i, align 4
  %tobool.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool.not.i, label %if.end.i.error.i_crit_edge, label %if.end9.i

if.end.i.error.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %error.i

if.end9.i:                                        ; preds = %if.end.i
  %26 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %card.i, align 4
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %15, align 4
  %call11.i = call i32 @strscpy(ptr noundef %driver.i, ptr noundef %29, i32 noundef 16) #6
  %30 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %card.i, align 4
  %shortname.i = getelementptr inbounds %struct.snd_card, ptr %31, i32 0, i32 3
  %shortname13.i = getelementptr inbounds %struct.bcm2835_audio_driver, ptr %15, i32 0, i32 1
  %32 = ptrtoint ptr %shortname13.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %shortname13.i, align 4
  %call14.i = call i32 @strscpy(ptr noundef %shortname.i, ptr noundef %33, i32 noundef 32) #6
  %34 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %card.i, align 4
  %longname.i = getelementptr inbounds %struct.snd_card, ptr %35, i32 0, i32 4
  %longname16.i = getelementptr inbounds %struct.bcm2835_audio_driver, ptr %15, i32 0, i32 2
  %36 = ptrtoint ptr %longname16.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %longname16.i, align 4
  %call17.i = call i32 @strscpy(ptr noundef %longname.i, ptr noundef %37, i32 noundef 80) #6
  %newpcm.i = getelementptr inbounds %struct.bcm2835_audio_driver, ptr %15, i32 0, i32 4
  %38 = ptrtoint ptr %newpcm.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %newpcm.i, align 4
  %40 = ptrtoint ptr %shortname13.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %shortname13.i, align 4
  %route.i = getelementptr inbounds %struct.bcm2835_audio_driver, ptr %15, i32 0, i32 6
  %42 = ptrtoint ptr %route.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %route.i, align 4
  %call19.i = call i32 %39(ptr noundef %22, ptr noundef %41, i32 noundef %43, i32 noundef %add95) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool20.not.i = icmp eq i32 %call19.i, 0
  br i1 %tobool20.not.i, label %if.end25.i, label %do.end24.i

do.end24.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.26, i32 noundef %call19.i) #9
  br label %error.i

if.end25.i:                                       ; preds = %if.end9.i
  %newctl.i = getelementptr inbounds %struct.bcm2835_audio_driver, ptr %15, i32 0, i32 5
  %44 = ptrtoint ptr %newctl.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %newctl.i, align 4
  %call26.i = call i32 %45(ptr noundef %22) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %tobool27.not.i = icmp eq i32 %call26.i, 0
  br i1 %tobool27.not.i, label %if.end32.i, label %do.end31.i

do.end31.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.29, i32 noundef %call26.i) #9
  br label %error.i

if.end32.i:                                       ; preds = %if.end25.i
  %46 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %card.i, align 4
  %call33.i = call i32 @snd_card_register(ptr noundef %47) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33.i)
  %tobool34.not.i = icmp eq i32 %call33.i, 0
  br i1 %tobool34.not.i, label %if.end39.i, label %do.end38.i

do.end38.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.32, i32 noundef %call33.i) #9
  br label %error.i

if.end39.i:                                       ; preds = %if.end32.i
  %48 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %22, ptr %driver_data.i.i, align 4
  %49 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %card.i, align 4
  %call40.i = call i32 @devm_add_action(ptr noundef %device, ptr noundef nonnull @bcm2835_card_free, ptr noundef %50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %cmp41.i = icmp slt i32 %call40.i, 0
  br i1 %cmp41.i, label %do.end45.i, label %select.unfold

do.end45.i:                                       ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device, ptr noundef nonnull @.str.35, i32 noundef %call40.i) #9
  br label %error.i

error.i:                                          ; preds = %do.end45.i, %do.end38.i, %do.end31.i, %do.end24.i, %if.end.i.error.i_crit_edge
  %err.0.i = phi i32 [ %call19.i, %do.end24.i ], [ %call26.i, %do.end31.i ], [ %call33.i, %do.end38.i ], [ %call40.i, %do.end45.i ], [ -19, %if.end.i.error.i_crit_edge ]
  %51 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %card.i, align 4
  %call50.i = call i32 @snd_card_free(ptr noundef %52) #6
  br label %snd_add_child_device.exit.thread

snd_add_child_device.exit.thread:                 ; preds = %error.i, %do.end.i
  %retval.0.i155.ph = phi i32 [ %err.0.i, %error.i ], [ %call.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i) #6
  br label %cleanup106

select.unfold:                                    ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %device, ptr noundef nonnull @.str.38, i32 noundef %add95) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %card.i) #6
  br label %for.inc103

for.inc103:                                       ; preds = %select.unfold, %do.end90, %for.body76.for.inc103_crit_edge
  %extrachannels_remainder.2.ph = phi i32 [ 0, %select.unfold ], [ %extrachannels_remainder.1188, %for.body76.for.inc103_crit_edge ], [ %extrachannels_remainder.1188, %do.end90 ]
  %numchans.addr.1.ph = phi i32 [ %sub96, %select.unfold ], [ %numchans.addr.0189, %for.body76.for.inc103_crit_edge ], [ %numchans.addr.0189, %do.end90 ]
  %inc104 = add nuw nsw i32 %i.2186, 1
  %exitcond.not = icmp eq i32 %inc104, 3
  br i1 %exitcond.not, label %for.inc103.cleanup106_crit_edge, label %for.inc103.for.body76_crit_edge

for.inc103.for.body76_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body76

for.inc103.cleanup106_crit_edge:                  ; preds = %for.inc103
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup106

cleanup106:                                       ; preds = %for.inc103.cleanup106_crit_edge, %snd_add_child_device.exit.thread, %entry.cleanup106_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup106_crit_edge ], [ %retval.0.i155.ph, %snd_add_child_device.exit.thread ], [ 0, %for.inc103.cleanup106_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_devm_free_vchi_ctx(ptr nocapture noundef readnone %dev, ptr noundef %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @bcm2835_free_vchi_ctx(ptr noundef %res) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bcm2835_new_vchi_ctx(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bcm2835_free_vchi_ctx(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_audio_alsa_newpcm(ptr noundef %chip, ptr nocapture noundef readnone %name, i32 noundef %route, i32 noundef %numchannels) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %numchannels, -1
  %call = tail call i32 @snd_bcm2835_new_pcm(ptr noundef %chip, ptr noundef nonnull @.str.16, i32 noundef 0, i32 noundef 0, i32 noundef %sub, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @snd_bcm2835_new_pcm(ptr noundef %chip, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 0, i32 noundef 1, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bcm2835_new_ctl(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bcm2835_new_pcm(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm2835_audio_simple_newpcm(ptr noundef %chip, ptr noundef %name, i32 noundef %route, i32 noundef %numchannels) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_bcm2835_new_pcm(ptr noundef %chip, ptr noundef %name, i32 noundef 0, i32 noundef %route, i32 noundef %numchannels, i1 noundef zeroext false) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bcm2835_new_hdmi_ctl(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_bcm2835_new_headphones_ctl(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_find(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm2835_card_free(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @snd_card_free(ptr noundef %data) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !29, !30, !32, !34, !36, !37, !38, !39, !41, !42, !44, !46, !48, !50, !51, !52, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !66, !68, !69, !71, !72, !74, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @__param_enable_hdmi, !1, !"__param_enable_hdmi", i1 false, i1 false}
!1 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 17, i32 1}
!2 = !{ptr @__UNIQUE_ID_enable_hdmitype230, !1, !"__UNIQUE_ID_enable_hdmitype230", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_enable_hdmi231, !4, !"__UNIQUE_ID_enable_hdmi231", i1 false, i1 false}
!4 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 18, i32 1}
!5 = !{ptr @__param_enable_headphones, !6, !"__param_enable_headphones", i1 false, i1 false}
!6 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 19, i32 1}
!7 = !{ptr @__UNIQUE_ID_enable_headphonestype232, !6, !"__UNIQUE_ID_enable_headphonestype232", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_enable_headphones233, !9, !"__UNIQUE_ID_enable_headphones233", i1 false, i1 false}
!9 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 20, i32 1}
!10 = !{ptr @__param_enable_compat_alsa, !11, !"__param_enable_compat_alsa", i1 false, i1 false}
!11 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 21, i32 1}
!12 = !{ptr @__UNIQUE_ID_enable_compat_alsatype234, !11, !"__UNIQUE_ID_enable_compat_alsatype234", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_enable_compat_alsa235, !14, !"__UNIQUE_ID_enable_compat_alsa235", i1 false, i1 false}
!14 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 22, i32 1}
!15 = !{ptr @__param_num_channels, !16, !"__param_num_channels", i1 false, i1 false}
!16 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 24, i32 1}
!17 = !{ptr @__UNIQUE_ID_num_channelstype236, !16, !"__UNIQUE_ID_num_channelstype236", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_num_channels237, !19, !"__UNIQUE_ID_num_channels237", i1 false, i1 false}
!19 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 25, i32 1}
!20 = !{ptr @__initcall__kmod_snd_bcm2835__242_337_bcm2835_alsa_driver_init6, !21, !"__initcall__kmod_snd_bcm2835__242_337_bcm2835_alsa_driver_init6", i1 false, i1 false}
!21 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 337, i32 1}
!22 = !{ptr @__exitcall_bcm2835_alsa_driver_exit, !21, !"__exitcall_bcm2835_alsa_driver_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author243, !24, !"__UNIQUE_ID_author243", i1 false, i1 false}
!24 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 339, i32 1}
!25 = !{ptr @__UNIQUE_ID_description244, !26, !"__UNIQUE_ID_description244", i1 false, i1 false}
!26 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 340, i32 1}
!27 = !{ptr @__UNIQUE_ID_file245, !28, !"__UNIQUE_ID_file245", i1 false, i1 false}
!28 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 341, i32 1}
!29 = !{ptr @__UNIQUE_ID_license246, !28, !"__UNIQUE_ID_license246", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_alias247, !31, !"__UNIQUE_ID_alias247", i1 false, i1 false}
!31 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 342, i32 1}
!32 = !{ptr @enable_hdmi, !33, !"enable_hdmi", i1 false, i1 false}
!33 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 12, i32 13}
!34 = !{ptr @enable_headphones, !35, !"enable_headphones", i1 false, i1 false}
!35 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 13, i32 13}
!36 = !{ptr @__param_str_enable_hdmi, !1, !"__param_str_enable_hdmi", i1 false, i1 false}
!37 = !{ptr @__param_str_enable_headphones, !6, !"__param_str_enable_headphones", i1 false, i1 false}
!38 = !{ptr @__param_str_enable_compat_alsa, !11, !"__param_str_enable_compat_alsa", i1 false, i1 false}
!39 = !{ptr @enable_compat_alsa, !40, !"enable_compat_alsa", i1 false, i1 false}
!40 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 14, i32 13}
!41 = !{ptr @__param_str_num_channels, !16, !"__param_str_num_channels", i1 false, i1 false}
!42 = !{ptr @num_channels, !43, !"num_channels", i1 false, i1 false}
!43 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 15, i32 12}
!44 = !{ptr @.str, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 334, i32 11}
!46 = !{ptr @bcm2835_alsa_driver, !47, !"bcm2835_alsa_driver", i1 false, i1 false}
!47 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 327, i32 31}
!48 = !{ptr @.str.1, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 297, i32 3}
!50 = !{ptr @.str.2, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.4, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.5, !49, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @snd_bcm2835_alsa_probe._entry, !49, !"_entry", i1 false, i1 false}
!55 = !{ptr @snd_bcm2835_alsa_probe._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.6, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 39, i32 13}
!58 = !{ptr @.str.7, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 249, i32 2}
!60 = !{ptr @.str.8, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.9, !59, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @snd_add_child_devices.__UNIQUE_ID_ddebug238, !59, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!63 = !{ptr @.str.10, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 250, i32 2}
!65 = !{ptr @snd_add_child_devices.__UNIQUE_ID_ddebug239, !64, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!66 = !{ptr @.str.11, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 251, i32 2}
!68 = !{ptr @snd_add_child_devices.__UNIQUE_ID_ddebug240, !67, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!69 = !{ptr @.str.12, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 253, i32 2}
!71 = !{ptr @snd_add_child_devices.__UNIQUE_ID_ddebug241, !70, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!72 = !{ptr @.str.13, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 267, i32 4}
!74 = !{ptr @.str.14, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @snd_add_child_devices._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @snd_add_child_devices._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @children_devices, !78, !"children_devices", i1 false, i1 false}
!78 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 136, i32 37}
!79 = !{ptr @.str.15, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 95, i32 11}
!81 = !{ptr @.str.16, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 98, i32 15}
!83 = !{ptr @bcm2835_audio_alsa, !84, !"bcm2835_audio_alsa", i1 false, i1 false}
!84 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 93, i32 36}
!85 = !{ptr @.str.17, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 78, i32 34}
!87 = !{ptr @.str.18, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 107, i32 11}
!89 = !{ptr @.str.19, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 110, i32 15}
!91 = !{ptr @bcm2835_audio_hdmi, !92, !"bcm2835_audio_hdmi", i1 false, i1 false}
!92 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 105, i32 36}
!93 = !{ptr @.str.20, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 120, i32 11}
!95 = !{ptr @.str.21, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 123, i32 15}
!97 = !{ptr @bcm2835_audio_headphones, !98, !"bcm2835_audio_headphones", i1 false, i1 false}
!98 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 118, i32 36}
!99 = !{ptr @.str.22, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 166, i32 3}
!101 = !{ptr @.str.23, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @snd_add_child_device._entry, !100, !"_entry", i1 false, i1 false}
!103 = !{ptr @snd_add_child_device._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @snd_add_child_device.__key, !105, !"__key", i1 false, i1 false}
!105 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 173, i32 2}
!106 = !{ptr @.str.24, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.26, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 190, i32 3}
!109 = !{ptr @snd_add_child_device._entry.25, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @snd_add_child_device._entry_ptr.27, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.29, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 196, i32 3}
!113 = !{ptr @snd_add_child_device._entry.28, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @snd_add_child_device._entry_ptr.30, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.32, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 202, i32 3}
!117 = !{ptr @snd_add_child_device._entry.31, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @snd_add_child_device._entry_ptr.33, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.35, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 210, i32 3}
!121 = !{ptr @snd_add_child_device._entry.34, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @snd_add_child_device._entry_ptr.36, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.38, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/staging/vc04_services/bcm2835-audio/bcm2835.c", i32 214, i32 2}
!125 = !{ptr @.str.39, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @snd_add_child_device._entry.37, !124, !"_entry", i1 false, i1 false}
!127 = !{ptr @snd_add_child_device._entry_ptr.40, !124, !"_entry_ptr", i1 false, i1 false}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!137 = !{i8 0, i8 2}
!138 = !{i64 2148296176, i64 2148296181, i64 2148296194, i64 2148296238, i64 2148296272, i64 2148296293}
!139 = !{!"auto-init"}
