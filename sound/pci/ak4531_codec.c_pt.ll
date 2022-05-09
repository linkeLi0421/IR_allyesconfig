; ModuleID = '/llk/IR_all_yes/sound/pci/ak4531_codec.c_pt.bc'
source_filename = "../sound/pci/ak4531_codec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, %union.anon.79, i32 }
%union.anon.79 = type { ptr }
%struct.snd_ak4531 = type { ptr, ptr, ptr, [32 x i8], %struct.mutex }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.78, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.78 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.69, [64 x i8] }
%union.anon.69 = type { %struct.anon.72, [40 x i8] }
%struct.anon.72 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.73, [128 x i8] }
%union.anon.73 = type { %union.anon.75 }
%union.anon.75 = type { [64 x i64] }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.64, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.64 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }

@snd_ak4531_mixer.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @snd_ak4531_dev_free, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sound/pci/ak4531_codec.c\00", [39 x i8] zeroinitializer }, align 32
@snd_ak4531_mixer.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&ak4531->reg_mutex\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"AK4531\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Asahi Kasei AK4531\00", [45 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@snd_ak4531_initial_map = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\9F\87\00\00\00\00\00\00\00\00\00\01", [38 x i8] zeroinitializer }, align 32
@snd_ak4531_controls = internal constant { [41 x %struct.snd_kcontrol_new], [496 x i8] } { [41 x %struct.snd_kcontrol_new] [%struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.4, i32 0, i32 19, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 { ptr @db_scale_master }, i32 25100544 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.5, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 524288256 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.6, i32 0, i32 19, i32 0, ptr @snd_ak4531_info_single, ptr @snd_ak4531_get_single, ptr @snd_ak4531_put_single, %union.anon.79 { ptr @db_scale_mono }, i32 21430287 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.7, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_single, ptr @snd_ak4531_get_single, ptr @snd_ak4531_put_single, %union.anon.79 zeroinitializer, i32 121634831 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 25101058 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 0, i32 19, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 { ptr @db_scale_input }, i32 524288770 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 18026769 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.11, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 17962260 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.8, i32 1, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 25101572 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.9, i32 1, i32 19, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 { ptr @db_scale_input }, i32 524289284 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.10, i32 1, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 19795984 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.12, i32 1, i32 0, i32 0, ptr @snd_ak4531_info_input_sw, ptr @snd_ak4531_get_input_sw, ptr @snd_ak4531_put_input_sw, %union.anon.79 zeroinitializer, i32 84284178 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.13, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 25102086 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.14, i32 0, i32 19, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 { ptr @db_scale_input }, i32 524289798 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.15, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 17436688 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.16, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_input_sw, ptr @snd_ak4531_get_input_sw, ptr @snd_ak4531_put_input_sw, %union.anon.79 zeroinitializer, i32 16913170 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.17, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 25102600 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.18, i32 0, i32 19, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 { ptr @db_scale_input }, i32 524290312 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.19, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 18616336 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.20, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_input_sw, ptr @snd_ak4531_get_input_sw, ptr @snd_ak4531_put_input_sw, %union.anon.79 zeroinitializer, i32 50598674 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.21, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 25103114 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.22, i32 0, i32 19, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 { ptr @db_scale_input }, i32 524290826 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.23, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 19206417 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.24, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_input_sw, ptr @snd_ak4531_get_input_sw, ptr @snd_ak4531_put_input_sw, %union.anon.79 zeroinitializer, i32 50599188 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_single, ptr @snd_ak4531_get_single, ptr @snd_ak4531_put_single, %union.anon.79 zeroinitializer, i32 21430284 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 0, i32 19, i32 0, ptr @snd_ak4531_info_single, ptr @snd_ak4531_get_single, ptr @snd_ak4531_put_single, %union.anon.79 { ptr @db_scale_input }, i32 524288012 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_single, ptr @snd_ak4531_get_single, ptr @snd_ak4531_put_single, %union.anon.79 zeroinitializer, i32 16777233 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 16782612 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.25, i32 1, i32 0, i32 0, ptr @snd_ak4531_info_single, ptr @snd_ak4531_get_single, ptr @snd_ak4531_put_single, %union.anon.79 zeroinitializer, i32 21430285 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.26, i32 1, i32 19, i32 0, ptr @snd_ak4531_info_single, ptr @snd_ak4531_get_single, ptr @snd_ak4531_put_single, %union.anon.79 { ptr @db_scale_input }, i32 524288013 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.27, i32 1, i32 0, i32 0, ptr @snd_ak4531_info_single, ptr @snd_ak4531_get_single, ptr @snd_ak4531_put_single, %union.anon.79 zeroinitializer, i32 16842769 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.28, i32 1, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 17372436 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.29, i32 0, i32 19, i32 0, ptr @snd_ak4531_info_single, ptr @snd_ak4531_get_single, ptr @snd_ak4531_put_single, %union.anon.79 { ptr @db_scale_input }, i32 524288014 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.30, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_single, ptr @snd_ak4531_get_single, ptr @snd_ak4531_put_single, %union.anon.79 zeroinitializer, i32 21430286 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.31, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_single, ptr @snd_ak4531_get_single, ptr @snd_ak4531_put_single, %union.anon.79 zeroinitializer, i32 16777232 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.32, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 16782098 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.33, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 20911380 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.34, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 20321556 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.35, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_double, ptr @snd_ak4531_get_double, ptr @snd_ak4531_put_double, %union.anon.79 zeroinitializer, i32 19731732 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.36, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_single, ptr @snd_ak4531_get_single, ptr @snd_ak4531_put_single, %union.anon.79 zeroinitializer, i32 16777240 }, %struct.snd_kcontrol_new { i32 2, i32 0, i32 0, ptr @.str.37, i32 0, i32 0, i32 0, ptr @snd_ak4531_info_single, ptr @snd_ak4531_get_single, ptr @snd_ak4531_put_single, %union.anon.79 zeroinitializer, i32 16777241 }], [496 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Switch\00", [41 x i8] zeroinitializer }, align 32
@db_scale_master = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -6200, i32 200], [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Master Playback Volume\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Master Mono Playback Switch\00", [36 x i8] zeroinitializer }, align 32
@db_scale_mono = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -2800, i32 400], [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Master Mono Playback Volume\00", [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCM Switch\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PCM Volume\00", [21 x i8] zeroinitializer }, align 32
@db_scale_input = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 1, i32 8, i32 -5000, i32 200], [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"PCM Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"PCM Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"PCM Capture Route\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CD Switch\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CD Volume\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"CD Playback Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"CD Capture Route\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line Switch\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Line Volume\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Line Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Line Capture Route\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Aux Switch\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Aux Volume\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Aux Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Aux Capture Route\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mono Switch\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Mono Volume\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Mono Playback Switch\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mono Capture Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Volume\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Mic Switch\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Mic Playback Switch\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Mic Capture Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Mic Bypass Capture Switch\00", [38 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mono1 Bypass Capture Switch\00", [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Mono2 Bypass Capture Switch\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"AD Input Select\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Mic Boost (+30dB)\00", [46 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ak4531\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Asahi Kasei AK4531\0A\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Recording source   : %s\0AMIC gain           : %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"external\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mixer\00", [26 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"+30dB\00", [26 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"+0dB\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.45 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 374, i32 37 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 378, i32 6 }
@___asan_gen_.51 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 386, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 387, i32 32 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 392, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [23 x i8] c"snd_ak4531_initial_map\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 338, i32 17 }
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"snd_ak4531_controls\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 258, i32 38 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 260, i32 1 }
@___asan_gen_.72 = private unnamed_addr constant [16 x i8] c"db_scale_master\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 254, i32 14 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 263, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 265, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [14 x i8] c"db_scale_mono\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 255, i32 14 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 267, i32 1 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 269, i32 1 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 270, i32 1 }
@___asan_gen_.93 = private unnamed_addr constant [15 x i8] c"db_scale_input\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 256, i32 14 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 272, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 273, i32 1 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 279, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 281, i32 1 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 282, i32 1 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 284, i32 1 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 285, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 287, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 288, i32 1 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 290, i32 1 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 291, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 293, i32 1 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 294, i32 1 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 296, i32 1 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 297, i32 1 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 299, i32 1 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 300, i32 1 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 301, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 302, i32 1 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 309, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 310, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 311, i32 1 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 312, i32 1 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 314, i32 1 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 315, i32 1 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 316, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 318, i32 1 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 319, i32 1 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 472, i32 29 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 462, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.199 = private constant [28 x i8] c"../sound/pci/ak4531_codec.c\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 463, i32 2 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @snd_ak4531_mixer.ops, ptr @.str, ptr @snd_ak4531_mixer.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @snd_ak4531_initial_map, ptr @snd_ak4531_controls, ptr @.str.4, ptr @db_scale_master, ptr @.str.5, ptr @.str.6, ptr @db_scale_mono, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @db_scale_input, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44], section "llvm.metadata"
@0 = internal global [52 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ak4531_mixer.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ak4531_mixer.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ak4531_initial_map to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_ak4531_controls to i32), i32 1968, i32 2464, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_master to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_mono to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @db_scale_input to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_ak4531_mixer(ptr noundef %card, ptr noundef readonly %_ak4531, ptr noundef writeonly %rak4531) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %card, null
  %tobool1.not = icmp eq ptr %_ak4531, null
  %spec.select = or i1 %tobool.not, %tobool1.not
  br i1 %spec.select, label %do.end, label %if.end24, !prof !108

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 378, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end24:                                         ; preds = %entry
  %tobool25.not = icmp eq ptr %rak4531, null
  br i1 %tobool25.not, label %if.end24.if.end27_crit_edge, label %if.then26

