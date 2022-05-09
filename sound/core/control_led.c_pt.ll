; ModuleID = '/llk/IR_all_yes/sound/core/control_led.c_pt.bc'
source_filename = "../sound/core/control_led.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_ctl_layer_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.snd_ctl_led = type { %struct.device, %struct.list_head, ptr, i32, i32, i32, [32 x ptr] }
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
%struct.list_head = type { ptr, ptr }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.43, [64 x i8] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.43 = type { %struct.anon.46, [40 x i8] }
%struct.anon.46 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.47, [128 x i8] }
%union.anon.47 = type { %union.anon.49 }
%union.anon.49 = type { [64 x i64] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.snd_ctl_led_ctl = type { %struct.list_head, ptr, i32, ptr, i32 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.52, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.52 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_led_card = type { %struct.device, i32, ptr }

@__UNIQUE_ID_author189 = internal constant [52 x i8] c"snd_ctl_led.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description190 = internal constant [68 x i8] c"snd_ctl_led.description=ALSA control interface to LED trigger code.\00", section ".modinfo", align 1
@__UNIQUE_ID_file191 = internal constant [40 x i8] c"snd_ctl_led.file=sound/core/snd-ctl-led\00", section ".modinfo", align 1
@__UNIQUE_ID_license192 = internal constant [24 x i8] c"snd_ctl_led.license=GPL\00", section ".modinfo", align 1
@snd_ctl_led_lops = internal global { %struct.snd_ctl_layer_ops, [44 x i8] } { %struct.snd_ctl_layer_ops { ptr null, ptr @.str, ptr @snd_ctl_led_register, ptr @snd_ctl_led_disconnect, ptr @snd_ctl_led_notify }, [44 x i8] zeroinitializer }, align 32
@snd_ctl_led_card_valid = internal global { [32 x i8], [32 x i8] } zeroinitializer, align 32
@snd_ctl_leds = internal global { [2 x %struct.snd_ctl_led], [528 x i8] } { [2 x %struct.snd_ctl_led] [%struct.snd_ctl_led { %struct.device zeroinitializer, %struct.list_head zeroinitializer, ptr @.str.23, i32 0, i32 0, i32 0, [32 x ptr] zeroinitializer }, %struct.snd_ctl_led { %struct.device zeroinitializer, %struct.list_head zeroinitializer, ptr @.str.24, i32 1, i32 1, i32 0, [32 x ptr] zeroinitializer }], [528 x i8] zeroinitializer }, align 32
@snd_ctl_led_dev = internal global { %struct.device, [224 x i8] } zeroinitializer, align 32
@__initcall__kmod_snd_ctl_led__197_799_snd_ctl_led_init6 = internal global ptr @snd_ctl_led_init, section ".initcall6.init", align 4
@__exitcall_snd_ctl_led_exit = internal global ptr @snd_ctl_led_exit, section ".exitcall.exit", align 4
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"snd-ctl-led\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/core/control_led.c\00", [39 x i8] zeroinitializer }, align 32
@snd_ctl_led_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @snd_ctl_led_mutex, i64 52), ptr getelementptr (i8, ptr @snd_ctl_led_mutex, i64 52) }, ptr @snd_ctl_led_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"snd_ctl_led_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"snd_ctl_led_mutex\00", [46 x i8] zeroinitializer }, align 32
@snd_ctl_led_get.info = internal global { %struct.snd_ctl_elem_info, [80 x i8] } zeroinitializer, align 32
@snd_ctl_led_get.value = internal global { %struct.snd_ctl_elem_value, [184 x i8] } zeroinitializer, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"card%d\00", [25 x i8] zeroinitializer }, align 32
@snd_ctl_led_card_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @snd_ctl_led_card_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"led-%s\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"can't create symlink to controlC%i device\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"card\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"can't create symlink to card%i\0A\00", [32 x i8] zeroinitializer }, align 32
@snd_ctl_led_sysfs_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.1, i32 706, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013snd_ctl_led: unable to add card%d\00", [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"snd_ctl_led_sysfs_add\00", [42 x i8] zeroinitializer }, align 32
@snd_ctl_led_sysfs_add._entry_ptr = internal global ptr @snd_ctl_led_sysfs_add._entry, section ".printk_index", align 4
@snd_ctl_led_card_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @snd_ctl_led_card_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@snd_ctl_led_card_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_attach, ptr @dev_attr_detach, ptr @dev_attr_reset, ptr @dev_attr_list, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_attach = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @attach_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_detach = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @detach_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_reset = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 128, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr null, ptr @reset_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_list = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @list_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"attach\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"numid=\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"iface=\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"device=\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"subdevice=\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"name=\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"index=\00", [25 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mixer\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"detach\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"list\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%u\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"speaker\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mic\00", [28 x i8] zeroinitializer }, align 32
@sound_class = external dso_local local_unnamed_addr global ptr, align 4
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ctl-led\00", [24 x i8] zeroinitializer }, align 32
@snd_ctl_led_dev_attr_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @snd_ctl_led_dev_attr_group, ptr null], [24 x i8] zeroinitializer }, align 32
@snd_ctl_led_dev_attr_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @snd_ctl_led_dev_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@snd_ctl_led_dev_attrs = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @dev_attr_mode, ptr @dev_attr_brightness, ptr null], [20 x i8] zeroinitializer }, align 32
@dev_attr_mode = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.26, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @mode_show, ptr @mode_store }, [36 x i8] zeroinitializer }, align 32
@dev_attr_brightness = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @brightness_show, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"follow-mute\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"follow-route\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mute\00", [27 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"route\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"brightness\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.mode_show = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.29], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 6]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.41 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.42 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 8, i64 34, i64 39]
@__sancov_gen_cov_switch_values.44 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 44]
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"snd_ctl_led_lops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 733, i32 33 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"snd_ctl_led_card_valid\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 55, i32 13 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"snd_ctl_leds\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 56, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant [16 x i8] c"snd_ctl_led_dev\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 671, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 734, i32 17 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 353, i32 6 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"snd_ctl_led_mutex\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 54, i32 8 }
@___asan_gen_.74 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 106, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"value\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 107, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 689, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant [29 x i8] c"snd_ctl_led_card_attr_groups\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 666, i32 38 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 696, i32 42 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 697, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 699, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 706, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [28 x i8] c"snd_ctl_led_card_attr_group\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 662, i32 37 }
@___asan_gen_.110 = private unnamed_addr constant [23 x i8] c"snd_ctl_led_card_attrs\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 654, i32 26 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"dev_attr_attach\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"dev_attr_detach\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [15 x i8] c"dev_attr_reset\00", align 1
@___asan_gen_.122 = private unnamed_addr constant [14 x i8] c"dev_attr_list\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 649, i32 8 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 544, i32 23 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 546, i32 30 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 548, i32 30 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 550, i32 30 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 552, i32 30 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 554, i32 30 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 516, i32 27 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 650, i32 8 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 651, i32 8 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 652, i32 8 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 636, i32 29 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 58, i32 11 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 64, i32 11 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 748, i32 33 }
@___asan_gen_.170 = private unnamed_addr constant [28 x i8] c"snd_ctl_led_dev_attr_groups\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 462, i32 38 }
@___asan_gen_.173 = private unnamed_addr constant [27 x i8] c"snd_ctl_led_dev_attr_group\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 458, i32 37 }
@___asan_gen_.176 = private unnamed_addr constant [22 x i8] c"snd_ctl_led_dev_attrs\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 452, i32 26 }
@___asan_gen_.179 = private unnamed_addr constant [14 x i8] c"dev_attr_mode\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [20 x i8] c"dev_attr_brightness\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 449, i32 8 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 403, i32 31 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 404, i32 32 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 405, i32 23 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 406, i32 24 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 408, i32 22 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 422, i32 19 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 424, i32 24 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 450, i32 8 }
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.213 = private constant [28 x i8] c"../sound/core/control_led.c\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.213, i32 446, i32 22 }
@___asan_gen_.215 = private unnamed_addr constant [23 x i8] c"switch.table.mode_show\00", align 1
@llvm.compiler.used = appending global [65 x ptr] [ptr @__UNIQUE_ID_author189, ptr @__UNIQUE_ID_description190, ptr @__UNIQUE_ID_file191, ptr @__UNIQUE_ID_license192, ptr @__exitcall_snd_ctl_led_exit, ptr @__initcall__kmod_snd_ctl_led__197_799_snd_ctl_led_init6, ptr @snd_ctl_led_exit, ptr @snd_ctl_led_sysfs_add._entry, ptr @snd_ctl_led_sysfs_add._entry_ptr, ptr @snd_ctl_led_lops, ptr @snd_ctl_led_card_valid, ptr @snd_ctl_leds, ptr @snd_ctl_led_dev, ptr @.str, ptr @.str.1, ptr @snd_ctl_led_mutex, ptr @.str.2, ptr @.str.3, ptr @snd_ctl_led_get.info, ptr @snd_ctl_led_get.value, ptr @.str.4, ptr @snd_ctl_led_card_attr_groups, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @snd_ctl_led_card_attr_group, ptr @snd_ctl_led_card_attrs, ptr @dev_attr_attach, ptr @dev_attr_detach, ptr @dev_attr_reset, ptr @dev_attr_list, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @snd_ctl_led_dev_attr_groups, ptr @snd_ctl_led_dev_attr_group, ptr @snd_ctl_led_dev_attrs, ptr @dev_attr_mode, ptr @dev_attr_brightness, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.36, ptr @.str.37, ptr @switch.table.mode_show], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_led_lops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_led_card_valid to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_leds to i32), i32 2160, i32 2688, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_led_dev to i32), i32 928, i32 1152, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_led_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_led_get.info to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_led_get.value to i32), i32 712, i32 896, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_led_card_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_led_sysfs_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_led_card_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_led_card_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_attach to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_detach to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_reset to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_list to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_led_dev_attr_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_led_dev_attr_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ctl_led_dev_attrs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_mode to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_brightness to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.mode_show to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @snd_ctl_led_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @snd_ctl_disconnect_layer(ptr noundef nonnull @snd_ctl_led_lops) #14
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %card_number.018 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [32 x i8], ptr @snd_ctl_led_card_valid, i32 0, i32 %card_number.018
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call = tail call ptr @snd_card_ref(i32 noundef %card_number.018) #14
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.for.inc_crit_edge, label %if.then2

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @snd_ctl_led_sysfs_remove(ptr noundef nonnull %call)
  %card_dev.i = getelementptr inbounds %struct.snd_card, ptr %call, i32 0, i32 28
  tail call void @put_device(ptr noundef %card_dev.i) #14
  br label %for.inc

for.inc:                                          ; preds = %if.then2, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %card_number.018, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.body6, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.body6:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @device_unregister(ptr noundef nonnull @snd_ctl_leds) #14
  tail call void @device_unregister(ptr noundef getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1)) #14
  tail call void @device_unregister(ptr noundef nonnull @snd_ctl_led_dev) #14
  tail call fastcc void @snd_ctl_led_clean(ptr noundef null)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_disconnect_layer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_card_ref(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ctl_led_sysfs_remove(ptr noundef %card) unnamed_addr #3 align 64 {
entry:
  %link_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %link_name) #14
  %ctl_dev = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 12
  %0 = call ptr @memset(ptr %link_name, i32 255, i32 32)
  %1 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %card, align 8
  %arrayidx1 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 6, i32 %2
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.end

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %5 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 2), align 8
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %link_name, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %5)
  call void @sysfs_remove_link(ptr noundef %ctl_dev, ptr noundef nonnull %link_name) #14
  call void @sysfs_remove_link(ptr noundef nonnull %4, ptr noundef nonnull @.str.7) #14
  call void @device_unregister(ptr noundef nonnull %4) #14
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %card, align 8
  %arrayidx7 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 6, i32 %7
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end, %entry.for.inc_crit_edge
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %card, align 8
  %arrayidx1.1 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 6, i32 %10
  %11 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx1.1, align 4
  %tobool.not.1 = icmp eq ptr %12, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.end.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1

if.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  %13 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 2), align 8
  %call.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %link_name, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %13)
  call void @sysfs_remove_link(ptr noundef %ctl_dev, ptr noundef nonnull %link_name) #14
  call void @sysfs_remove_link(ptr noundef nonnull %12, ptr noundef nonnull @.str.7) #14
  call void @device_unregister(ptr noundef nonnull %12) #14
  %14 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %card, align 8
  %arrayidx7.1 = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 6, i32 %15
  %16 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx7.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.for.inc.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %link_name) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ctl_led_clean(ptr noundef readnone %card) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  br label %for.cond1

for.cond1:                                        ; preds = %for.cond1.backedge, %entry
  %lctl.0.in = phi ptr [ getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1), %entry ], [ %lctl.0.in.be, %for.cond1.backedge ]
  %0 = ptrtoint ptr %lctl.0.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %lctl.0 = load ptr, ptr %lctl.0.in, align 4
  %cmp3.not = icmp eq ptr %lctl.0, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1)
  br i1 %cmp3.not, label %for.cond1.for.cond1.1_crit_edge, label %for.body4

for.cond1.for.cond1.1_crit_edge:                  ; preds = %for.cond1
  br label %for.cond1.1

for.body4:                                        ; preds = %for.cond1
  br i1 %tobool.not, label %for.body4.if.then_crit_edge, label %lor.lhs.false

for.body4.if.then_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body4
  %card5 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.0, i32 0, i32 1
  %1 = ptrtoint ptr %card5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %card5, align 4
  %cmp6 = icmp eq ptr %2, %card
  br i1 %cmp6, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false.for.cond1.backedge_crit_edge

lor.lhs.false.for.cond1.backedge_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond1.backedge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

for.cond1.backedge:                               ; preds = %snd_ctl_led_ctl_destroy.exit, %lor.lhs.false.for.cond1.backedge_crit_edge
  %lctl.0.in.be = phi ptr [ %lctl.0, %lor.lhs.false.for.cond1.backedge_crit_edge ], [ getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1), %snd_ctl_led_ctl_destroy.exit ]
  br label %for.cond1

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %for.body4.if.then_crit_edge
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lctl.0) #14
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.snd_ctl_led_ctl_destroy.exit_crit_edge

if.then.snd_ctl_led_ctl_destroy.exit_crit_edge:   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ctl_led_ctl_destroy.exit

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %lctl.0, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %lctl.0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lctl.0, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %snd_ctl_led_ctl_destroy.exit

snd_ctl_led_ctl_destroy.exit:                     ; preds = %if.end.i.i.i, %if.then.snd_ctl_led_ctl_destroy.exit_crit_edge
  %9 = ptrtoint ptr %lctl.0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %lctl.0, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %lctl.0, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %lctl.0) #14
  br label %for.cond1.backedge

for.cond1.1:                                      ; preds = %for.cond1.1.backedge, %for.cond1.for.cond1.1_crit_edge
  %lctl.0.in.1 = phi ptr [ %lctl.0.in.1.be, %for.cond1.1.backedge ], [ getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1), %for.cond1.for.cond1.1_crit_edge ]
  %11 = ptrtoint ptr %lctl.0.in.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %lctl.0.1 = load ptr, ptr %lctl.0.in.1, align 4
  %cmp3.not.1 = icmp eq ptr %lctl.0.1, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1)
  br i1 %cmp3.not.1, label %for.inc12.1, label %for.body4.1

for.body4.1:                                      ; preds = %for.cond1.1
  br i1 %tobool.not, label %for.body4.1.if.then.1_crit_edge, label %lor.lhs.false.1

for.body4.1.if.then.1_crit_edge:                  ; preds = %for.body4.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.1

lor.lhs.false.1:                                  ; preds = %for.body4.1
  %card5.1 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.0.1, i32 0, i32 1
  %12 = ptrtoint ptr %card5.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card5.1, align 4
  %cmp6.1 = icmp eq ptr %13, %card
  br i1 %cmp6.1, label %lor.lhs.false.1.if.then.1_crit_edge, label %lor.lhs.false.1.for.cond1.1.backedge_crit_edge

lor.lhs.false.1.for.cond1.1.backedge_crit_edge:   ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond1.1.backedge

lor.lhs.false.1.if.then.1_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.1

for.cond1.1.backedge:                             ; preds = %snd_ctl_led_ctl_destroy.exit.1, %lor.lhs.false.1.for.cond1.1.backedge_crit_edge
  %lctl.0.in.1.be = phi ptr [ %lctl.0.1, %lor.lhs.false.1.for.cond1.1.backedge_crit_edge ], [ getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1), %snd_ctl_led_ctl_destroy.exit.1 ]
  br label %for.cond1.1

if.then.1:                                        ; preds = %lor.lhs.false.1.if.then.1_crit_edge, %for.body4.1.if.then.1_crit_edge
  %call.i.i.i.1 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lctl.0.1) #14
  br i1 %call.i.i.i.1, label %if.end.i.i.i.1, label %if.then.1.snd_ctl_led_ctl_destroy.exit.1_crit_edge

if.then.1.snd_ctl_led_ctl_destroy.exit.1_crit_edge: ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ctl_led_ctl_destroy.exit.1

if.end.i.i.i.1:                                   ; preds = %if.then.1
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %lctl.0.1, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i.i.1, align 4
  %16 = ptrtoint ptr %lctl.0.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lctl.0.1, align 4
  %prev1.i.i.i.i.1 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i.i.1, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %snd_ctl_led_ctl_destroy.exit.1

snd_ctl_led_ctl_destroy.exit.1:                   ; preds = %if.end.i.i.i.1, %if.then.1.snd_ctl_led_ctl_destroy.exit.1_crit_edge
  %20 = ptrtoint ptr %lctl.0.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %lctl.0.1, align 4
  %prev.i.i.1 = getelementptr inbounds %struct.list_head, ptr %lctl.0.1, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.1, align 4
  tail call void @kfree(ptr noundef %lctl.0.1) #14
  br label %for.cond1.1.backedge

for.inc12.1:                                      ; preds = %for.cond1.1
  call void @__sanitizer_cov_trace_pc() #16
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ctl_led_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @device_initialize(ptr noundef nonnull @snd_ctl_led_dev) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sound_class to i32))
  %0 = load ptr, ptr @sound_class, align 4
  store ptr %0, ptr getelementptr inbounds (%struct.device, ptr @snd_ctl_led_dev, i32 0, i32 33), align 4
  store ptr @snd_ctl_led_dev_release, ptr getelementptr inbounds (%struct.device, ptr @snd_ctl_led_dev, i32 0, i32 35), align 4
  %call = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull @snd_ctl_led_dev, ptr noundef nonnull @.str.25) #14
  %call1 = tail call i32 @device_add(ptr noundef nonnull @snd_ctl_led_dev) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %if.then

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @put_device(ptr noundef nonnull @snd_ctl_led_dev) #14
  br label %cleanup

for.body:                                         ; preds = %for.inc18.for.body_crit_edge, %entry.for.body_crit_edge
  %cmp13.not37 = phi i1 [ false, %for.inc18.for.body_crit_edge ], [ true, %entry.for.body_crit_edge ]
  %group.036 = phi i32 [ 1, %for.inc18.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %group.036
  %controls = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %group.036, i32 1
  %1 = ptrtoint ptr %controls to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %controls, ptr %controls, align 8
  %prev.i = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %group.036, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %controls, ptr %prev.i, align 4
  tail call void @device_initialize(ptr noundef %arrayidx) #14
  %parent = getelementptr inbounds %struct.device, ptr %arrayidx, i32 0, i32 1
  %3 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @snd_ctl_led_dev, ptr %parent, align 8
  %release = getelementptr inbounds %struct.device, ptr %arrayidx, i32 0, i32 35
  %4 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @snd_ctl_led_release, ptr %release, align 4
  %groups = getelementptr inbounds %struct.device, ptr %arrayidx, i32 0, i32 34
  %5 = ptrtoint ptr %groups to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @snd_ctl_led_dev_attr_groups, ptr %groups, align 8
  %name = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %group.036, i32 2
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 8
  %call6 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %arrayidx, ptr noundef %7) #14
  %call8 = tail call i32 @device_add(ptr noundef %arrayidx) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %for.inc18, label %if.then10

if.then10:                                        ; preds = %for.body
  tail call void @put_device(ptr noundef %arrayidx) #14
  br i1 %cmp13.not37, label %if.then10.for.end_crit_edge, label %for.body14

if.then10.for.end_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body14:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @device_unregister(ptr noundef nonnull @snd_ctl_leds) #14
  br label %for.end

for.end:                                          ; preds = %for.body14, %if.then10.for.end_crit_edge
  tail call void @device_unregister(ptr noundef nonnull @snd_ctl_led_dev) #14
  br label %cleanup

for.inc18:                                        ; preds = %for.body
  br i1 %cmp13.not37, label %for.inc18.for.body_crit_edge, label %for.end19

for.inc18.for.body_crit_edge:                     ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.end19:                                        ; preds = %for.inc18
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @snd_ctl_register_layer(ptr noundef nonnull @snd_ctl_led_lops) #14
  br label %cleanup

cleanup:                                          ; preds = %for.end19, %for.end, %if.then
  %retval.0 = phi i32 [ -12, %if.then ], [ -12, %for.end ], [ 0, %for.end19 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ctl_led_register(ptr noundef %card) #3 align 64 {
entry:
  %link_name.i = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %1)
  %cmp2 = icmp ugt i32 %1, 31
  br i1 %cmp2, label %do.end, label %if.end23, !prof !127

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 354, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

if.end23:                                         ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @snd_ctl_led_mutex, i32 noundef 0) #14
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %card, align 8
  %arrayidx = getelementptr [32 x i8], ptr @snd_ctl_led_card_valid, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %arrayidx, align 1
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #14
  %controls = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 18
  %5 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %5)
  %kctl.056 = load ptr, ptr %controls, align 4
  %cmp27.not57 = icmp eq ptr %kctl.056, %controls
  br i1 %cmp27.not57, label %if.end23.for.end39_crit_edge, label %if.end23.for.cond30.preheader_crit_edge

if.end23.for.cond30.preheader_crit_edge:          ; preds = %if.end23
  br label %for.cond30.preheader

if.end23.for.end39_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end39

for.cond.loopexit:                                ; preds = %snd_ctl_led_notify.exit.for.cond.loopexit_crit_edge, %for.cond30.preheader.for.cond.loopexit_crit_edge
  %6 = ptrtoint ptr %kctl.058 to i32
  call void @__asan_load4_noabort(i32 %6)
  %kctl.0 = load ptr, ptr %kctl.058, align 4
  %cmp27.not = icmp eq ptr %kctl.0, %controls
  br i1 %cmp27.not, label %for.cond.loopexit.for.end39_crit_edge, label %for.cond.loopexit.for.cond30.preheader_crit_edge

for.cond.loopexit.for.cond30.preheader_crit_edge: ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond30.preheader

for.cond.loopexit.for.end39_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end39

for.cond30.preheader:                             ; preds = %for.cond.loopexit.for.cond30.preheader_crit_edge, %if.end23.for.cond30.preheader_crit_edge
  %kctl.058 = phi ptr [ %kctl.0, %for.cond.loopexit.for.cond30.preheader_crit_edge ], [ %kctl.056, %if.end23.for.cond30.preheader_crit_edge ]
  %count = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl.058, i32 0, i32 2
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp3153.not = icmp eq i32 %8, 0
  br i1 %cmp3153.not, label %for.cond30.preheader.for.cond.loopexit_crit_edge, label %for.cond30.preheader.for.body32_crit_edge

for.cond30.preheader.for.body32_crit_edge:        ; preds = %for.cond30.preheader
  br label %for.body32

for.cond30.preheader.for.cond.loopexit_crit_edge: ; preds = %for.cond30.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.loopexit

for.body32:                                       ; preds = %snd_ctl_led_notify.exit.for.body32_crit_edge, %for.cond30.preheader.for.body32_crit_edge
  %ioff.054 = phi i32 [ %inc, %snd_ctl_led_notify.exit.for.body32_crit_edge ], [ 0, %for.cond30.preheader.for.body32_crit_edge ]
  %access20.i = getelementptr %struct.snd_kcontrol, ptr %kctl.058, i32 0, i32 10, i32 %ioff.054, i32 1
  %9 = ptrtoint ptr %access20.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %access20.i, align 4
  %and21.i = and i32 %10, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  br i1 %tobool22.not.i, label %for.body32.snd_ctl_led_notify.exit_crit_edge, label %if.then23.i

for.body32.snd_ctl_led_notify.exit_crit_edge:     ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ctl_led_notify.exit

if.then23.i:                                      ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef %card, i32 noundef %and21.i, ptr noundef %kctl.058, i32 noundef %ioff.054) #14
  br label %snd_ctl_led_notify.exit

snd_ctl_led_notify.exit:                          ; preds = %if.then23.i, %for.body32.snd_ctl_led_notify.exit_crit_edge
  %inc = add nuw i32 %ioff.054, 1
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 4
  %cmp31 = icmp ult i32 %inc, %12
  br i1 %cmp31, label %snd_ctl_led_notify.exit.for.body32_crit_edge, label %snd_ctl_led_notify.exit.for.cond.loopexit_crit_edge

snd_ctl_led_notify.exit.for.cond.loopexit_crit_edge: ; preds = %snd_ctl_led_notify.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.loopexit

snd_ctl_led_notify.exit.for.body32_crit_edge:     ; preds = %snd_ctl_led_notify.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body32

for.end39:                                        ; preds = %for.cond.loopexit.for.end39_crit_edge, %if.end23.for.end39_crit_edge
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef null, i32 noundef 33554432, ptr noundef null, i32 noundef 0) #14
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef null, i32 noundef 67108864, ptr noundef null, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %link_name.i) #14
  %ctl_dev.i = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 12
  %card_dev.i = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 28
  %13 = call ptr @memset(ptr %link_name.i, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 936) #17
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.end39.do.end87.i_crit_edge, label %if.end.i

for.end39.do.end87.i_crit_edge:                   ; preds = %for.end39
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end87.i

if.end.i:                                         ; preds = %for.end39
  %15 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %card, align 8
  %number1.i = getelementptr inbounds %struct.snd_ctl_led_card, ptr %call7.i.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %number1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %number1.i, align 8
  %led2.i = getelementptr inbounds %struct.snd_ctl_led_card, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %led2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @snd_ctl_leds, ptr %led2.i, align 4
  tail call void @device_initialize(ptr noundef nonnull %call7.i.i.i) #14
  %release.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 35
  %19 = ptrtoint ptr %release.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @snd_ctl_led_card_release, ptr %release.i, align 4
  %20 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %card, align 8
  %call6.i = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull @.str.4, i32 noundef %21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end.i.cerr.i_crit_edge, label %if.end9.i

if.end.i.cerr.i_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cerr.i

if.end9.i:                                        ; preds = %if.end.i
  %parent.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @snd_ctl_leds, ptr %parent.i, align 8
  %groups.i = getelementptr inbounds %struct.device, ptr %call7.i.i.i, i32 0, i32 34
  %23 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @snd_ctl_led_card_attr_groups, ptr %groups.i, align 8
  %call14.i = tail call i32 @device_add(ptr noundef nonnull %call7.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end9.i.cerr.i_crit_edge

if.end9.i.cerr.i_crit_edge:                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cerr.i

if.end17.i:                                       ; preds = %if.end9.i
  %24 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %card, align 8
  %arrayidx19.i = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 6, i32 %25
  %26 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call7.i.i.i, ptr %arrayidx19.i, align 4
  %27 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 2), align 8
  %call20.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %link_name.i, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %27) #14
  %call24.i = call i32 @sysfs_create_link(ptr noundef %ctl_dev.i, ptr noundef nonnull %call7.i.i.i, ptr noundef nonnull %link_name.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.end17.i.if.end41.i_crit_edge, label %do.end.i, !prof !128

if.end17.i.if.end41.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.i

do.end.i:                                         ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %card, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 698, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %29) #14
  br label %if.end41.i

if.end41.i:                                       ; preds = %do.end.i, %if.end17.i.if.end41.i_crit_edge
  %call52.i = call i32 @sysfs_create_link(ptr noundef nonnull %call7.i.i.i, ptr noundef %card_dev.i, ptr noundef nonnull @.str.7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.end41.i.for.inc.i_crit_edge, label %do.end69.i, !prof !128

if.end41.i.for.inc.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

do.end69.i:                                       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #16
  %30 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %card, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 700, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %31) #14
  br label %for.inc.i

cerr.i:                                           ; preds = %if.end9.i.cerr.i_crit_edge, %if.end.i.cerr.i_crit_edge
  tail call void @put_device(ptr noundef nonnull %call7.i.i.i) #14
  br label %do.end87.i

do.end87.i:                                       ; preds = %cerr.i, %for.end39.do.end87.i_crit_edge
  %32 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %card, align 8
  %call90.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %33) #18
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end87.i, %do.end69.i, %if.end41.i.for.inc.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i.1.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 936) #17
  %tobool.not.1.i = icmp eq ptr %call7.i.i.1.i, null
  br i1 %tobool.not.1.i, label %for.inc.i.do.end87.1.i_crit_edge, label %if.end.1.i

for.inc.i.do.end87.1.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end87.1.i