if.end24.if.end27_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27

if.then26:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %rak4531 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %rak4531, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then26, %if.end24.if.end27_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 136) #8
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end27.cleanup_crit_edge, label %if.end29

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end27
  %2 = call ptr @memcpy(ptr %call7.i.i, ptr %_ak4531, i32 136)
  %reg_mutex = getelementptr inbounds %struct.snd_ak4531, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %reg_mutex, ptr noundef nonnull @.str.1, ptr noundef nonnull @snd_ak4531_mixer.__key) #5
  %call33 = tail call i32 @snd_component_add(ptr noundef nonnull %card, ptr noundef nonnull @.str.2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then.i, label %if.end37

if.then.i:                                        ; preds = %if.end29
  %private_free.i = getelementptr inbounds %struct.snd_ak4531, ptr %call7.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %private_free.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %private_free.i, align 8
  %tobool1.not.i = icmp eq ptr %4, null
  br i1 %tobool1.not.i, label %if.then.i.snd_ak4531_free.exit_crit_edge, label %if.then2.i

if.then.i.snd_ak4531_free.exit_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_ak4531_free.exit

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %4(ptr noundef nonnull %call7.i.i) #5
  br label %snd_ak4531_free.exit

snd_ak4531_free.exit:                             ; preds = %if.then2.i, %if.then.i.snd_ak4531_free.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end37:                                         ; preds = %if.end29
  %mixername = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 6
  %5 = call ptr @memcpy(ptr %mixername, ptr @.str.3, i32 19)
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call7.i.i, align 8
  tail call void %7(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 22, i16 noundef zeroext 3) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 21474800) #5
  %9 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call7.i.i, align 8
  tail call void %10(ptr noundef nonnull %call7.i.i, i16 noundef zeroext 23, i16 noundef zeroext 0) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end37
  %idx.0128 = phi i32 [ 0, %if.end37 ], [ %inc, %for.inc.for.body_crit_edge ]
  %11 = and i32 %idx.0128, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %11)
  %switch = icmp eq i32 %11, 22
  br i1 %switch, label %for.body.for.inc_crit_edge, label %if.end44

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end44:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %call7.i.i, align 8
  %conv = trunc i32 %idx.0128 to i16
  %arrayidx = getelementptr [26 x i8], ptr @snd_ak4531_initial_map, i32 0, i32 %idx.0128
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx, align 1
  %arrayidx46 = getelementptr %struct.snd_ak4531, ptr %call7.i.i, i32 0, i32 3, i32 %idx.0128
  %16 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx46, align 1
  %conv47 = zext i8 %15 to i16
  tail call void %13(ptr noundef nonnull %call7.i.i, i16 noundef zeroext %conv, i16 noundef zeroext %conv47) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end44, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.0128, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.inc.for.body51_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.body51_crit_edge:                     ; preds = %for.inc
  br label %for.body51