if.end.1.i:                                       ; preds = %for.inc.i
  %35 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %card, align 8
  %number1.1.i = getelementptr inbounds %struct.snd_ctl_led_card, ptr %call7.i.i.1.i, i32 0, i32 1
  %37 = ptrtoint ptr %number1.1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %number1.1.i, align 8
  %led2.1.i = getelementptr inbounds %struct.snd_ctl_led_card, ptr %call7.i.i.1.i, i32 0, i32 2
  %38 = ptrtoint ptr %led2.1.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1), ptr %led2.1.i, align 4
  call void @device_initialize(ptr noundef nonnull %call7.i.i.1.i) #14
  %release.1.i = getelementptr inbounds %struct.device, ptr %call7.i.i.1.i, i32 0, i32 35
  %39 = ptrtoint ptr %release.1.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @snd_ctl_led_card_release, ptr %release.1.i, align 4
  %40 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %card, align 8
  %call6.1.i = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef nonnull %call7.i.i.1.i, ptr noundef nonnull @.str.4, i32 noundef %41) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.1.i)
  %cmp7.1.i = icmp slt i32 %call6.1.i, 0
  br i1 %cmp7.1.i, label %if.end.1.i.cerr.1.i_crit_edge, label %if.end9.1.i

if.end.1.i.cerr.1.i_crit_edge:                    ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cerr.1.i

if.end9.1.i:                                      ; preds = %if.end.1.i
  %parent.1.i = getelementptr inbounds %struct.device, ptr %call7.i.i.1.i, i32 0, i32 1
  %42 = ptrtoint ptr %parent.1.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1), ptr %parent.1.i, align 8
  %groups.1.i = getelementptr inbounds %struct.device, ptr %call7.i.i.1.i, i32 0, i32 34
  %43 = ptrtoint ptr %groups.1.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @snd_ctl_led_card_attr_groups, ptr %groups.1.i, align 8
  %call14.1.i = call i32 @device_add(ptr noundef nonnull %call7.i.i.1.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.1.i)
  %tobool15.not.1.i = icmp eq i32 %call14.1.i, 0
  br i1 %tobool15.not.1.i, label %if.end17.1.i, label %if.end9.1.i.cerr.1.i_crit_edge

if.end9.1.i.cerr.1.i_crit_edge:                   ; preds = %if.end9.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cerr.1.i

if.end17.1.i:                                     ; preds = %if.end9.1.i
  %44 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %card, align 8
  %arrayidx19.1.i = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 6, i32 %45
  %46 = ptrtoint ptr %arrayidx19.1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i.1.i, ptr %arrayidx19.1.i, align 4
  %47 = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 2), align 8
  %call20.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %link_name.i, i32 noundef 32, ptr noundef nonnull @.str.5, ptr noundef %47) #14
  %call24.1.i = call i32 @sysfs_create_link(ptr noundef %ctl_dev.i, ptr noundef nonnull %call7.i.i.1.i, ptr noundef nonnull %link_name.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.1.i)
  %tobool25.not.1.i = icmp eq i32 %call24.1.i, 0
  br i1 %tobool25.not.1.i, label %if.end17.1.i.if.end41.1.i_crit_edge, label %do.end.1.i, !prof !128

if.end17.1.i.if.end41.1.i_crit_edge:              ; preds = %if.end17.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end41.1.i

do.end.1.i:                                       ; preds = %if.end17.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %48 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %card, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 698, i32 noundef 9, ptr noundef nonnull @.str.6, i32 noundef %49) #14
  br label %if.end41.1.i

if.end41.1.i:                                     ; preds = %do.end.1.i, %if.end17.1.i.if.end41.1.i_crit_edge
  %call52.1.i = call i32 @sysfs_create_link(ptr noundef nonnull %call7.i.i.1.i, ptr noundef %card_dev.i, ptr noundef nonnull @.str.7) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.1.i)
  %tobool53.not.1.i = icmp eq i32 %call52.1.i, 0
  br i1 %tobool53.not.1.i, label %if.end41.1.i.snd_ctl_led_sysfs_add.exit_crit_edge, label %do.end69.1.i, !prof !128

if.end41.1.i.snd_ctl_led_sysfs_add.exit_crit_edge: ; preds = %if.end41.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ctl_led_sysfs_add.exit

do.end69.1.i:                                     ; preds = %if.end41.1.i
  call void @__sanitizer_cov_trace_pc() #16
  %50 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %card, align 8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 700, i32 noundef 9, ptr noundef nonnull @.str.8, i32 noundef %51) #14
  br label %snd_ctl_led_sysfs_add.exit

cerr.1.i:                                         ; preds = %if.end9.1.i.cerr.1.i_crit_edge, %if.end.1.i.cerr.1.i_crit_edge
  call void @put_device(ptr noundef nonnull %call7.i.i.1.i) #14
  br label %do.end87.1.i

do.end87.1.i:                                     ; preds = %cerr.1.i, %for.inc.i.do.end87.1.i_crit_edge
  %52 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %card, align 8
  %call90.1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %53) #18
  br label %snd_ctl_led_sysfs_add.exit

snd_ctl_led_sysfs_add.exit:                       ; preds = %do.end87.1.i, %do.end69.1.i, %if.end41.1.i.snd_ctl_led_sysfs_add.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %link_name.i) #14
  br label %cleanup

cleanup:                                          ; preds = %snd_ctl_led_sysfs_add.exit, %do.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ctl_led_disconnect(ptr noundef %card) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @snd_ctl_led_sysfs_remove(ptr noundef %card)
  tail call void @mutex_lock_nested(ptr noundef nonnull @snd_ctl_led_mutex, i32 noundef 0) #14
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card, align 8
  %arrayidx = getelementptr [32 x i8], ptr @snd_ctl_led_card_valid, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  tail call fastcc void @snd_ctl_led_clean(ptr noundef %card)
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #14
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef null, i32 noundef 33554432, ptr noundef null, i32 noundef 0) #14
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef null, i32 noundef 67108864, ptr noundef null, i32 noundef 0) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ctl_led_notify(ptr noundef %card, i32 noundef %mask, ptr noundef %kctl, i32 noundef %ioff) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %mask)
  %cmp = icmp eq i32 %mask, -1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @snd_ctl_led_remove(ptr noundef %kctl, i32 noundef %ioff, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.if.end27_crit_edge, label %if.then1

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef %card, i32 noundef %call, ptr noundef null, i32 noundef 0)
  br label %if.end27

if.else:                                          ; preds = %entry
  %and = and i32 %mask, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else14, label %if.then3

if.then3:                                         ; preds = %if.else
  %access5 = getelementptr %struct.snd_kcontrol, ptr %kctl, i32 0, i32 10, i32 %ioff, i32 1
  %0 = ptrtoint ptr %access5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %access5, align 4
  %and6 = and i32 %1, 234881024
  %call7 = tail call fastcc i32 @snd_ctl_led_remove(ptr noundef %kctl, i32 noundef %ioff, i32 noundef %and6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then3.if.end10_crit_edge, label %if.then9

if.then3.if.end10_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10

if.then9:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef %card, i32 noundef %call7, ptr noundef null, i32 noundef 0)
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then3.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool11.not = icmp eq i32 %and6, 0
  br i1 %tobool11.not, label %if.end10.if.end27_crit_edge, label %if.then12

if.end10.if.end27_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef %card, i32 noundef %and6, ptr noundef %kctl, i32 noundef %ioff)
  br label %if.end27

if.else14:                                        ; preds = %if.else
  %and15 = and i32 %mask, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %cmp16.not = icmp eq i32 %and15, 0
  br i1 %cmp16.not, label %if.else14.if.end27_crit_edge, label %if.then17

if.else14.if.end27_crit_edge:                     ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then17:                                        ; preds = %if.else14
  %access20 = getelementptr %struct.snd_kcontrol, ptr %kctl, i32 0, i32 10, i32 %ioff, i32 1
  %2 = ptrtoint ptr %access20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %access20, align 4
  %and21 = and i32 %3, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.then17.if.end27_crit_edge, label %if.then23

if.then17.if.end27_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.then23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef %card, i32 noundef %and21, ptr noundef %kctl, i32 noundef %ioff)
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %if.then17.if.end27_crit_edge, %if.else14.if.end27_crit_edge, %if.then12, %if.end10.if.end27_crit_edge, %if.then1, %if.then.if.end27_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_ctl_led_set_state(ptr noundef %card, i32 noundef %access, ptr noundef %kctl, i32 noundef %ioff) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i.i = lshr i32 %access, 25
  %shr.i.i = and i32 %and.i.i, 7
  %sub.i.i = add nsw i32 %shr.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i)
  %cmp.i = icmp ugt i32 %sub.i.i, 1
  %arrayidx.i = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %sub.i.i
  %tobool.not106 = icmp eq ptr %arrayidx.i, null
  %tobool.not = or i1 %cmp.i, %tobool.not106
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @snd_ctl_led_mutex, i32 noundef 0) #14
  %tobool1.not = icmp eq ptr %card, null
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %land.lhs.true

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

land.lhs.true:                                    ; preds = %if.end
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %card, align 8
  %arrayidx = getelementptr [32 x i8], ptr @snd_ctl_led_card_valid, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.then3, label %land.lhs.true.if.end4_crit_edge

land.lhs.true.if.end4_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #14
  br label %cleanup

if.end4:                                          ; preds = %land.lhs.true.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %controls = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %sub.i.i, i32 1
  %4 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %4)
  %lctl.0109 = load ptr, ptr %controls, align 8
  %cmp.not110 = icmp eq ptr %lctl.0109, %controls
  br i1 %cmp.not110, label %if.end4.for.end_crit_edge, label %if.end4.for.body_crit_edge

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  br label %for.body

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.body:                                         ; preds = %do.body.for.body_crit_edge, %if.end4.for.body_crit_edge
  %lctl.0113 = phi ptr [ %lctl.0, %do.body.for.body_crit_edge ], [ %lctl.0109, %if.end4.for.body_crit_edge ]
  %route.0112 = phi i32 [ %route.1, %do.body.for.body_crit_edge ], [ -1, %if.end4.for.body_crit_edge ]
  %found.0.off0111 = phi i1 [ %found.1.off0, %do.body.for.body_crit_edge ], [ false, %if.end4.for.body_crit_edge ]
  %kctl6 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.0113, i32 0, i32 3
  %5 = ptrtoint ptr %kctl6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kctl6, align 4
  %cmp7 = icmp eq ptr %6, %kctl
  br i1 %cmp7, label %land.lhs.true8, label %for.body.do.body_crit_edge

for.body.do.body_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

land.lhs.true8:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  %index_offset = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.0113, i32 0, i32 4
  %7 = ptrtoint ptr %index_offset to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index_offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ioff)
  %cmp9 = icmp eq i32 %8, %ioff
  %spec.select = select i1 %cmp9, i1 true, i1 %found.0.off0111
  br label %do.body

do.body:                                          ; preds = %land.lhs.true8, %for.body.do.body_crit_edge
  %found.1.off0 = phi i1 [ %found.0.off0111, %for.body.do.body_crit_edge ], [ %spec.select, %land.lhs.true8 ]
  %call12 = tail call fastcc i32 @snd_ctl_led_get(ptr noundef %lctl.0113)
  %9 = tail call i32 @llvm.smax.i32(i32 %route.0112, i32 0)
  %cond = or i32 %call12, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13107 = icmp slt i32 %call12, 0
  %route.1 = select i1 %cmp13107, i32 %route.0112, i32 %cond
  %10 = ptrtoint ptr %lctl.0113 to i32
  call void @__asan_load4_noabort(i32 %10)
  %lctl.0 = load ptr, ptr %lctl.0113, align 4
  %cmp.not = icmp eq ptr %lctl.0, %controls
  br i1 %cmp.not, label %do.body.for.end_crit_edge, label %do.body.for.body_crit_edge

do.body.for.body_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

for.end:                                          ; preds = %do.body.for.end_crit_edge, %if.end4.for.end_crit_edge
  %found.0.off0.lcssa = phi i1 [ false, %if.end4.for.end_crit_edge ], [ %found.1.off0, %do.body.for.end_crit_edge ]
  %route.0.lcssa = phi i32 [ -1, %if.end4.for.end_crit_edge ], [ %route.1, %do.body.for.end_crit_edge ]
  %tobool24.not = icmp eq ptr %kctl, null
  %or.cond = or i1 %tobool24.not, %found.0.off0.lcssa
  %brmerge = or i1 %tobool1.not, %or.cond
  br i1 %brmerge, label %for.end.if.end52_crit_edge, label %if.then27

for.end.if.end52_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then27:                                        ; preds = %for.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %11 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3520, i32 noundef 24) #17
  %tobool29.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool29.not, label %if.then27.if.end52_crit_edge, label %if.then30

if.then27.if.end52_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then30:                                        ; preds = %if.then27
  %card31 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %card31 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %card, ptr %card31, align 8
  %access32 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %access32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %access, ptr %access32, align 4
  %kctl33 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %kctl33 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %kctl, ptr %kctl33, align 8
  %index_offset34 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %index_offset34 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %ioff, ptr %index_offset34, align 4
  %16 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %controls, align 8
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %controls, ptr noundef %17) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then30.list_add.exit_crit_edge

if.then30.list_add.exit_crit_edge:                ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #16
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %controls, ptr %prev3.i.i, align 4
  %21 = ptrtoint ptr %controls to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %call7.i.i, ptr %controls, align 8
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.then30.list_add.exit_crit_edge
  %call39 = tail call fastcc i32 @snd_ctl_led_get(ptr noundef nonnull %call7.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call39)
  %cmp40 = icmp sgt i32 %call39, -1
  br i1 %cmp40, label %if.then41, label %list_add.exit.if.end52_crit_edge

list_add.exit.if.end52_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end52

if.then41:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #16
  %22 = tail call i32 @llvm.smax.i32(i32 %route.0.lcssa, i32 0)
  %cond47 = or i32 %call39, %22
  br label %if.end52