for.cond48:                                       ; preds = %for.body51
  %inc61 = add nuw nsw i32 %idx.1130, 1
  %exitcond132.not = icmp eq i32 %inc61, 41
  br i1 %exitcond132.not, label %for.end62, label %for.cond48.for.body51_crit_edge

for.cond48.for.body51_crit_edge:                  ; preds = %for.cond48
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body51

for.body51:                                       ; preds = %for.cond48.for.body51_crit_edge, %for.inc.for.body51_crit_edge
  %idx.1130 = phi i32 [ %inc61, %for.cond48.for.body51_crit_edge ], [ 0, %for.inc.for.body51_crit_edge ]
  %arrayidx52 = getelementptr [41 x %struct.snd_kcontrol_new], ptr @snd_ak4531_controls, i32 0, i32 %idx.1130
  %call53 = tail call ptr @snd_ctl_new1(ptr noundef %arrayidx52, ptr noundef nonnull %call7.i.i) #5
  %call54 = tail call i32 @snd_ctl_add(ptr noundef %card, ptr noundef %call53) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %cmp55 = icmp slt i32 %call54, 0
  br i1 %cmp55, label %if.then.i117, label %for.cond48

if.then.i117:                                     ; preds = %for.body51
  %private_free.i115 = getelementptr inbounds %struct.snd_ak4531, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %private_free.i115 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_free.i115, align 8
  %tobool1.not.i116 = icmp eq ptr %18, null
  br i1 %tobool1.not.i116, label %if.then.i117.snd_ak4531_free.exit120_crit_edge, label %if.then2.i118