if.end52:                                         ; preds = %if.then41, %list_add.exit.if.end52_crit_edge, %if.then27.if.end52_crit_edge, %for.end.if.end52_crit_edge
  %route.3 = phi i32 [ %route.0.lcssa, %for.end.if.end52_crit_edge ], [ %route.0.lcssa, %if.then27.if.end52_crit_edge ], [ %cond47, %if.then41 ], [ %route.0.lcssa, %list_add.exit.if.end52_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #14
  %mode = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %sub.i.i, i32 5
  %23 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mode, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %24, label %if.end52.sw.epilog_crit_edge [
    i32 2, label %if.end52.if.then59_crit_edge
    i32 3, label %sw.bb53
    i32 1, label %sw.bb54
  ]

if.end52.if.then59_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

if.end52.sw.epilog_crit_edge:                     ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

sw.bb54:                                          ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  %26 = xor i32 %route.3, -1
  %route.3.lobit.not = lshr i32 %26, 31
  %spec.select102 = xor i32 %route.3.lobit.not, %route.3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb54, %if.end52.sw.epilog_crit_edge
  %route.4 = phi i32 [ %route.3, %if.end52.sw.epilog_crit_edge ], [ %spec.select102, %sw.bb54 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %route.4)
  %cmp58 = icmp sgt i32 %route.4, -1
  br i1 %cmp58, label %sw.epilog.if.then59_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.epilog.if.then59_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then59

if.then59:                                        ; preds = %sw.epilog.if.then59_crit_edge, %sw.bb53, %if.end52.if.then59_crit_edge
  %route.4105 = phi i32 [ %route.4, %sw.epilog.if.then59_crit_edge ], [ 0, %sw.bb53 ], [ 1, %if.end52.if.then59_crit_edge ]
  %trigger_type = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %sub.i.i, i32 4
  %27 = ptrtoint ptr %trigger_type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %trigger_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %route.4105)
  %tobool60.not = icmp eq i32 %route.4105, 0
  %cond61 = zext i1 %tobool60.not to i32
  tail call void @ledtrig_audio_set(i32 noundef %28, i32 noundef %cond61) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %sw.epilog.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ctl_led_get(ptr nocapture noundef readonly %lctl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %kctl1 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl, i32 0, i32 3
  %0 = ptrtoint ptr %kctl1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kctl1, align 4
  %2 = call ptr @memset(ptr @snd_ctl_led_get.info, i32 0, i32 272)
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 1
  %3 = call ptr @memcpy(ptr @snd_ctl_led_get.info, ptr %id, i32 64)
  %index_offset = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl, i32 0, i32 4
  %4 = ptrtoint ptr %index_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index_offset, align 4
  %6 = load i32, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 0, i32 5), align 4
  %add = add i32 %6, %5
  store i32 %add, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 0, i32 5), align 4
  %7 = load i32, ptr %index_offset, align 4
  %8 = load i32, ptr @snd_ctl_led_get.info, align 8
  %add3 = add i32 %8, %7
  store i32 %add3, ptr @snd_ctl_led_get.info, align 8
  %info = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %info, align 4
  %call = tail call i32 %10(ptr noundef %1, ptr noundef nonnull @snd_ctl_led_get.info) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %11 = call ptr @memset(ptr getelementptr inbounds (%struct.snd_ctl_elem_value, ptr @snd_ctl_led_get.value, i32 0, i32 1), i32 0, i32 648)
  %12 = call ptr @memcpy(ptr @snd_ctl_led_get.value, ptr @snd_ctl_led_get.info, i32 64)
  %get = getelementptr inbounds %struct.snd_kcontrol, ptr %1, i32 0, i32 4
  %13 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get, align 4
  %call4 = tail call i32 %14(ptr noundef %1, ptr noundef nonnull @snd_ctl_led_get.value) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %15 = load i32, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 1), align 8
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %15, label %if.end7.cleanup_crit_edge [
    i32 1, label %if.end7.if.then10_crit_edge
    i32 2, label %if.end7.if.then10_crit_edge61
    i32 6, label %for.cond17.preheader
  ]

if.end7.if.then10_crit_edge61:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond17.preheader:                             ; preds = %if.end7
  %17 = load i32, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 3), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1845.not = icmp eq i32 %17, 0
  br i1 %cmp1845.not, label %for.cond17.preheader.cleanup_crit_edge, label %for.body19.lr.ph

for.cond17.preheader.cleanup_crit_edge:           ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body19.lr.ph:                                 ; preds = %for.cond17.preheader
  %18 = load i64, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 5), align 8
  br label %for.body19

if.then10:                                        ; preds = %if.end7.if.then10_crit_edge, %if.end7.if.then10_crit_edge61
  %19 = load i32, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 3), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp1148.not = icmp eq i32 %19, 0
  br i1 %cmp1148.not, label %if.then10.cleanup_crit_edge, label %for.body.lr.ph

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.then10
  %20 = load i32, ptr getelementptr inbounds (%struct.snd_ctl_elem_info, ptr @snd_ctl_led_get.info, i32 0, i32 5), align 8
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %i.049, 1
  %exitcond54.not = icmp eq i32 %inc, %19
  br i1 %exitcond54.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr [128 x i32], ptr getelementptr inbounds (%struct.snd_ctl_elem_value, ptr @snd_ctl_led_get.value, i32 0, i32 2), i32 0, i32 %i.049
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %20)
  %cmp12.not = icmp eq i32 %22, %20
  br i1 %cmp12.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.cond17:                                       ; preds = %for.body19
  %inc25 = add nuw i32 %i.146, 1
  %exitcond.not = icmp eq i32 %inc25, %17
  br i1 %exitcond.not, label %for.cond17.cleanup_crit_edge, label %for.cond17.for.body19_crit_edge

for.cond17.for.body19_crit_edge:                  ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body19

for.cond17.cleanup_crit_edge:                     ; preds = %for.cond17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

for.body19:                                       ; preds = %for.cond17.for.body19_crit_edge, %for.body19.lr.ph
  %i.146 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc25, %for.cond17.for.body19_crit_edge ]
  %arrayidx20 = getelementptr [64 x i64], ptr getelementptr inbounds (%struct.snd_ctl_elem_value, ptr @snd_ctl_led_get.value, i32 0, i32 2), i32 0, i32 %i.146
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx20, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %24, i64 %18)
  %cmp21.not = icmp eq i64 %24, %18
  br i1 %cmp21.not, label %for.cond17, label %for.body19.cleanup_crit_edge

for.body19.cleanup_crit_edge:                     ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup:                                          ; preds = %for.body19.cleanup_crit_edge, %for.cond17.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %for.cond17.preheader.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ 0, %if.end7.cleanup_crit_edge ], [ 0, %if.then10.cleanup_crit_edge ], [ 0, %for.cond17.preheader.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 1, %for.body19.cleanup_crit_edge ], [ 0, %for.cond17.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ledtrig_audio_set(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ctl_led_card_release(ptr noundef %dev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %dev) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_add(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @attach_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @set_led_id(ptr noundef %dev, ptr noundef %buf, i32 noundef %count, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_led_id(ptr nocapture noundef readonly %led_card, ptr nocapture noundef readonly %buf, i32 noundef %count, i1 noundef zeroext %attach) unnamed_addr #3 align 64 {
entry:
  %res.i167 = alloca i64, align 8
  %res.i150 = alloca i64, align 8
  %res.i136 = alloca i64, align 8
  %res.i = alloca i64, align 8
  %buf2 = alloca [256 x i8], align 1
  %id = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf2) #14
  %0 = call ptr @memset(ptr %buf2, i32 255, i32 256)
  %1 = tail call i32 @llvm.umax.i32(i32 %count, i32 3)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id) #14
  %call = call ptr @strncpy(ptr noundef nonnull %buf2, ptr noundef %buf, i32 noundef %1)
  %arrayidx = getelementptr [256 x i8], ptr %buf2, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %arrayidx, align 1
  %3 = call ptr @memset(ptr %id, i32 0, i32 64)
  %iface = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id, i32 0, i32 1
  %4 = ptrtoint ptr %iface to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 2, ptr %iface, align 4
  %index = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id, i32 0, i32 5
  %name = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id, i32 0, i32 4
  %subdevice = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id, i32 0, i32 3
  %device = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id, i32 0, i32 2
  br label %while.cond

while.cond:                                       ; preds = %if.end72.while.cond_crit_edge, %entry
  %s.0 = phi ptr [ %buf2, %entry ], [ %spec.select, %if.end72.while.cond_crit_edge ]
  %5 = ptrtoint ptr %s.0 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s.0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %while.cond.while.end83_crit_edge, label %while.body

while.cond.while.end83_crit_edge:                 ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end83

while.body:                                       ; preds = %while.cond
  %call2 = call i32 @strncasecmp(ptr noundef %s.0, ptr noundef nonnull @.str.12, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.then, label %if.else

if.then:                                          ; preds = %while.body
  %add.ptr = getelementptr i8, ptr %s.0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i) #14
  %7 = ptrtoint ptr %res.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %res.i, align 8, !annotation !129
  %call.i = call i32 @kstrtoull(ptr noundef %add.ptr, i32 noundef 10, ptr noundef nonnull %res.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %if.then.i

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %8 = ptrtoint ptr %res.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 0, ptr %res.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then.if.end.i_crit_edge
  %9 = ptrtoint ptr %res.i to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %res.i, align 8
  %conv.i = trunc i64 %10 to i32
  %11 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv.i, ptr %id, align 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i, %if.end.i
  %s.addr.0.i.i = phi ptr [ %add.ptr, %if.end.i ], [ %incdec.ptr.i.i, %while.body.i.i ]
  %12 = ptrtoint ptr %s.addr.0.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %s.addr.0.i.i, align 1
  %14 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.39)
  switch i8 %13, label %while.body.i.i [
    i8 0, label %while.cond.i.i.parse_uint.exit_crit_edge
    i8 44, label %while.cond.i.i.parse_uint.exit_crit_edge229
  ]

while.cond.i.i.parse_uint.exit_crit_edge229:      ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_uint.exit

while.cond.i.i.parse_uint.exit_crit_edge:         ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_uint.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.i.i = getelementptr i8, ptr %s.addr.0.i.i, i32 1
  br label %while.cond.i.i

parse_uint.exit:                                  ; preds = %while.cond.i.i.parse_uint.exit_crit_edge, %while.cond.i.i.parse_uint.exit_crit_edge229
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool3.not.i.i = icmp ne i8 %13, 0
  %spec.select.idx.i.i = zext i1 %tobool3.not.i.i to i32
  %spec.select.i.i = getelementptr i8, ptr %s.addr.0.i.i, i32 %spec.select.idx.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i) #14
  br label %if.end72

if.else:                                          ; preds = %while.body
  %call5 = call i32 @strncasecmp(ptr noundef %s.0, ptr noundef nonnull @.str.13, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then7, label %if.else11

if.then7:                                         ; preds = %if.else
  %add.ptr8 = getelementptr i8, ptr %s.0, i32 6
  %call.i127 = call i32 @strncasecmp(ptr noundef %add.ptr8, ptr noundef nonnull @.str.7, i32 noundef 4) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool.not.i128 = icmp eq i32 %call.i127, 0
  br i1 %tobool.not.i128, label %if.then7.if.end4.sink.split.i_crit_edge, label %if.else.i

if.then7.if.end4.sink.split.i_crit_edge:          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.sink.split.i

if.else.i:                                        ; preds = %if.then7
  %call1.i = call i32 @strncasecmp(ptr noundef %add.ptr8, ptr noundef nonnull @.str.18, i32 noundef 5) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.else.i.if.end4.sink.split.i_crit_edge, label %if.else.i.while.cond.i.i130.preheader_crit_edge

if.else.i.while.cond.i.i130.preheader_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond.i.i130.preheader

if.else.i.if.end4.sink.split.i_crit_edge:         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end4.sink.split.i

if.end4.sink.split.i:                             ; preds = %if.else.i.if.end4.sink.split.i_crit_edge, %if.then7.if.end4.sink.split.i_crit_edge
  %.sink.i = phi i32 [ 0, %if.then7.if.end4.sink.split.i_crit_edge ], [ 2, %if.else.i.if.end4.sink.split.i_crit_edge ]
  %15 = ptrtoint ptr %iface to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink.i, ptr %iface, align 4
  br label %while.cond.i.i130.preheader

while.cond.i.i130.preheader:                      ; preds = %if.end4.sink.split.i, %if.else.i.while.cond.i.i130.preheader_crit_edge
  br label %while.cond.i.i130

while.cond.i.i130:                                ; preds = %while.body.i.i132, %while.cond.i.i130.preheader
  %s.addr.0.i.i129 = phi ptr [ %incdec.ptr.i.i131, %while.body.i.i132 ], [ %add.ptr8, %while.cond.i.i130.preheader ]
  %16 = ptrtoint ptr %s.addr.0.i.i129 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %s.addr.0.i.i129, align 1
  %18 = zext i8 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.40)
  switch i8 %17, label %while.body.i.i132 [
    i8 0, label %while.cond.i.i130.parse_iface.exit_crit_edge
    i8 44, label %while.cond.i.i130.parse_iface.exit_crit_edge230
  ]

while.cond.i.i130.parse_iface.exit_crit_edge230:  ; preds = %while.cond.i.i130
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_iface.exit

while.cond.i.i130.parse_iface.exit_crit_edge:     ; preds = %while.cond.i.i130
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_iface.exit

while.body.i.i132:                                ; preds = %while.cond.i.i130
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.i.i131 = getelementptr i8, ptr %s.addr.0.i.i129, i32 1
  br label %while.cond.i.i130

parse_iface.exit:                                 ; preds = %while.cond.i.i130.parse_iface.exit_crit_edge, %while.cond.i.i130.parse_iface.exit_crit_edge230
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool3.not.i.i133 = icmp ne i8 %17, 0
  %spec.select.idx.i.i134 = zext i1 %tobool3.not.i.i133 to i32
  %spec.select.i.i135 = getelementptr i8, ptr %s.addr.0.i.i129, i32 %spec.select.idx.i.i134
  br label %if.end72

if.else11:                                        ; preds = %if.else
  %call12 = call i32 @strncasecmp(ptr noundef %s.0, ptr noundef nonnull @.str.14, i32 noundef 7)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else17

if.then14:                                        ; preds = %if.else11
  %add.ptr15 = getelementptr i8, ptr %s.0, i32 7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i136) #14
  %19 = ptrtoint ptr %res.i136 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %res.i136, align 8, !annotation !129
  %call.i137 = call i32 @kstrtoull(ptr noundef %add.ptr15, i32 noundef 10, ptr noundef nonnull %res.i136) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i137)
  %tobool.not.i138 = icmp eq i32 %call.i137, 0
  br i1 %tobool.not.i138, label %if.then14.if.end.i141_crit_edge, label %if.then.i139

if.then14.if.end.i141_crit_edge:                  ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i141

if.then.i139:                                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #16
  %20 = ptrtoint ptr %res.i136 to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 0, ptr %res.i136, align 8
  br label %if.end.i141

if.end.i141:                                      ; preds = %if.then.i139, %if.then14.if.end.i141_crit_edge
  %21 = ptrtoint ptr %res.i136 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %res.i136, align 8
  %conv.i140 = trunc i64 %22 to i32
  %23 = ptrtoint ptr %device to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %conv.i140, ptr %device, align 4
  br label %while.cond.i.i143

while.cond.i.i143:                                ; preds = %while.body.i.i145, %if.end.i141
  %s.addr.0.i.i142 = phi ptr [ %add.ptr15, %if.end.i141 ], [ %incdec.ptr.i.i144, %while.body.i.i145 ]
  %24 = ptrtoint ptr %s.addr.0.i.i142 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %s.addr.0.i.i142, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.41)
  switch i8 %25, label %while.body.i.i145 [
    i8 0, label %while.cond.i.i143.parse_uint.exit149_crit_edge
    i8 44, label %while.cond.i.i143.parse_uint.exit149_crit_edge231
  ]

while.cond.i.i143.parse_uint.exit149_crit_edge231: ; preds = %while.cond.i.i143
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_uint.exit149