if.then.i117.snd_ak4531_free.exit120_crit_edge:   ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_ak4531_free.exit120

if.then2.i118:                                    ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %18(ptr noundef nonnull %call7.i.i) #5
  br label %snd_ak4531_free.exit120

snd_ak4531_free.exit120:                          ; preds = %if.then2.i118, %if.then.i117.snd_ak4531_free.exit120_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

for.end62:                                        ; preds = %for.cond48
  %call.i.i = tail call i32 @snd_card_rw_proc_new(ptr noundef %card, ptr noundef nonnull @.str.38, ptr noundef %call7.i.i, ptr noundef nonnull @snd_ak4531_proc_read, ptr noundef null) #5
  %call63 = tail call i32 @snd_device_new(ptr noundef %card, i32 noundef 3, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @snd_ak4531_mixer.ops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %cmp64 = icmp slt i32 %call63, 0
  br i1 %cmp64, label %if.then.i124, label %if.end68

if.then.i124:                                     ; preds = %for.end62
  %private_free.i122 = getelementptr inbounds %struct.snd_ak4531, ptr %call7.i.i, i32 0, i32 2
  %19 = ptrtoint ptr %private_free.i122 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %private_free.i122, align 8
  %tobool1.not.i123 = icmp eq ptr %20, null
  br i1 %tobool1.not.i123, label %if.then.i124.snd_ak4531_free.exit127_crit_edge, label %if.then2.i125

if.then.i124.snd_ak4531_free.exit127_crit_edge:   ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_ak4531_free.exit127

if.then2.i125:                                    ; preds = %if.then.i124
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %20(ptr noundef nonnull %call7.i.i) #5
  br label %snd_ak4531_free.exit127

snd_ak4531_free.exit127:                          ; preds = %if.then2.i125, %if.then.i124.snd_ak4531_free.exit127_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end68:                                         ; preds = %for.end62
  br i1 %tobool25.not, label %if.end68.cleanup_crit_edge, label %if.then70

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then70:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %rak4531 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call7.i.i, ptr %rak4531, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then70, %if.end68.cleanup_crit_edge, %snd_ak4531_free.exit127, %snd_ak4531_free.exit120, %snd_ak4531_free.exit, %if.end27.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call33, %snd_ak4531_free.exit ], [ %call54, %snd_ak4531_free.exit120 ], [ %call63, %snd_ak4531_free.exit127 ], [ -12, %if.end27.cleanup_crit_edge ], [ 0, %if.then70 ], [ 0, %if.end68.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ak4531_dev_free(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.snd_ak4531_free.exit_crit_edge, label %if.then.i

entry.snd_ak4531_free.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %snd_ak4531_free.exit

if.then.i:                                        ; preds = %entry
  %private_free.i = getelementptr inbounds %struct.snd_ak4531, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %private_free.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_free.i, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then2.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then2.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %3(ptr noundef nonnull %1) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then2.i, %if.then.i.if.end.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #5
  br label %snd_ak4531_free.exit

snd_ak4531_free.exit:                             ; preds = %if.end.i, %entry.snd_ak4531_free.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_new1(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ak4531_suspend(ptr noundef %ak4531) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ak4531 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ak4531, align 4
  tail call void %1(ptr noundef %ak4531, i16 noundef zeroext 0, i16 noundef zeroext 159) #5
  %2 = ptrtoint ptr %ak4531 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ak4531, align 4
  tail call void %3(ptr noundef %ak4531, i16 noundef zeroext 1, i16 noundef zeroext 159) #5
  %4 = ptrtoint ptr %ak4531 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ak4531, align 4
  tail call void %5(ptr noundef %ak4531, i16 noundef zeroext 22, i16 noundef zeroext 1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_ak4531_resume(ptr noundef %ak4531) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ak4531 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ak4531, align 4
  tail call void %1(ptr noundef %ak4531, i16 noundef zeroext 22, i16 noundef zeroext 3) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 21474800) #5
  %3 = ptrtoint ptr %ak4531 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ak4531, align 4
  tail call void %4(ptr noundef %ak4531, i16 noundef zeroext 23, i16 noundef zeroext 0) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %idx.017 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = and i32 %idx.017, 2147483646
  call void @__sanitizer_cov_trace_const_cmp4(i32 22, i32 %5)
  %switch = icmp eq i32 %5, 22
  br i1 %switch, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %ak4531 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ak4531, align 4
  %conv = trunc i32 %idx.017 to i16
  %arrayidx = getelementptr %struct.snd_ak4531, ptr %ak4531, i32 0, i32 3, i32 %idx.017
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %conv5 = zext i8 %9 to i16
  tail call void %7(ptr noundef %ak4531, i16 noundef zeroext %conv, i16 noundef zeroext %conv5) #5
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.017, 1
  %exitcond.not = icmp eq i32 %inc, 26
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ak4531_info_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp = icmp eq i32 %shr, 1
  %cond = select i1 %cmp, i32 1, i32 2
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ak4531_get_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %reg_mutex = getelementptr inbounds %struct.snd_ak4531, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #5
  %arrayidx = getelementptr %struct.snd_ak4531, ptr %1, i32 0, i32 3, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shr15 = lshr i32 %conv, %and5
  %and16 = and i32 %shr15, %shr10
  %arrayidx18 = getelementptr %struct.snd_ak4531, ptr %1, i32 0, i32 3, i32 %and2
  %6 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx18, align 1
  %conv19 = zext i8 %7 to i32
  %shr20 = lshr i32 %conv19, %and8
  %and21 = and i32 %shr20, %shr10
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #5
  %8 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %sub = sub nsw i32 %shr10, %and16
  %sub23 = sub nsw i32 %shr10, %and21
  %left.0 = select i1 %tobool.not, i32 %and16, i32 %sub
  %right.0 = select i1 %tobool.not, i32 %and21, i32 %sub23
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %left.0, ptr %value, align 8
  %arrayidx26 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %right.0, ptr %arrayidx26, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ak4531_put_double(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %and15 = and i32 %5, %shr10
  %arrayidx17 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %6 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx17, align 4
  %and18 = and i32 %7, %shr10
  %8 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  %sub = sub nsw i32 %shr10, %and15
  %sub19 = sub nsw i32 %shr10, %and18
  %left.0 = select i1 %tobool.not, i32 %and15, i32 %sub
  %right.0 = select i1 %tobool.not, i32 %and18, i32 %sub19
  %shl = shl nsw i32 %left.0, %and5
  %shl20 = shl nsw i32 %right.0, %and8
  %reg_mutex = getelementptr inbounds %struct.snd_ak4531, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %and2)
  %cmp = icmp eq i32 %and, %and2
  %arrayidx22 = getelementptr %struct.snd_ak4531, ptr %1, i32 0, i32 3, i32 %and
  %9 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx22, align 1
  %conv = zext i8 %10 to i32
  %shl23 = shl nuw nsw i32 %shr10, %and5
  br i1 %cmp, label %if.then21, label %if.else

if.then21:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %shl24 = shl nuw nsw i32 %shr10, %and8
  %or = or i32 %shl23, %shl24
  %neg = xor i32 %or, -1
  %and25 = and i32 %conv, %neg
  %or26 = or i32 %shl20, %shl
  %or27 = or i32 %or26, %and25
  call void @__sanitizer_cov_trace_cmp4(i32 %or27, i32 %conv)
  %cmp31 = icmp ne i32 %or27, %conv
  br label %if.end74

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %neg42 = xor i32 %shl23, -1
  %and43 = and i32 %conv, %neg42
  %or44 = or i32 %and43, %shl
  %arrayidx46 = getelementptr %struct.snd_ak4531, ptr %1, i32 0, i32 3, i32 %and2
  %11 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx46, align 1
  %conv47 = zext i8 %12 to i32
  %shl48 = shl nuw nsw i32 %shr10, %and8
  %neg49 = xor i32 %shl48, -1
  %and50 = and i32 %conv47, %neg49
  %or51 = or i32 %and50, %shl20
  call void @__sanitizer_cov_trace_cmp4(i32 %or44, i32 %conv)
  %cmp55.not = icmp ne i32 %or44, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %or51, i32 %conv47)
  %cmp60 = icmp ne i32 %or51, %conv47
  %narrow = select i1 %cmp55.not, i1 true, i1 %cmp60
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  %conv63 = trunc i32 %and to i16
  %conv64 = trunc i32 %or44 to i8
  %15 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv64, ptr %arrayidx22, align 1
  %16 = trunc i32 %or44 to i16
  %conv67 = and i16 %16, 255
  tail call void %14(ptr noundef %1, i16 noundef zeroext %conv63, i16 noundef zeroext %conv67) #5
  br label %if.end74

if.end74:                                         ; preds = %if.else, %if.then21
  %and2.sink = phi i32 [ %and2, %if.else ], [ %and, %if.then21 ]
  %or51.sink135 = phi i32 [ %or51, %if.else ], [ %or27, %if.then21 ]
  %arrayidx46.sink = phi ptr [ %arrayidx46, %if.else ], [ %arrayidx22, %if.then21 ]
  %change.0.in = phi i1 [ %narrow, %if.else ], [ %cmp31, %if.then21 ]
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %conv69 = trunc i32 %and2.sink to i16
  %conv70 = trunc i32 %or51.sink135 to i8
  %19 = ptrtoint ptr %arrayidx46.sink to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv70, ptr %arrayidx46.sink, align 1
  %20 = trunc i32 %or51.sink135 to i16
  %conv73 = and i16 %20, 255
  tail call void %18(ptr noundef %1, i16 noundef zeroext %conv69, i16 noundef zeroext %conv73) #5
  %change.0 = zext i1 %change.0.in to i32
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #5
  ret i32 %change.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @snd_ak4531_info_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %uinfo) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %0 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %private_value, align 4
  %shr = lshr i32 %1, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %shr)
  %cmp = icmp eq i32 %shr, 1
  %cond = select i1 %cmp, i32 1, i32 2
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %cond, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %3 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %4 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %5 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %shr, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ak4531_get_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %shr = lshr i32 %3, 16
  %and2 = and i32 %shr, 7
  %shr4 = lshr i32 %3, 24
  %reg_mutex = getelementptr inbounds %struct.snd_ak4531, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #5
  %arrayidx = getelementptr %struct.snd_ak4531, ptr %1, i32 0, i32 3, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shr9 = lshr i32 %conv, %and2
  %and10 = and i32 %shr9, %shr4
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #5
  %6 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %sub = sub nsw i32 %shr4, %and10
  %spec.select = select i1 %tobool.not, i32 %and10, i32 %sub
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %7 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %spec.select, ptr %value, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ak4531_put_single(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %kcontrol, i32 0, i32 7
  %2 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %private_value, align 4
  %shr4 = lshr i32 %3, 24
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %value, align 8
  %and9 = and i32 %5, %shr4
  %6 = and i32 %3, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %sub = sub nsw i32 %shr4, %and9
  %spec.select = select i1 %tobool.not, i32 %and9, i32 %sub
  %shr = lshr i32 %3, 16
  %and2 = and i32 %shr, 7
  %and = and i32 %3, 255
  %shl = shl nsw i32 %spec.select, %and2
  %reg_mutex = getelementptr inbounds %struct.snd_ak4531, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #5
  %arrayidx10 = getelementptr %struct.snd_ak4531, ptr %1, i32 0, i32 3, i32 %and
  %7 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx10, align 1
  %conv = zext i8 %8 to i32
  %shl11 = shl nuw nsw i32 %shr4, %and2
  %neg = xor i32 %shl11, -1
  %and12 = and i32 %conv, %neg
  %or = or i32 %and12, %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %or, i32 %conv)
  %cmp = icmp ne i32 %or, %conv
  %conv16 = zext i1 %cmp to i32
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %conv17 = trunc i32 %and to i16
  %conv18 = trunc i32 %or to i8
  %11 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv18, ptr %arrayidx10, align 1
  %12 = trunc i32 %or to i16
  %conv21 = and i16 %12, 255
  tail call void %10(ptr noundef %1, i16 noundef zeroext %conv17, i16 noundef zeroext %conv21) #5
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #5
  ret i32 %conv16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @snd_ak4531_info_input_sw(ptr nocapture noundef readnone %kcontrol, ptr nocapture noundef writeonly %uinfo) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 1, ptr %type, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 3
  %1 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 4, ptr %count, align 8
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5
  %2 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %value, align 8
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %uinfo, i32 0, i32 5, i32 0, i32 1
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %max, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ak4531_get_input_sw(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef writeonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %and5 = and i32 %shr4, 15
  %shr7 = lshr i32 %3, 24
  %and8 = and i32 %shr7, 15
  %reg_mutex = getelementptr inbounds %struct.snd_ak4531, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #5
  %arrayidx = getelementptr %struct.snd_ak4531, ptr %1, i32 0, i32 3, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shr9 = lshr i32 %conv, %and5
  %and10 = and i32 %shr9, 1
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %6 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and10, ptr %value, align 8
  %arrayidx13 = getelementptr %struct.snd_ak4531, ptr %1, i32 0, i32 3, i32 %and2
  %7 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx13, align 1
  %conv14 = zext i8 %8 to i32
  %shr15 = lshr i32 %conv14, %and5
  %and16 = and i32 %shr15, 1
  %arrayidx18 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and16, ptr %arrayidx18, align 4
  %10 = load i8, ptr %arrayidx, align 1
  %conv21 = zext i8 %10 to i32
  %shr22 = lshr i32 %conv21, %and8
  %and23 = and i32 %shr22, 1
  %arrayidx25 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and23, ptr %arrayidx25, align 8
  %12 = load i8, ptr %arrayidx13, align 1
  %conv28 = zext i8 %12 to i32
  %shr29 = lshr i32 %conv28, %and8
  %and30 = and i32 %shr29, 1
  %arrayidx32 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %13 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and30, ptr %arrayidx32, align 4
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_ak4531_put_input_sw(ptr nocapture noundef readonly %kcontrol, ptr nocapture noundef readonly %ucontrol) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
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
  %and5 = and i32 %shr4, 15
  %shr7 = lshr i32 %3, 24
  %and8 = and i32 %shr7, 15
  %reg_mutex = getelementptr inbounds %struct.snd_ak4531, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #5
  %arrayidx = getelementptr %struct.snd_ak4531, ptr %1, i32 0, i32 3, i32 %and
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %5 to i32
  %shl = shl nuw nsw i32 1, %and5
  %shl9 = shl nuw nsw i32 1, %and8
  %or = or i32 %shl, %shl9
  %neg = xor i32 %or, -1
  %and10 = and i32 %neg, %conv
  %arrayidx12 = getelementptr %struct.snd_ak4531, ptr %1, i32 0, i32 3, i32 %and2
  %6 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %7 to i32
  %and18 = and i32 %conv13, %neg
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  %and20 = and i32 %9, 1
  %shl21 = shl nuw nsw i32 %and20, %and5
  %or22 = or i32 %shl21, %and10
  %arrayidx24 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx24, align 4
  %and25 = and i32 %11, 1
  %shl26 = shl nuw nsw i32 %and25, %and5
  %or27 = or i32 %shl26, %and18
  %arrayidx29 = getelementptr %struct.snd_ctl_elem_value, ptr %ucontrol, i32 0, i32 2, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx29, align 8
  %and30 = and i32 %13, 1
  %shl31 = shl nuw nsw i32 %and30, %and8
  %or32 = or i32 %or22, %shl31
  %arrayidx34 = getelementptr [128 x i32], ptr %value, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx34, align 4
  %and35 = and i32 %15, 1
  %shl36 = shl nuw nsw i32 %and35, %and8
  %or37 = or i32 %or27, %shl36
  call void @__sanitizer_cov_trace_cmp4(i32 %or32, i32 %conv)
  %cmp.not = icmp ne i32 %or32, %conv
  call void @__sanitizer_cov_trace_cmp4(i32 %or37, i32 %conv13)
  %cmp45 = icmp ne i32 %or37, %conv13
  %narrow = select i1 %cmp.not, i1 true, i1 %cmp45
  %16 = zext i1 %narrow to i32
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %conv47 = trunc i32 %and to i16
  %conv48 = trunc i32 %or32 to i8
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv48, ptr %arrayidx, align 1
  %20 = trunc i32 %or32 to i16
  %conv51 = and i16 %20, 255
  tail call void %18(ptr noundef %1, i16 noundef zeroext %conv47, i16 noundef zeroext %conv51) #5
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %conv53 = trunc i32 %and2 to i16
  %conv54 = trunc i32 %or37 to i8
  %23 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv54, ptr %arrayidx12, align 1
  %24 = trunc i32 %or37 to i16
  %conv57 = and i16 %24, 255
  tail call void %22(ptr noundef %1, i16 noundef zeroext %conv53, i16 noundef zeroext %conv57) #5
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #5
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_ak4531_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %3, ptr noundef nonnull @.str.39) #5
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %buffer, align 4
  %arrayidx = getelementptr %struct.snd_ak4531, ptr %1, i32 0, i32 3, i32 24
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  %8 = and i8 %7, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %cond = select i1 %tobool.not, ptr @.str.42, ptr @.str.41
  %arrayidx5 = getelementptr %struct.snd_ak4531, ptr %1, i32 0, i32 3, i32 25
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool8.not = icmp eq i8 %11, 0
  %cond9 = select i1 %tobool8.not, ptr @.str.44, ptr @.str.43
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %5, ptr noundef nonnull @.str.40, ptr noundef nonnull %cond, ptr noundef nonnull %cond9) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_rw_proc_new(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 52)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !96, !97, !98}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105, !106}
!llvm.ident = !{!107}