while.cond.i.i143.parse_uint.exit149_crit_edge:   ; preds = %while.cond.i.i143
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_uint.exit149

while.body.i.i145:                                ; preds = %while.cond.i.i143
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.i.i144 = getelementptr i8, ptr %s.addr.0.i.i142, i32 1
  br label %while.cond.i.i143

parse_uint.exit149:                               ; preds = %while.cond.i.i143.parse_uint.exit149_crit_edge, %while.cond.i.i143.parse_uint.exit149_crit_edge231
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool3.not.i.i146 = icmp ne i8 %25, 0
  %spec.select.idx.i.i147 = zext i1 %tobool3.not.i.i146 to i32
  %spec.select.i.i148 = getelementptr i8, ptr %s.addr.0.i.i142, i32 %spec.select.idx.i.i147
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i136) #14
  br label %if.end72

if.else17:                                        ; preds = %if.else11
  %call18 = call i32 @strncasecmp(ptr noundef %s.0, ptr noundef nonnull @.str.15, i32 noundef 10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %if.else23

if.then20:                                        ; preds = %if.else17
  %add.ptr21 = getelementptr i8, ptr %s.0, i32 10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i150) #14
  %27 = ptrtoint ptr %res.i150 to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 -1, ptr %res.i150, align 8, !annotation !129
  %call.i151 = call i32 @kstrtoull(ptr noundef %add.ptr21, i32 noundef 10, ptr noundef nonnull %res.i150) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i151)
  %tobool.not.i152 = icmp eq i32 %call.i151, 0
  br i1 %tobool.not.i152, label %if.then20.if.end.i155_crit_edge, label %if.then.i153

if.then20.if.end.i155_crit_edge:                  ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i155

if.then.i153:                                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #16
  %28 = ptrtoint ptr %res.i150 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 0, ptr %res.i150, align 8
  br label %if.end.i155

if.end.i155:                                      ; preds = %if.then.i153, %if.then20.if.end.i155_crit_edge
  %29 = ptrtoint ptr %res.i150 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %res.i150, align 8
  %conv.i154 = trunc i64 %30 to i32
  %31 = ptrtoint ptr %subdevice to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %conv.i154, ptr %subdevice, align 4
  br label %while.cond.i.i157

while.cond.i.i157:                                ; preds = %while.body.i.i159, %if.end.i155
  %s.addr.0.i.i156 = phi ptr [ %add.ptr21, %if.end.i155 ], [ %incdec.ptr.i.i158, %while.body.i.i159 ]
  %32 = ptrtoint ptr %s.addr.0.i.i156 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %s.addr.0.i.i156, align 1
  %34 = zext i8 %33 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.42)
  switch i8 %33, label %while.body.i.i159 [
    i8 0, label %while.cond.i.i157.parse_uint.exit163_crit_edge
    i8 44, label %while.cond.i.i157.parse_uint.exit163_crit_edge232
  ]

while.cond.i.i157.parse_uint.exit163_crit_edge232: ; preds = %while.cond.i.i157
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_uint.exit163

while.cond.i.i157.parse_uint.exit163_crit_edge:   ; preds = %while.cond.i.i157
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_uint.exit163

while.body.i.i159:                                ; preds = %while.cond.i.i157
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.i.i158 = getelementptr i8, ptr %s.addr.0.i.i156, i32 1
  br label %while.cond.i.i157

parse_uint.exit163:                               ; preds = %while.cond.i.i157.parse_uint.exit163_crit_edge, %while.cond.i.i157.parse_uint.exit163_crit_edge232
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool3.not.i.i160 = icmp ne i8 %33, 0
  %spec.select.idx.i.i161 = zext i1 %tobool3.not.i.i160 to i32
  %spec.select.i.i162 = getelementptr i8, ptr %s.addr.0.i.i156, i32 %spec.select.idx.i.i161
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i150) #14
  br label %if.end72

if.else23:                                        ; preds = %if.else17
  %call24 = call i32 @strncasecmp(ptr noundef %s.0, ptr noundef nonnull @.str.16, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then26, label %if.else30

if.then26:                                        ; preds = %if.else23
  %add.ptr27 = getelementptr i8, ptr %s.0, i32 5
  %35 = ptrtoint ptr %add.ptr27 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %add.ptr27, align 1
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.43)
  switch i8 %36, label %if.then26.while.cond15.i_crit_edge [
    i8 34, label %if.then26.if.then.i164_crit_edge
    i8 39, label %if.then26.if.then.i164_crit_edge233
  ]

if.then26.if.then.i164_crit_edge233:              ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i164

if.then26.if.then.i164_crit_edge:                 ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then.i164

if.then26.while.cond15.i_crit_edge:               ; preds = %if.then26
  br label %while.cond15.i

if.then.i164:                                     ; preds = %if.then26.if.then.i164_crit_edge, %if.then26.if.then.i164_crit_edge233
  %s.addr.02.i = getelementptr i8, ptr %s.0, i32 6
  %38 = ptrtoint ptr %s.addr.02.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %s.addr.02.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not3.i = icmp eq i8 %39, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %39, i8 %36)
  %cmp8.not4.i = icmp eq i8 %39, %36
  %or.cond5.i = select i1 %tobool.not3.i, i1 true, i1 %cmp8.not4.i
  br i1 %or.cond5.i, label %if.then.i164.parse_string.exit_crit_edge, label %if.then.i164.while.body.i_crit_edge

if.then.i164.while.body.i_crit_edge:              ; preds = %if.then.i164
  br label %while.body.i

if.then.i164.parse_string.exit_crit_edge:         ; preds = %if.then.i164
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_string.exit

while.body.i:                                     ; preds = %if.end.i166.while.body.i_crit_edge, %if.then.i164.while.body.i_crit_edge
  %40 = phi i8 [ %43, %if.end.i166.while.body.i_crit_edge ], [ %39, %if.then.i164.while.body.i_crit_edge ]
  %s.addr.08.i = phi ptr [ %s.addr.0.i, %if.end.i166.while.body.i_crit_edge ], [ %s.addr.02.i, %if.then.i164.while.body.i_crit_edge ]
  %val_size.addr.07.i = phi i32 [ %val_size.addr.1.i, %if.end.i166.while.body.i_crit_edge ], [ 44, %if.then.i164.while.body.i_crit_edge ]
  %val.addr.06.i = phi ptr [ %val.addr.1.i, %if.end.i166.while.body.i_crit_edge ], [ %name, %if.then.i164.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val_size.addr.07.i)
  %cmp10.i = icmp ugt i32 %val_size.addr.07.i, 1
  br i1 %cmp10.i, label %if.then12.i, label %while.body.i.if.end.i166_crit_edge

while.body.i.if.end.i166_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i166

if.then12.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr13.i = getelementptr i8, ptr %val.addr.06.i, i32 1
  %41 = ptrtoint ptr %val.addr.06.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %val.addr.06.i, align 1
  %dec.i = add i32 %val_size.addr.07.i, -1
  br label %if.end.i166

if.end.i166:                                      ; preds = %if.then12.i, %while.body.i.if.end.i166_crit_edge
  %val.addr.1.i = phi ptr [ %incdec.ptr13.i, %if.then12.i ], [ %val.addr.06.i, %while.body.i.if.end.i166_crit_edge ]
  %val_size.addr.1.i = phi i32 [ %dec.i, %if.then12.i ], [ %val_size.addr.07.i, %while.body.i.if.end.i166_crit_edge ]
  %s.addr.0.i = getelementptr i8, ptr %s.addr.08.i, i32 1
  %42 = ptrtoint ptr %s.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %s.addr.0.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i165 = icmp eq i8 %43, 0
  call void @__sanitizer_cov_trace_cmp1(i8 %43, i8 %36)
  %cmp8.not.i = icmp eq i8 %43, %36
  %or.cond.i = select i1 %tobool.not.i165, i1 true, i1 %cmp8.not.i
  br i1 %or.cond.i, label %if.end.i166.parse_string.exit_crit_edge, label %if.end.i166.while.body.i_crit_edge

if.end.i166.while.body.i_crit_edge:               ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.body.i

if.end.i166.parse_string.exit_crit_edge:          ; preds = %if.end.i166
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_string.exit

while.cond15.i:                                   ; preds = %if.end29.i, %if.then26.while.cond15.i_crit_edge
  %44 = phi i8 [ %.pr.i, %if.end29.i ], [ %36, %if.then26.while.cond15.i_crit_edge ]
  %s.addr.1.i = phi ptr [ %incdec.ptr30.i, %if.end29.i ], [ %add.ptr27, %if.then26.while.cond15.i_crit_edge ]
  %val.addr.2.i = phi ptr [ %val.addr.3.i, %if.end29.i ], [ %name, %if.then26.while.cond15.i_crit_edge ]
  %val_size.addr.2.i = phi i32 [ %val_size.addr.3.i, %if.end29.i ], [ 44, %if.then26.while.cond15.i_crit_edge ]
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.44)
  switch i8 %44, label %while.body23.i [
    i8 0, label %while.cond15.i.parse_string.exit_crit_edge
    i8 44, label %while.cond15.i.parse_string.exit_crit_edge234
  ]

while.cond15.i.parse_string.exit_crit_edge234:    ; preds = %while.cond15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_string.exit

while.cond15.i.parse_string.exit_crit_edge:       ; preds = %while.cond15.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_string.exit

while.body23.i:                                   ; preds = %while.cond15.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %val_size.addr.2.i)
  %cmp24.i = icmp ugt i32 %val_size.addr.2.i, 1
  br i1 %cmp24.i, label %if.then26.i, label %while.body23.i.if.end29.i_crit_edge

while.body23.i.if.end29.i_crit_edge:              ; preds = %while.body23.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end29.i

if.then26.i:                                      ; preds = %while.body23.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr27.i = getelementptr i8, ptr %val.addr.2.i, i32 1
  %46 = ptrtoint ptr %val.addr.2.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %44, ptr %val.addr.2.i, align 1
  %dec28.i = add i32 %val_size.addr.2.i, -1
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then26.i, %while.body23.i.if.end29.i_crit_edge
  %val.addr.3.i = phi ptr [ %incdec.ptr27.i, %if.then26.i ], [ %val.addr.2.i, %while.body23.i.if.end29.i_crit_edge ]
  %val_size.addr.3.i = phi i32 [ %dec28.i, %if.then26.i ], [ %val_size.addr.2.i, %while.body23.i.if.end29.i_crit_edge ]
  %incdec.ptr30.i = getelementptr i8, ptr %s.addr.1.i, i32 1
  %47 = ptrtoint ptr %incdec.ptr30.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %.pr.i = load i8, ptr %incdec.ptr30.i, align 1
  br label %while.cond15.i

parse_string.exit:                                ; preds = %while.cond15.i.parse_string.exit_crit_edge, %while.cond15.i.parse_string.exit_crit_edge234, %if.end.i166.parse_string.exit_crit_edge, %if.then.i164.parse_string.exit_crit_edge
  %s.addr.2.i = phi ptr [ %s.addr.02.i, %if.then.i164.parse_string.exit_crit_edge ], [ %s.addr.1.i, %while.cond15.i.parse_string.exit_crit_edge ], [ %s.addr.1.i, %while.cond15.i.parse_string.exit_crit_edge234 ], [ %s.addr.0.i, %if.end.i166.parse_string.exit_crit_edge ]
  %val.addr.4.i = phi ptr [ %name, %if.then.i164.parse_string.exit_crit_edge ], [ %val.addr.2.i, %while.cond15.i.parse_string.exit_crit_edge ], [ %val.addr.2.i, %while.cond15.i.parse_string.exit_crit_edge234 ], [ %val.addr.1.i, %if.end.i166.parse_string.exit_crit_edge ]
  %48 = ptrtoint ptr %val.addr.4.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %val.addr.4.i, align 1
  %49 = ptrtoint ptr %s.addr.2.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %s.addr.2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool33.not.i = icmp ne i8 %50, 0
  %spec.select.idx.i = zext i1 %tobool33.not.i to i32
  %spec.select.i = getelementptr i8, ptr %s.addr.2.i, i32 %spec.select.idx.i
  br label %if.end72

if.else30:                                        ; preds = %if.else23
  %call31 = call i32 @strncasecmp(ptr noundef %s.0, ptr noundef nonnull @.str.17, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.else36

if.then33:                                        ; preds = %if.else30
  %add.ptr34 = getelementptr i8, ptr %s.0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res.i167) #14
  %51 = ptrtoint ptr %res.i167 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 -1, ptr %res.i167, align 8, !annotation !129
  %call.i168 = call i32 @kstrtoull(ptr noundef %add.ptr34, i32 noundef 10, ptr noundef nonnull %res.i167) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i168)
  %tobool.not.i169 = icmp eq i32 %call.i168, 0
  br i1 %tobool.not.i169, label %if.then33.if.end.i172_crit_edge, label %if.then.i170

if.then33.if.end.i172_crit_edge:                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i172

if.then.i170:                                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #16
  %52 = ptrtoint ptr %res.i167 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 0, ptr %res.i167, align 8
  br label %if.end.i172

if.end.i172:                                      ; preds = %if.then.i170, %if.then33.if.end.i172_crit_edge
  %53 = ptrtoint ptr %res.i167 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %res.i167, align 8
  %conv.i171 = trunc i64 %54 to i32
  %55 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %conv.i171, ptr %index, align 4
  br label %while.cond.i.i174

while.cond.i.i174:                                ; preds = %while.body.i.i176, %if.end.i172
  %s.addr.0.i.i173 = phi ptr [ %add.ptr34, %if.end.i172 ], [ %incdec.ptr.i.i175, %while.body.i.i176 ]
  %56 = ptrtoint ptr %s.addr.0.i.i173 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %s.addr.0.i.i173, align 1
  %58 = zext i8 %57 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.45)
  switch i8 %57, label %while.body.i.i176 [
    i8 0, label %while.cond.i.i174.parse_uint.exit180_crit_edge
    i8 44, label %while.cond.i.i174.parse_uint.exit180_crit_edge235
  ]

while.cond.i.i174.parse_uint.exit180_crit_edge235: ; preds = %while.cond.i.i174
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_uint.exit180

while.cond.i.i174.parse_uint.exit180_crit_edge:   ; preds = %while.cond.i.i174
  call void @__sanitizer_cov_trace_pc() #16
  br label %parse_uint.exit180

while.body.i.i176:                                ; preds = %while.cond.i.i174
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.i.i175 = getelementptr i8, ptr %s.addr.0.i.i173, i32 1
  br label %while.cond.i.i174

parse_uint.exit180:                               ; preds = %while.cond.i.i174.parse_uint.exit180_crit_edge, %while.cond.i.i174.parse_uint.exit180_crit_edge235
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool3.not.i.i177 = icmp ne i8 %57, 0
  %spec.select.idx.i.i178 = zext i1 %tobool3.not.i.i177 to i32
  %spec.select.i.i179 = getelementptr i8, ptr %s.addr.0.i.i173, i32 %spec.select.idx.i.i178
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res.i167) #14
  br label %if.end72

if.else36:                                        ; preds = %if.else30
  %cmp38 = icmp eq ptr %s.0, %buf2
  br i1 %cmp38, label %if.else36.while.cond40_crit_edge, label %if.else36.if.end72_crit_edge

if.else36.if.end72_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end72

if.else36.while.cond40_crit_edge:                 ; preds = %if.else36
  br label %while.cond40

while.cond40:                                     ; preds = %while.cond40.while.cond40_crit_edge, %if.else36.while.cond40_crit_edge
  %s.1 = phi ptr [ %incdec.ptr, %while.cond40.while.cond40_crit_edge ], [ %buf2, %if.else36.while.cond40_crit_edge ]
  %59 = ptrtoint ptr %s.1 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %s.1, align 1
  %61 = add i8 %60, -58
  %62 = icmp ult i8 %61, -10
  %incdec.ptr = getelementptr i8, ptr %s.1, i32 1
  br i1 %62, label %while.end, label %while.cond40.while.cond40_crit_edge

while.cond40.while.cond40_crit_edge:              ; preds = %while.cond40
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond40

while.end:                                        ; preds = %while.cond40
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool41.not = icmp eq i8 %60, 0
  br i1 %tobool41.not, label %if.then52, label %while.end.for.cond_crit_edge

while.end.for.cond_crit_edge:                     ; preds = %while.end
  br label %for.cond

if.then52:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #16
  %call55 = call fastcc ptr @parse_uint(ptr noundef nonnull %buf2, ptr noundef nonnull %id)
  br label %while.end83

for.cond:                                         ; preds = %for.cond.for.cond_crit_edge, %while.end.for.cond_crit_edge
  %s.2 = phi ptr [ %incdec.ptr60, %for.cond.for.cond_crit_edge ], [ %s.1, %while.end.for.cond_crit_edge ]
  %63 = ptrtoint ptr %s.2 to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %s.2, align 1
  %cmp58 = icmp ugt i8 %64, 31
  %incdec.ptr60 = getelementptr i8, ptr %s.2, i32 1
  br i1 %cmp58, label %for.cond.for.cond_crit_edge, label %for.end

for.cond.for.cond_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond

for.end:                                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #16
  %65 = ptrtoint ptr %s.2 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 0, ptr %s.2, align 1
  %call64 = call i32 @strscpy(ptr noundef %name, ptr noundef nonnull %buf2, i32 noundef 44) #14
  br label %while.end83

if.end72:                                         ; preds = %if.else36.if.end72_crit_edge, %parse_uint.exit180, %parse_string.exit, %parse_uint.exit163, %parse_uint.exit149, %parse_iface.exit, %parse_uint.exit
  %s.3 = phi ptr [ %s.0, %if.else36.if.end72_crit_edge ], [ %spec.select.i.i179, %parse_uint.exit180 ], [ %spec.select.i, %parse_string.exit ], [ %spec.select.i.i162, %parse_uint.exit163 ], [ %spec.select.i.i148, %parse_uint.exit149 ], [ %spec.select.i.i135, %parse_iface.exit ], [ %spec.select.i.i, %parse_uint.exit ]
  %66 = ptrtoint ptr %s.3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %s.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %67)
  %cmp74 = icmp eq i8 %67, 44
  %spec.select.idx = zext i1 %cmp74 to i32
  %spec.select = getelementptr i8, ptr %s.3, i32 %spec.select.idx
  %cmp79 = icmp eq ptr %spec.select, %s.0
  br i1 %cmp79, label %if.end72.while.end83_crit_edge, label %if.end72.while.cond_crit_edge

if.end72.while.cond_crit_edge:                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.cond

if.end72.while.end83_crit_edge:                   ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #16
  br label %while.end83

while.end83:                                      ; preds = %if.end72.while.end83_crit_edge, %for.end, %if.then52, %while.cond.while.end83_crit_edge
  %number = getelementptr inbounds %struct.snd_ctl_led_card, ptr %led_card, i32 0, i32 1
  %68 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %number, align 8
  %led = getelementptr inbounds %struct.snd_ctl_led_card, ptr %led_card, i32 0, i32 2
  %70 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %led, align 4
  %group = getelementptr inbounds %struct.snd_ctl_led, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %group, align 4
  %call.i181 = call ptr @snd_card_ref(i32 noundef %69) #14
  %tobool.not.i182 = icmp eq ptr %call.i181, null
  br i1 %tobool.not.i182, label %while.end83.snd_ctl_led_set_id.exit.thread_crit_edge, label %if.then.i185

while.end83.snd_ctl_led_set_id.exit.thread_crit_edge: ; preds = %while.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ctl_led_set_id.exit.thread

if.then.i185:                                     ; preds = %while.end83
  %controls_rwsem.i = getelementptr inbounds %struct.snd_card, ptr %call.i181, i32 0, i32 14
  call void @down_write(ptr noundef %controls_rwsem.i) #14
  %call1.i183 = call ptr @snd_ctl_find_id(ptr noundef nonnull %call.i181, ptr noundef nonnull %id) #14
  %tobool2.not.i184 = icmp eq ptr %call1.i183, null
  br i1 %tobool2.not.i184, label %if.then.i185.snd_ctl_led_set_id.exit_crit_edge, label %if.then3.i

if.then.i185.snd_ctl_led_set_id.exit_crit_edge:   ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ctl_led_set_id.exit

if.then3.i:                                       ; preds = %if.then.i185
  %74 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i.i = icmp eq i32 %75, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %id1.i.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call1.i183, i32 0, i32 1
  %76 = ptrtoint ptr %id1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %id1.i.i.i, align 4
  %sub.i.i.i = sub i32 %75, %77
  %count.i.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call1.i183, i32 0, i32 2
  %78 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %count.i.i.i, align 4
  %80 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i.i.i, i32 %79) #14, !srcloc !130
  %and.i.i.i = and i32 %80, %sub.i.i.i
  br label %snd_ctl_get_ioff.exit.i

if.else.i.i:                                      ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #16
  %81 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %index, align 4
  %index2.i.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call1.i183, i32 0, i32 1, i32 5
  %83 = ptrtoint ptr %index2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %index2.i.i.i, align 4
  %sub.i5.i.i = sub i32 %82, %84
  %count.i6.i.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call1.i183, i32 0, i32 2
  %85 = ptrtoint ptr %count.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %count.i6.i.i, align 4
  %87 = call i32 asm sideeffect "cmp\09$1, $2\0A\09sbc\09$0, $1, $1\0A", "=r,r,Ir,~{cc}"(i32 %sub.i5.i.i, i32 %86) #14, !srcloc !130
  %and.i7.i.i = and i32 %87, %sub.i5.i.i
  br label %snd_ctl_get_ioff.exit.i

snd_ctl_get_ioff.exit.i:                          ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %and.i.i.i, %if.then.i.i ], [ %and.i7.i.i, %if.else.i.i ]
  %access6.i = getelementptr %struct.snd_kcontrol, ptr %call1.i183, i32 0, i32 10, i32 %retval.0.i.i, i32 1
  %88 = ptrtoint ptr %access6.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %access6.i, align 4
  %and.i = and i32 %89, 234881024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.not.i = icmp eq i32 %and.i, 0
  %add.i.i = shl i32 %73, 25
  %shl.i.i = add i32 %add.i.i, 33554432
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %shl.i.i)
  %cmp8.not.i186 = icmp eq i32 %and.i, %shl.i.i
  %or.cond.i187 = or i1 %cmp.not.i, %cmp8.not.i186
  br i1 %or.cond.i187, label %if.end.i188, label %snd_ctl_get_ioff.exit.i.snd_ctl_led_set_id.exit_crit_edge

snd_ctl_get_ioff.exit.i.snd_ctl_led_set_id.exit_crit_edge: ; preds = %snd_ctl_get_ioff.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ctl_led_set_id.exit

if.end.i188:                                      ; preds = %snd_ctl_get_ioff.exit.i
  %and11.i = and i32 %89, -234881025
  %or.i = select i1 %attach, i32 %shl.i.i, i32 0
  %new_access.0.i = or i32 %and11.i, %or.i
  call void @__sanitizer_cov_trace_cmp4(i32 %new_access.0.i, i32 %89)
  %cmp17.not.i = icmp eq i32 %new_access.0.i, %89
  br i1 %cmp17.not.i, label %if.end.i188.snd_ctl_led_set_id.exit_crit_edge, label %if.then18.i

if.end.i188.snd_ctl_led_set_id.exit_crit_edge:    ; preds = %if.end.i188
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ctl_led_set_id.exit

if.then18.i:                                      ; preds = %if.end.i188
  %90 = ptrtoint ptr %access6.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %new_access.0.i, ptr %access6.i, align 4
  %and6.i.i = and i32 %or.i, 234881024
  %call7.i.i = call fastcc i32 @snd_ctl_led_remove(ptr noundef nonnull %call1.i183, i32 noundef %retval.0.i.i, i32 noundef %and6.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i.i)
  %tobool8.not.i.i = icmp eq i32 %call7.i.i, 0
  br i1 %tobool8.not.i.i, label %if.then18.i.if.end10.i.i_crit_edge, label %if.then9.i.i

if.then18.i.if.end10.i.i_crit_edge:               ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end10.i.i

if.then9.i.i:                                     ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @snd_ctl_led_set_state(ptr noundef nonnull %call.i181, i32 noundef %call7.i.i, ptr noundef null, i32 noundef 0) #14
  br label %if.end10.i.i

if.end10.i.i:                                     ; preds = %if.then9.i.i, %if.then18.i.if.end10.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6.i.i)
  %tobool11.not.i.i = icmp eq i32 %and6.i.i, 0
  br i1 %tobool11.not.i.i, label %if.end10.i.i.snd_ctl_led_set_id.exit_crit_edge, label %if.then12.i.i

if.end10.i.i.snd_ctl_led_set_id.exit_crit_edge:   ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ctl_led_set_id.exit

if.then12.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @snd_ctl_led_set_state(ptr noundef nonnull %call.i181, i32 noundef %and6.i.i, ptr noundef nonnull %call1.i183, i32 noundef %retval.0.i.i) #14
  br label %snd_ctl_led_set_id.exit

snd_ctl_led_set_id.exit:                          ; preds = %if.then12.i.i, %if.end10.i.i.snd_ctl_led_set_id.exit_crit_edge, %if.end.i188.snd_ctl_led_set_id.exit_crit_edge, %snd_ctl_get_ioff.exit.i.snd_ctl_led_set_id.exit_crit_edge, %if.then.i185.snd_ctl_led_set_id.exit_crit_edge
  %cmp86 = phi i1 [ true, %if.then.i185.snd_ctl_led_set_id.exit_crit_edge ], [ true, %snd_ctl_get_ioff.exit.i.snd_ctl_led_set_id.exit_crit_edge ], [ false, %if.end.i188.snd_ctl_led_set_id.exit_crit_edge ], [ false, %if.end10.i.i.snd_ctl_led_set_id.exit_crit_edge ], [ false, %if.then12.i.i ]
  %err.0.i = phi i32 [ -2, %if.then.i185.snd_ctl_led_set_id.exit_crit_edge ], [ -18, %snd_ctl_get_ioff.exit.i.snd_ctl_led_set_id.exit_crit_edge ], [ 0, %if.end.i188.snd_ctl_led_set_id.exit_crit_edge ], [ 0, %if.end10.i.i.snd_ctl_led_set_id.exit_crit_edge ], [ 0, %if.then12.i.i ]
  call void @up_write(ptr noundef %controls_rwsem.i) #14
  %card_dev.i.i = getelementptr inbounds %struct.snd_card, ptr %call.i181, i32 0, i32 28
  call void @put_device(ptr noundef %card_dev.i.i) #14
  br i1 %cmp86, label %snd_ctl_led_set_id.exit.snd_ctl_led_set_id.exit.thread_crit_edge, label %snd_ctl_led_set_id.exit._crit_edge

snd_ctl_led_set_id.exit._crit_edge:               ; preds = %snd_ctl_led_set_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %91

snd_ctl_led_set_id.exit.snd_ctl_led_set_id.exit.thread_crit_edge: ; preds = %snd_ctl_led_set_id.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ctl_led_set_id.exit.thread

snd_ctl_led_set_id.exit.thread:                   ; preds = %snd_ctl_led_set_id.exit.snd_ctl_led_set_id.exit.thread_crit_edge, %while.end83.snd_ctl_led_set_id.exit.thread_crit_edge
  %err.1.i191 = phi i32 [ %err.0.i, %snd_ctl_led_set_id.exit.snd_ctl_led_set_id.exit.thread_crit_edge ], [ -6, %while.end83.snd_ctl_led_set_id.exit.thread_crit_edge ]
  br label %91

91:                                               ; preds = %snd_ctl_led_set_id.exit.thread, %snd_ctl_led_set_id.exit._crit_edge
  %92 = phi i32 [ %err.1.i191, %snd_ctl_led_set_id.exit.thread ], [ %count, %snd_ctl_led_set_id.exit._crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id) #14
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf2) #14
  ret i32 %92
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @parse_uint(ptr noundef %s, ptr nocapture noundef writeonly %val) unnamed_addr #3 align 64 {
entry:
  %res = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %res) #14
  %0 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %res, align 8, !annotation !129
  %call = call i32 @kstrtoull(ptr noundef %s, i32 noundef 10, ptr noundef nonnull %res) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %1 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 0, ptr %res, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %res, align 8
  %conv = trunc i64 %3 to i32
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %conv, ptr %val, align 4
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i, %if.end
  %s.addr.0.i = phi ptr [ %s, %if.end ], [ %incdec.ptr.i, %while.body.i ]
  %5 = ptrtoint ptr %s.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %s.addr.0.i, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.46)
  switch i8 %6, label %while.body.i [
    i8 0, label %while.cond.i.find_eos.exit_crit_edge
    i8 44, label %while.cond.i.find_eos.exit_crit_edge3
  ]

while.cond.i.find_eos.exit_crit_edge3:            ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_eos.exit

while.cond.i.find_eos.exit_crit_edge:             ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %find_eos.exit

while.body.i:                                     ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr.i = getelementptr i8, ptr %s.addr.0.i, i32 1
  br label %while.cond.i