!0 = !{ptr @snd_ak4531_mixer.ops, !1, !"ops", i1 false, i1 false}
!1 = !{!"../sound/pci/ak4531_codec.c", i32 374, i32 37}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/pci/ak4531_codec.c", i32 378, i32 6}
!4 = !{ptr @snd_ak4531_mixer.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../sound/pci/ak4531_codec.c", i32 386, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../sound/pci/ak4531_codec.c", i32 387, i32 32}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/pci/ak4531_codec.c", i32 392, i32 26}
!11 = !{ptr @snd_ak4531_initial_map, !12, !"snd_ak4531_initial_map", i1 false, i1 false}
!12 = !{!"../sound/pci/ak4531_codec.c", i32 338, i32 17}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../sound/pci/ak4531_codec.c", i32 260, i32 1}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../sound/pci/ak4531_codec.c", i32 263, i32 1}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../sound/pci/ak4531_codec.c", i32 265, i32 1}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../sound/pci/ak4531_codec.c", i32 267, i32 1}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../sound/pci/ak4531_codec.c", i32 269, i32 1}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../sound/pci/ak4531_codec.c", i32 270, i32 1}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../sound/pci/ak4531_codec.c", i32 272, i32 1}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/pci/ak4531_codec.c", i32 273, i32 1}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../sound/pci/ak4531_codec.c", i32 279, i32 1}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../sound/pci/ak4531_codec.c", i32 281, i32 1}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/pci/ak4531_codec.c", i32 282, i32 1}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../sound/pci/ak4531_codec.c", i32 284, i32 1}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../sound/pci/ak4531_codec.c", i32 285, i32 1}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/pci/ak4531_codec.c", i32 287, i32 1}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../sound/pci/ak4531_codec.c", i32 288, i32 1}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../sound/pci/ak4531_codec.c", i32 290, i32 1}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../sound/pci/ak4531_codec.c", i32 291, i32 1}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../sound/pci/ak4531_codec.c", i32 293, i32 1}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/pci/ak4531_codec.c", i32 294, i32 1}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/pci/ak4531_codec.c", i32 296, i32 1}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/pci/ak4531_codec.c", i32 297, i32 1}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/pci/ak4531_codec.c", i32 299, i32 1}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/pci/ak4531_codec.c", i32 300, i32 1}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/pci/ak4531_codec.c", i32 301, i32 1}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/pci/ak4531_codec.c", i32 302, i32 1}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/pci/ak4531_codec.c", i32 309, i32 1}
!65 = !{ptr @.str.30, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/pci/ak4531_codec.c", i32 310, i32 1}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/pci/ak4531_codec.c", i32 311, i32 1}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/pci/ak4531_codec.c", i32 312, i32 1}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/pci/ak4531_codec.c", i32 314, i32 1}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/pci/ak4531_codec.c", i32 315, i32 1}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/pci/ak4531_codec.c", i32 316, i32 1}
!77 = !{ptr @.str.36, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/pci/ak4531_codec.c", i32 318, i32 1}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../sound/pci/ak4531_codec.c", i32 319, i32 1}
!81 = !{ptr @snd_ak4531_controls, !82, !"snd_ak4531_controls", i1 false, i1 false}
!82 = !{!"../sound/pci/ak4531_codec.c", i32 258, i32 38}
!83 = !{ptr @db_scale_master, !84, !"db_scale_master", i1 false, i1 false}
!84 = !{!"../sound/pci/ak4531_codec.c", i32 254, i32 14}
!85 = !{ptr @db_scale_mono, !86, !"db_scale_mono", i1 false, i1 false}
!86 = !{!"../sound/pci/ak4531_codec.c", i32 255, i32 14}
!87 = !{ptr @db_scale_input, !88, !"db_scale_input", i1 false, i1 false}
!88 = !{!"../sound/pci/ak4531_codec.c", i32 256, i32 14}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../sound/pci/ak4531_codec.c", i32 472, i32 29}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../sound/pci/ak4531_codec.c", i32 462, i32 2}
!93 = !{ptr @.str.40, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../sound/pci/ak4531_codec.c", i32 463, i32 2}
!95 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.43, !94, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.44, !94, !"<string literal>", i1 false, i1 false}
!99 = !{i32 1, !"wchar_size", i32 2}
!100 = !{i32 1, !"min_enum_size", i32 4}
!101 = !{i32 8, !"branch-target-enforcement", i32 0}
!102 = !{i32 8, !"sign-return-address", i32 0}
!103 = !{i32 8, !"sign-return-address-all", i32 0}
!104 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!105 = !{i32 7, !"uwtable", i32 1}
!106 = !{i32 7, !"frame-pointer", i32 2}
!107 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!108 = !{!"branch_weights", i32 1, i32 2000}