find_eos.exit:                                    ; preds = %while.cond.i.find_eos.exit_crit_edge, %while.cond.i.find_eos.exit_crit_edge3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool3.not.i = icmp ne i8 %6, 0
  %spec.select.idx.i = zext i1 %tobool3.not.i to i32
  %spec.select.i = getelementptr i8, ptr %s.addr.0.i, i32 %spec.select.idx.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %res) #14
  ret ptr %spec.select.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @detach_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @set_led_id(ptr noundef %dev, ptr noundef %buf, i32 noundef %count, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @reset_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef %count) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not = icmp eq i32 %count, 0
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %1)
  %cmp1 = icmp eq i8 %1, 49
  br i1 %cmp1, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %number = getelementptr inbounds %struct.snd_ctl_led_card, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 8
  %led = getelementptr inbounds %struct.snd_ctl_led_card, ptr %dev, i32 0, i32 2
  %4 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led, align 4
  %group = getelementptr inbounds %struct.snd_ctl_led, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %group, align 4
  %call.i = tail call ptr @snd_card_ref(i32 noundef %3) #14
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  tail call void @mutex_lock_nested(ptr noundef nonnull @snd_ctl_led_mutex, i32 noundef 0) #14
  %arrayidx.i = getelementptr [32 x i8], ptr @snd_ctl_led_card_valid, i32 0, i32 %3
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool1.not.i = icmp eq i8 %9, 0
  br i1 %tobool1.not.i, label %snd_ctl_led_reset.exit, label %repeat.preheader.i

repeat.preheader.i:                               ; preds = %if.end.i
  %controls.i = getelementptr [2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 %7, i32 1
  %add.i.neg.i = mul i32 %7, -33554432
  %neg.i = add i32 %add.i.neg.i, -33554433
  br label %repeat.i

repeat.i:                                         ; preds = %snd_ctl_led_ctl_destroy.exit.i, %repeat.preheader.i
  %change.0.off0.i = phi i1 [ true, %snd_ctl_led_ctl_destroy.exit.i ], [ false, %repeat.preheader.i ]
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %repeat.i
  %lctl.0.in.i = phi ptr [ %controls.i, %repeat.i ], [ %lctl.0.i, %for.body.i.for.cond.i_crit_edge ]
  %10 = ptrtoint ptr %lctl.0.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %lctl.0.i = load ptr, ptr %lctl.0.in.i, align 4
  %cmp.not.i = icmp eq ptr %lctl.0.i, %controls.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %card6.i = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.0.i, i32 0, i32 1
  %11 = ptrtoint ptr %card6.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %card6.i, align 4
  %cmp7.i = icmp eq ptr %12, %call.i
  br i1 %cmp7.i, label %if.then8.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.cond.i

if.then8.i:                                       ; preds = %for.body.i
  %kctl.i = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.0.i, i32 0, i32 3
  %13 = ptrtoint ptr %kctl.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %kctl.i, align 4
  %index_offset.i = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.0.i, i32 0, i32 4
  %15 = ptrtoint ptr %index_offset.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index_offset.i, align 4
  %access.i = getelementptr %struct.snd_kcontrol, ptr %14, i32 0, i32 10, i32 %16, i32 1
  %17 = ptrtoint ptr %access.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %access.i, align 4
  %and.i = and i32 %18, %neg.i
  store i32 %and.i, ptr %access.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %lctl.0.i) #14
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then8.i.snd_ctl_led_ctl_destroy.exit.i_crit_edge

if.then8.i.snd_ctl_led_ctl_destroy.exit.i_crit_edge: ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ctl_led_ctl_destroy.exit.i

if.end.i.i.i.i:                                   ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %lctl.0.i, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i.i.i, align 4
  %21 = ptrtoint ptr %lctl.0.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lctl.0.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %snd_ctl_led_ctl_destroy.exit.i

snd_ctl_led_ctl_destroy.exit.i:                   ; preds = %if.end.i.i.i.i, %if.then8.i.snd_ctl_led_ctl_destroy.exit.i_crit_edge
  %25 = ptrtoint ptr %lctl.0.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %lctl.0.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %lctl.0.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %lctl.0.i) #14
  br label %repeat.i

for.end.i:                                        ; preds = %for.cond.i
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #14
  br i1 %change.0.off0.i, label %if.then19.i, label %for.end.i.cleanup.sink.split_crit_edge

for.end.i.cleanup.sink.split_crit_edge:           ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.then19.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #16
  %add.i38.i = shl i32 %7, 25
  %shl.i39.i = add i32 %add.i38.i, 33554432
  tail call fastcc void @snd_ctl_led_set_state(ptr noundef null, i32 noundef %shl.i39.i, ptr noundef null, i32 noundef 0) #14
  br label %cleanup.sink.split

snd_ctl_led_reset.exit:                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #14
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %snd_ctl_led_reset.exit, %if.then19.i, %for.end.i.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -6, %snd_ctl_led_reset.exit ], [ %count, %if.then19.i ], [ %count, %for.end.i.cleanup.sink.split_crit_edge ]
  %card_dev.i40.i15 = getelementptr inbounds %struct.snd_card, ptr %call.i, i32 0, i32 28
  tail call void @put_device(ptr noundef %card_dev.i40.i15) #14
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.then.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ -6, %if.then.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @list_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %number = getelementptr inbounds %struct.snd_ctl_led_card, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %number, align 8
  %call = tail call ptr @snd_card_ref(i32 noundef %1) #14
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %call, i32 0, i32 14
  tail call void @down_read(ptr noundef %controls_rwsem) #14
  tail call void @mutex_lock_nested(ptr noundef nonnull @snd_ctl_led_mutex, i32 noundef 0) #14
  %2 = ptrtoint ptr %number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %number, align 8
  %arrayidx = getelementptr [32 x i8], ptr @snd_ctl_led_card_valid, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1, !range !126
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool2.not = icmp eq i8 %5, 0
  br i1 %tobool2.not, label %if.end.if.end28_crit_edge, label %if.then3

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then3:                                         ; preds = %if.end
  %led = getelementptr inbounds %struct.snd_ctl_led_card, ptr %dev, i32 0, i32 2
  %6 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %led, align 4
  %controls = getelementptr inbounds %struct.snd_ctl_led, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %controls to i32
  call void @__asan_load4_noabort(i32 %8)
  %lctl.058 = load ptr, ptr %controls, align 4
  %cmp.not60 = icmp eq ptr %lctl.058, %controls
  br i1 %cmp.not60, label %if.then3.if.end28_crit_edge, label %for.body.lr.ph

if.then3.if.end28_crit_edge:                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

for.body.lr.ph:                                   ; preds = %if.then3
  %sub.ptr.rhs.cast = ptrtoint ptr %buf to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %lctl.062 = phi ptr [ %lctl.058, %for.body.lr.ph ], [ %lctl.0, %for.inc.for.body_crit_edge ]
  %buf2.061 = phi ptr [ %buf, %for.body.lr.ph ], [ %buf2.2, %for.inc.for.body_crit_edge ]
  %card9 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.062, i32 0, i32 1
  %9 = ptrtoint ptr %card9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %card9, align 4
  %cmp10 = icmp eq ptr %10, %call
  br i1 %cmp10, label %if.then11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc

if.then11:                                        ; preds = %for.body
  %sub.ptr.lhs.cast = ptrtoint ptr %buf2.061 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 4080, i32 %sub.ptr.sub)
  %cmp12 = icmp ugt i32 %sub.ptr.sub, 4080
  br i1 %cmp12, label %if.then11.if.end28_crit_edge, label %if.end14

if.then11.if.end28_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.end14:                                         ; preds = %if.then11
  %cmp15.not = icmp eq ptr %buf2.061, %buf
  br i1 %cmp15.not, label %if.end14.if.end17_crit_edge, label %if.then16

if.end14.if.end17_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end17

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #16
  %incdec.ptr = getelementptr i8, ptr %buf2.061, i32 1
  %11 = ptrtoint ptr %buf2.061 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 32, ptr %buf2.061, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end14.if.end17_crit_edge
  %buf2.1 = phi ptr [ %incdec.ptr, %if.then16 ], [ %buf, %if.end14.if.end17_crit_edge ]
  %kctl = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.062, i32 0, i32 3
  %12 = ptrtoint ptr %kctl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %kctl, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %index_offset = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.062, i32 0, i32 4
  %16 = ptrtoint ptr %index_offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %index_offset, align 4
  %add = add i32 %17, %15
  %call18 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf2.1, i32 noundef 15, ptr noundef nonnull @.str.22, i32 noundef %add) #14
  %arrayidx19 = getelementptr i8, ptr %buf2.1, i32 %call18
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %arrayidx19, align 1
  %add20 = add i32 %call18, 1
  %add.ptr21 = getelementptr i8, ptr %buf2.1, i32 %add20
  br label %for.inc

for.inc:                                          ; preds = %if.end17, %for.body.for.inc_crit_edge
  %buf2.2 = phi ptr [ %add.ptr21, %if.end17 ], [ %buf2.061, %for.body.for.inc_crit_edge ]
  %19 = ptrtoint ptr %lctl.062 to i32
  call void @__asan_load4_noabort(i32 %19)
  %lctl.0 = load ptr, ptr %lctl.062, align 4
  %20 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %led, align 4
  %controls8 = getelementptr inbounds %struct.snd_ctl_led, ptr %21, i32 0, i32 1
  %cmp.not = icmp eq ptr %lctl.0, %controls8
  br i1 %cmp.not, label %for.inc.if.end28_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body

for.inc.if.end28_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.end28:                                         ; preds = %for.inc.if.end28_crit_edge, %if.then11.if.end28_crit_edge, %if.then3.if.end28_crit_edge, %if.end.if.end28_crit_edge
  %buf2.3 = phi ptr [ %buf, %if.end.if.end28_crit_edge ], [ %buf, %if.then3.if.end28_crit_edge ], [ %buf2.061, %if.then11.if.end28_crit_edge ], [ %buf2.2, %for.inc.if.end28_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #14
  tail call void @up_read(ptr noundef %controls_rwsem) #14
  %card_dev.i = getelementptr inbounds %struct.snd_card, ptr %call, i32 0, i32 28
  tail call void @put_device(ptr noundef %card_dev.i) #14
  %sub.ptr.lhs.cast30 = ptrtoint ptr %buf2.3 to i32
  %sub.ptr.rhs.cast31 = ptrtoint ptr %buf to i32
  %sub.ptr.sub32 = sub i32 %sub.ptr.lhs.cast30, %sub.ptr.rhs.cast31
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %sub.ptr.sub32, %if.end28 ], [ -6, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_ctl_led_remove(ptr noundef readnone %kctl, i32 noundef %ioff, i32 noundef %access) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @snd_ctl_led_mutex, i32 noundef 0) #14
  %lctl.026.i = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1), align 8
  %cmp3.not27.i = icmp eq ptr %lctl.026.i, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1)
  br i1 %cmp3.not27.i, label %entry.for.inc13.i_crit_edge, label %entry.for.body4.i_crit_edge

entry.for.body4.i_crit_edge:                      ; preds = %entry
  br label %for.body4.i

entry.for.inc13.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc13.i

for.body4.i:                                      ; preds = %for.inc.i.for.body4.i_crit_edge, %entry.for.body4.i_crit_edge
  %lctl.028.i = phi ptr [ %lctl.0.i, %for.inc.i.for.body4.i_crit_edge ], [ %lctl.026.i, %entry.for.body4.i_crit_edge ]
  %kctl5.i = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.028.i, i32 0, i32 3
  %0 = ptrtoint ptr %kctl5.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %kctl5.i, align 4
  %cmp6.i = icmp eq ptr %1, %kctl
  br i1 %cmp6.i, label %land.lhs.true.i, label %for.body4.i.for.inc.i_crit_edge

for.body4.i.for.inc.i_crit_edge:                  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body4.i
  %index_offset.i = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.028.i, i32 0, i32 4
  %2 = ptrtoint ptr %index_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %index_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %ioff)
  %cmp7.i = icmp eq i32 %3, %ioff
  br i1 %cmp7.i, label %land.lhs.true.i.snd_ctl_led_find.exit_crit_edge, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.i

land.lhs.true.i.snd_ctl_led_find.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ctl_led_find.exit

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body4.i.for.inc.i_crit_edge
  %4 = ptrtoint ptr %lctl.028.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %lctl.0.i = load ptr, ptr %lctl.028.i, align 4
  %cmp3.not.i = icmp eq ptr %lctl.0.i, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 0, i32 1)
  br i1 %cmp3.not.i, label %for.inc.i.for.inc13.i_crit_edge, label %for.inc.i.for.body4.i_crit_edge

for.inc.i.for.body4.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.i

for.inc.i.for.inc13.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc13.i

for.inc13.i:                                      ; preds = %for.inc.i.for.inc13.i_crit_edge, %entry.for.inc13.i_crit_edge
  %lctl.026.1.i = load ptr, ptr getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1), align 8
  %cmp3.not27.1.i = icmp eq ptr %lctl.026.1.i, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1)
  br i1 %cmp3.not27.1.i, label %for.inc13.i.if.end_crit_edge, label %for.inc13.i.for.body4.1.i_crit_edge

for.inc13.i.for.body4.1.i_crit_edge:              ; preds = %for.inc13.i
  br label %for.body4.1.i

for.inc13.i.if.end_crit_edge:                     ; preds = %for.inc13.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

for.body4.1.i:                                    ; preds = %for.inc.1.i.for.body4.1.i_crit_edge, %for.inc13.i.for.body4.1.i_crit_edge
  %lctl.028.1.i = phi ptr [ %lctl.0.1.i, %for.inc.1.i.for.body4.1.i_crit_edge ], [ %lctl.026.1.i, %for.inc13.i.for.body4.1.i_crit_edge ]
  %kctl5.1.i = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.028.1.i, i32 0, i32 3
  %5 = ptrtoint ptr %kctl5.1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %kctl5.1.i, align 4
  %cmp6.1.i = icmp eq ptr %6, %kctl
  br i1 %cmp6.1.i, label %land.lhs.true.1.i, label %for.body4.1.i.for.inc.1.i_crit_edge

for.body4.1.i.for.inc.1.i_crit_edge:              ; preds = %for.body4.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1.i

land.lhs.true.1.i:                                ; preds = %for.body4.1.i
  %index_offset.1.i = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %lctl.028.1.i, i32 0, i32 4
  %7 = ptrtoint ptr %index_offset.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %index_offset.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %ioff)
  %cmp7.1.i = icmp eq i32 %8, %ioff
  br i1 %cmp7.1.i, label %land.lhs.true.1.i.snd_ctl_led_find.exit_crit_edge, label %land.lhs.true.1.i.for.inc.1.i_crit_edge

land.lhs.true.1.i.for.inc.1.i_crit_edge:          ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.inc.1.i

land.lhs.true.1.i.snd_ctl_led_find.exit_crit_edge: ; preds = %land.lhs.true.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %snd_ctl_led_find.exit

for.inc.1.i:                                      ; preds = %land.lhs.true.1.i.for.inc.1.i_crit_edge, %for.body4.1.i.for.inc.1.i_crit_edge
  %9 = ptrtoint ptr %lctl.028.1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %lctl.0.1.i = load ptr, ptr %lctl.028.1.i, align 4
  %cmp3.not.1.i = icmp eq ptr %lctl.0.1.i, getelementptr inbounds ([2 x %struct.snd_ctl_led], ptr @snd_ctl_leds, i32 0, i32 1, i32 1)
  br i1 %cmp3.not.1.i, label %for.inc.1.i.if.end_crit_edge, label %for.inc.1.i.for.body4.1.i_crit_edge

for.inc.1.i.for.body4.1.i_crit_edge:              ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body4.1.i

for.inc.1.i.if.end_crit_edge:                     ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

snd_ctl_led_find.exit:                            ; preds = %land.lhs.true.1.i.snd_ctl_led_find.exit_crit_edge, %land.lhs.true.i.snd_ctl_led_find.exit_crit_edge
  %retval.0.i = phi ptr [ %lctl.028.1.i, %land.lhs.true.1.i.snd_ctl_led_find.exit_crit_edge ], [ %lctl.028.i, %land.lhs.true.i.snd_ctl_led_find.exit_crit_edge ]
  %tobool.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool.not, label %snd_ctl_led_find.exit.if.end_crit_edge, label %land.lhs.true

snd_ctl_led_find.exit.if.end_crit_edge:           ; preds = %snd_ctl_led_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

land.lhs.true:                                    ; preds = %snd_ctl_led_find.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %access)
  %cmp = icmp eq i32 %access, 0
  br i1 %cmp, label %land.lhs.true.if.then_crit_edge, label %lor.lhs.false

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false:                                    ; preds = %land.lhs.true
  %access1 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %retval.0.i, i32 0, i32 2
  %10 = ptrtoint ptr %access1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %access1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %access)
  %cmp2.not = icmp eq i32 %11, %access
  br i1 %cmp2.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %access3 = getelementptr inbounds %struct.snd_ctl_led_ctl, ptr %retval.0.i, i32 0, i32 2
  %12 = ptrtoint ptr %access3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %access3, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %retval.0.i) #14
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %retval.0.i, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev1.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %17, ptr %15, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %20 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 256 to ptr), ptr %retval.0.i, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %retval.0.i) #14
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %lor.lhs.false.if.end_crit_edge, %snd_ctl_led_find.exit.if.end_crit_edge, %for.inc.1.i.if.end_crit_edge, %for.inc13.i.if.end_crit_edge
  %ret.0 = phi i32 [ %13, %list_del.exit ], [ 0, %lor.lhs.false.if.end_crit_edge ], [ 0, %snd_ctl_led_find.exit.if.end_crit_edge ], [ 0, %for.inc13.i.if.end_crit_edge ], [ 0, %for.inc.1.i.if.end_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #14
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_ctl_led_dev_release(ptr nocapture noundef %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @snd_ctl_led_release(ptr nocapture noundef %dev) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_register_layer(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.snd_ctl_led, ptr %dev, i32 0, i32 5
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %2 = icmp ult i32 %1, 4
  br i1 %2, label %switch.lookup, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %switch.gep = getelementptr inbounds [4 x ptr], ptr @switch.table.mode_show, i32 0, i32 %1
  %3 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %3)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %entry.sw.epilog_crit_edge
  %str.0 = phi ptr [ null, %entry.sw.epilog_crit_edge ], [ %switch.load, %switch.lookup ]
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.31, ptr noundef %str.0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mode_store(ptr nocapture noundef %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef readonly %buf, i32 noundef returned %count) #3 align 64 {
entry:
  %_buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %_buf) #14
  %0 = tail call i32 @llvm.umin.i32(i32 %count, i32 15)
  %narrow = sub nuw nsw i32 16, %0
  %1 = zext i32 %narrow to i64
  %2 = getelementptr i8, ptr %_buf, i32 %0
  %3 = trunc i64 %1 to i32
  %4 = call ptr @memset(ptr %2, i32 255, i32 %3)
  %5 = call ptr @memcpy(ptr %_buf, ptr %buf, i32 %0)
  %arrayidx = getelementptr [16 x i8], ptr %_buf, i32 0, i32 %0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  %call = call ptr @strstr(ptr noundef nonnull %_buf, ptr noundef nonnull @.str.32)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.else, label %entry.if.end27_crit_edge

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.else:                                          ; preds = %entry
  %call4 = call ptr @strstr(ptr noundef nonnull %_buf, ptr noundef nonnull @.str.33)
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.else7, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.else7:                                         ; preds = %if.else
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(3) %_buf, ptr noundef nonnull dereferenceable(3) @.str.30, i32 3) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp10 = icmp eq i32 %bcmp, 0
  br i1 %cmp10, label %if.else7.if.end27_crit_edge, label %lor.lhs.false

if.else7.if.end27_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

lor.lhs.false:                                    ; preds = %if.else7
  %7 = ptrtoint ptr %_buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %lhsc = load i8, ptr %_buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %lhsc)
  %cmp13 = icmp eq i8 %lhsc, 48
  br i1 %cmp13, label %lor.lhs.false.if.end27_crit_edge, label %if.else15

lor.lhs.false.if.end27_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.else15:                                        ; preds = %lor.lhs.false
  %bcmp39 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2) %_buf, ptr noundef nonnull dereferenceable(2) @.str.29, i32 2) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp39)
  %cmp18 = icmp eq i32 %bcmp39, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 49, i8 %lhsc)
  %cmp22 = icmp eq i8 %lhsc, 49
  %or.cond = select i1 %cmp18, i1 true, i1 %cmp22
  br i1 %or.cond, label %if.else15.if.end27_crit_edge, label %if.else15.cleanup_crit_edge

if.else15.cleanup_crit_edge:                      ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.else15.if.end27_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end27

if.end27:                                         ; preds = %if.else15.if.end27_crit_edge, %lor.lhs.false.if.end27_crit_edge, %if.else7.if.end27_crit_edge, %if.else.if.end27_crit_edge, %entry.if.end27_crit_edge
  %mode.0 = phi i32 [ 0, %entry.if.end27_crit_edge ], [ 1, %if.else.if.end27_crit_edge ], [ 2, %lor.lhs.false.if.end27_crit_edge ], [ 2, %if.else7.if.end27_crit_edge ], [ 3, %if.else15.if.end27_crit_edge ]
  call void @mutex_lock_nested(ptr noundef nonnull @snd_ctl_led_mutex, i32 noundef 0) #14
  %mode28 = getelementptr inbounds %struct.snd_ctl_led, ptr %dev, i32 0, i32 5
  %8 = ptrtoint ptr %mode28 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %mode.0, ptr %mode28, align 4
  call void @mutex_unlock(ptr noundef nonnull @snd_ctl_led_mutex) #14
  %group = getelementptr inbounds %struct.snd_ctl_led, ptr %dev, i32 0, i32 3
  %9 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %group, align 4
  %add.i = shl i32 %10, 25
  %shl.i = add i32 %add.i, 33554432
  call fastcc void @snd_ctl_led_set_state(ptr noundef null, i32 noundef %shl.i, ptr noundef null, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.else15.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %_buf) #14
  ret i32 %count
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @brightness_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %trigger_type = getelementptr inbounds %struct.snd_ctl_led, ptr %dev, i32 0, i32 4
  %0 = ptrtoint ptr %trigger_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trigger_type, align 8
  %call = tail call i32 @ledtrig_audio_get(i32 noundef %1) #14
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %call)
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ledtrig_audio_get(i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !38, !40, !41, !42, !43, !45, !47, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !72, !74, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123, !124}
!llvm.ident = !{!125}

!0 = !{ptr @__UNIQUE_ID_author189, !1, !"__UNIQUE_ID_author189", i1 false, i1 false}
!1 = !{!"../sound/core/control_led.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_description190, !3, !"__UNIQUE_ID_description190", i1 false, i1 false}
!3 = !{!"../sound/core/control_led.c", i32 14, i32 1}
!4 = !{ptr @__UNIQUE_ID_file191, !5, !"__UNIQUE_ID_file191", i1 false, i1 false}
!5 = !{!"../sound/core/control_led.c", i32 15, i32 1}
!6 = !{ptr @__UNIQUE_ID_license192, !5, !"__UNIQUE_ID_license192", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_snd_ctl_led__197_799_snd_ctl_led_init6, !8, !"__initcall__kmod_snd_ctl_led__197_799_snd_ctl_led_init6", i1 false, i1 false}
!8 = !{!"../sound/core/control_led.c", i32 799, i32 1}
!9 = !{ptr @__exitcall_snd_ctl_led_exit, !10, !"__exitcall_snd_ctl_led_exit", i1 false, i1 false}
!10 = !{!"../sound/core/control_led.c", i32 800, i32 1}
!11 = !{ptr @snd_ctl_led_card_valid, !12, !"snd_ctl_led_card_valid", i1 false, i1 false}
!12 = !{!"../sound/core/control_led.c", i32 55, i32 13}
!13 = !{ptr @snd_ctl_led_dev, !14, !"snd_ctl_led_dev", i1 false, i1 false}
!14 = !{!"../sound/core/control_led.c", i32 671, i32 22}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/core/control_led.c", i32 734, i32 17}
!17 = !{ptr @snd_ctl_led_lops, !18, !"snd_ctl_led_lops", i1 false, i1 false}
!18 = !{!"../sound/core/control_led.c", i32 733, i32 33}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/core/control_led.c", i32 353, i32 6}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/core/control_led.c", i32 54, i32 8}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @snd_ctl_led_mutex, !22, !"snd_ctl_led_mutex", i1 false, i1 false}
!25 = !{ptr @snd_ctl_led_get.info, !26, !"info", i1 false, i1 false}
!26 = !{!"../sound/core/control_led.c", i32 106, i32 34}
!27 = !{ptr @snd_ctl_led_get.value, !28, !"value", i1 false, i1 false}
!28 = !{!"../sound/core/control_led.c", i32 107, i32 35}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/core/control_led.c", i32 689, i32 36}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/core/control_led.c", i32 696, i32 42}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/core/control_led.c", i32 697, i32 3}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/core/control_led.c", i32 699, i32 3}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/core/control_led.c", i32 706, i32 3}
!40 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @snd_ctl_led_sysfs_add._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @snd_ctl_led_sysfs_add._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @snd_ctl_led_card_attr_groups, !44, !"snd_ctl_led_card_attr_groups", i1 false, i1 false}
!44 = !{!"../sound/core/control_led.c", i32 666, i32 38}
!45 = !{ptr @snd_ctl_led_card_attr_group, !46, !"snd_ctl_led_card_attr_group", i1 false, i1 false}
!46 = !{!"../sound/core/control_led.c", i32 662, i32 37}
!47 = !{ptr @snd_ctl_led_card_attrs, !48, !"snd_ctl_led_card_attrs", i1 false, i1 false}
!48 = !{!"../sound/core/control_led.c", i32 654, i32 26}
!49 = !{ptr @.str.11, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/core/control_led.c", i32 649, i32 8}
!51 = !{ptr @dev_attr_attach, !50, !"dev_attr_attach", i1 false, i1 false}
!52 = !{ptr @.str.12, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/core/control_led.c", i32 544, i32 23}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/core/control_led.c", i32 546, i32 30}
!56 = !{ptr @.str.14, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/core/control_led.c", i32 548, i32 30}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/core/control_led.c", i32 550, i32 30}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/core/control_led.c", i32 552, i32 30}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/core/control_led.c", i32 554, i32 30}
!64 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/core/control_led.c", i32 516, i32 27}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/core/control_led.c", i32 650, i32 8}
!68 = !{ptr @dev_attr_detach, !67, !"dev_attr_detach", i1 false, i1 false}
!69 = !{ptr @.str.20, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/core/control_led.c", i32 651, i32 8}
!71 = !{ptr @dev_attr_reset, !70, !"dev_attr_reset", i1 false, i1 false}
!72 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/core/control_led.c", i32 652, i32 8}
!74 = !{ptr @dev_attr_list, !73, !"dev_attr_list", i1 false, i1 false}
!75 = !{ptr @.str.22, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/core/control_led.c", i32 636, i32 29}
!77 = !{ptr @.str.23, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/core/control_led.c", i32 58, i32 11}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/core/control_led.c", i32 64, i32 11}
!81 = !{ptr @snd_ctl_leds, !82, !"snd_ctl_leds", i1 false, i1 false}
!82 = !{!"../sound/core/control_led.c", i32 56, i32 27}
!83 = !{ptr @.str.25, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../sound/core/control_led.c", i32 748, i32 33}
!85 = !{ptr @snd_ctl_led_dev_attr_groups, !86, !"snd_ctl_led_dev_attr_groups", i1 false, i1 false}
!86 = !{!"../sound/core/control_led.c", i32 462, i32 38}
!87 = !{ptr @snd_ctl_led_dev_attr_group, !88, !"snd_ctl_led_dev_attr_group", i1 false, i1 false}
!88 = !{!"../sound/core/control_led.c", i32 458, i32 37}
!89 = !{ptr @snd_ctl_led_dev_attrs, !90, !"snd_ctl_led_dev_attrs", i1 false, i1 false}
!90 = !{!"../sound/core/control_led.c", i32 452, i32 26}
!91 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/core/control_led.c", i32 449, i32 8}
!93 = !{ptr @dev_attr_mode, !92, !"dev_attr_mode", i1 false, i1 false}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/core/control_led.c", i32 403, i32 31}
!96 = !{ptr @.str.28, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/core/control_led.c", i32 404, i32 32}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/core/control_led.c", i32 405, i32 23}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/core/control_led.c", i32 406, i32 24}
!102 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/core/control_led.c", i32 408, i32 22}
!104 = !{ptr @.str.32, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/core/control_led.c", i32 422, i32 19}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/core/control_led.c", i32 424, i32 24}
!108 = distinct !{null, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/core/control_led.c", i32 426, i32 57}
!110 = distinct !{null, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/core/control_led.c", i32 428, i32 56}
!112 = !{ptr @.str.36, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/core/control_led.c", i32 450, i32 8}
!114 = !{ptr @dev_attr_brightness, !113, !"dev_attr_brightness", i1 false, i1 false}
!115 = !{ptr @.str.37, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/core/control_led.c", i32 446, i32 22}
!117 = !{i32 1, !"wchar_size", i32 2}
!118 = !{i32 1, !"min_enum_size", i32 4}
!119 = !{i32 8, !"branch-target-enforcement", i32 0}
!120 = !{i32 8, !"sign-return-address", i32 0}
!121 = !{i32 8, !"sign-return-address-all", i32 0}
!122 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!123 = !{i32 7, !"uwtable", i32 1}
!124 = !{i32 7, !"frame-pointer", i32 2}
!125 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!126 = !{i8 0, i8 2}
!127 = !{!"branch_weights", i32 1, i32 2000}
!128 = !{!"branch_weights", i32 2000, i32 1}
!129 = !{!"auto-init"}
!130 = !{i64 863324, i64 863341}
