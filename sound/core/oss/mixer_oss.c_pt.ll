; ModuleID = '/llk/IR_all_yes/sound/core/oss/mixer_oss.c_pt.bc'
source_filename = "../sound/core/oss/mixer_oss.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_mixer_oss_ioctl_card\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_mixer_oss_ioctl_card\09\09\09\09"
module asm "\09.long\09__crc_snd_mixer_oss_ioctl_card\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_mixer_oss_ioctl_card:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_mixer_oss_ioctl_card\22\09\09\09\09\09"
module asm "__kstrtabns_snd_mixer_oss_ioctl_card:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.snd_mixer_oss_assign_table = type { i32, ptr, i32 }
%struct.snd_mixer_oss_file = type { ptr, ptr }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct._old_mixer_info = type { [16 x i8], [32 x i8] }
%struct.mixer_info = type { [16 x i8], [32 x i8], i32, [10 x i32] }
%struct.snd_mixer_oss = type { ptr, [16 x i8], [32 x i8], [32 x %struct.snd_mixer_oss_slot], i32, ptr, ptr, ptr, ptr, %struct.mutex, ptr, i32, i32 }
%struct.snd_mixer_oss_slot = type { i32, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, [2 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.snd_info_entry = type { ptr, i16, i32, i16, %union.anon.67, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.list_head, %struct.list_head }
%union.anon.67 = type { %struct.snd_info_entry_text }
%struct.snd_info_entry_text = type { ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.68, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.69, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.70, ptr, %struct.address_space, %struct.list_head, %union.anon.71, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.68 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.69 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.70 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.71 = type { ptr }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%struct.slot = type { i32, i32, i32, [11 x i32], i32, ptr, i8 }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.81, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%union.anon.81 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_ctl_elem_info = type { %struct.snd_ctl_elem_id, i32, i32, i32, i32, %union.anon.72, [64 x i8] }
%union.anon.72 = type { %struct.anon.75, [40 x i8] }
%struct.anon.75 = type { i32, i32, [64 x i8], i64, i32 }
%struct.snd_ctl_elem_value = type { %struct.snd_ctl_elem_id, i8, %union.anon.76, [128 x i8] }
%union.anon.76 = type { %union.anon.78 }
%union.anon.78 = type { [64 x i64] }

@__UNIQUE_ID_author231 = internal constant [54 x i8] c"snd_mixer_oss.author=Jaroslav Kysela <perex@perex.cz>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [56 x i8] c"snd_mixer_oss.description=Mixer OSS emulation for ALSA.\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [48 x i8] c"snd_mixer_oss.file=sound/core/oss/snd-mixer-oss\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [26 x i8] c"snd_mixer_oss.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias235 = internal constant [38 x i8] c"snd_mixer_oss.alias=sound-service-?-0\00", section ".modinfo", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sound/core/oss/mixer_oss.c\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_snd_mixer_oss_ioctl_card = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_mixer_oss_ioctl_card = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_mixer_oss_ioctl_card = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_mixer_oss_ioctl_card to i32), ptr @__kstrtab_snd_mixer_oss_ioctl_card, ptr @__kstrtabns_snd_mixer_oss_ioctl_card }, section "___ksymtab+snd_mixer_oss_ioctl_card", align 4
@snd_mixer_oss_notify_callback = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_snd_mixer_oss__236_1459_alsa_mixer_oss_init6 = internal global ptr @alsa_mixer_oss_init, section ".initcall6.init", align 4
@__exitcall_alsa_mixer_oss_exit = internal global ptr @alsa_mixer_oss_exit, section ".exitcall.exit", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@snd_mixer_oss_notify_handler.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&mixer->reg_mutex\00", [46 x i8] zeroinitializer }, align 32
@snd_mixer_oss_f_ops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @snd_mixer_oss_ioctl, ptr null, ptr null, i32 0, ptr @snd_mixer_oss_open, ptr null, ptr @snd_mixer_oss_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@snd_mixer_oss_notify_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str, i32 1388, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"unable to register OSS mixer device %i:%i\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"snd_mixer_oss_notify_handler\00", [35 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@snd_mixer_oss_notify_handler._entry_ptr = internal global ptr @snd_mixer_oss_notify_handler._entry, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mixer%i\00", [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@snd_mixer_oss_build.table = internal constant { [38 x %struct.snd_mixer_oss_assign_table], [120 x i8] } { [38 x %struct.snd_mixer_oss_assign_table] [%struct.snd_mixer_oss_assign_table { i32 0, ptr @.str.10, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 0, ptr @.str.11, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 1, ptr @.str.12, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 2, ptr @.str.13, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 3, ptr @.str.14, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 3, ptr @.str.15, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 3, ptr @.str.16, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 4, ptr @.str.17, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 5, ptr @.str.18, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 5, ptr @.str.19, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 5, ptr @.str.20, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 6, ptr @.str.21, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 7, ptr @.str.22, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 8, ptr @.str.23, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 9, ptr @.str.24, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 10, ptr @.str.17, i32 1 }, %struct.snd_mixer_oss_assign_table { i32 10, ptr @.str.25, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 10, ptr @.str.26, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 11, ptr @.str.27, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 12, ptr @.str.28, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 13, ptr @.str.29, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 14, ptr @.str.30, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 15, ptr @.str.30, i32 1 }, %struct.snd_mixer_oss_assign_table { i32 16, ptr @.str.30, i32 2 }, %struct.snd_mixer_oss_assign_table { i32 17, ptr @.str.31, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 17, ptr @.str.32, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 17, ptr @.str.33, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 17, ptr @.str.34, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 18, ptr @.str.31, i32 1 }, %struct.snd_mixer_oss_assign_table { i32 19, ptr @.str.31, i32 2 }, %struct.snd_mixer_oss_assign_table { i32 20, ptr @.str.35, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 21, ptr @.str.36, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 21, ptr @.str.20, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 21, ptr @.str.37, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 21, ptr @.str.35, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 22, ptr @.str.38, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 23, ptr @.str.39, i32 0 }, %struct.snd_mixer_oss_assign_table { i32 24, ptr @.str.40, i32 0 }], [120 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Master\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Front\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Tone Control - Bass\00", [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Tone Control - Treble\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Synth\00", [26 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"FM\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Music\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"PCM\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Beep\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PC Speaker\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Speaker\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Line\00", [27 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Mic\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"CD\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Monitor Mix\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Headphone\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Wave\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"-- nothing --\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Capture\00", [24 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Playback\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Aux\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Digital\00", [24 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"IEC958\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IEC958 Optical\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IEC958 Coaxial\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Phone\00", [26 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Master Mono\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Mono\00", [27 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Video\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Radio\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Monitor\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Capture Source\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mix Mono\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s Switch\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s Route\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%s Volume\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s Playback Switch\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s Playback Route\00", [46 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s Playback Volume\00", [45 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s Capture Switch\00", [46 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s Capture Route\00", [47 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s Capture Volume\00", [46 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"oss_mixer\00", [22 x i8] zeroinitializer }, align 32
@oss_mixer_names = internal constant { [32 x ptr], [32 x i8] } { [32 x ptr] [ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.17, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.23, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s \00", [28 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\22%s\22 %d\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\22\22 0\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"VOLUME\00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"BASS\00", [27 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"TREBLE\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SYNTH\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"SPEAKER\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LINE\00", [27 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MIC\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"IMIX\00", [27 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ALTPCM\00", [25 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RECLEV\00", [25 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"IGAIN\00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OGAIN\00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINE1\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINE2\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LINE3\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DIGITAL1\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DIGITAL2\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"DIGITAL3\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"PHONEIN\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PHONEOUT\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"VIDEO\00", [26 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RADIO\00", [26 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MONITOR\00", [24 x i8] zeroinitializer }, align 32
@snd_mixer_oss_proc_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.81, ptr @.str, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013ALSA: mixer_oss: invalid OSS volume '%s'\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"snd_mixer_oss_proc_write\00", [39 x i8] zeroinitializer }, align 32
@snd_mixer_oss_proc_write._entry_ptr = internal global ptr @snd_mixer_oss_proc_write._entry, section ".printk_index", align 4
@snd_mixer_oss_proc_write._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.81, ptr @.str, i32 1236, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013ALSA: mixer_oss: invalid index %d\0A\00", [59 x i8] zeroinitializer }, align 32
@snd_mixer_oss_proc_write._entry_ptr.84 = internal global ptr @snd_mixer_oss_proc_write._entry.82, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [12 x i64] [i64 10, i64 32, i64 2147765622, i64 2147765753, i64 2147765755, i64 2147765756, i64 2147765757, i64 2147765758, i64 2147765759, i64 2150649189, i64 2153532773, i64 3221507583]
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 397, i32 6 }
@___asan_gen_.89 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.89, i32 174, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1381, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [20 x i8] c"snd_mixer_oss_f_ops\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 424, i32 37 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1386, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1398, i32 6 }
@___asan_gen_.118 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1296, i32 49 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1297, i32 26 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1298, i32 26 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1299, i32 23 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1300, i32 25 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1301, i32 24 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1302, i32 24 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1303, i32 24 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1304, i32 22 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1305, i32 26 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1306, i32 26 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1307, i32 26 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1308, i32 23 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1309, i32 22 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1310, i32 21 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1311, i32 23 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1313, i32 25 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1314, i32 25 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1315, i32 25 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1316, i32 24 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1317, i32 24 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1318, i32 24 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1321, i32 27 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1322, i32 27 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1323, i32 27 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1324, i32 27 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1327, i32 26 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1328, i32 27 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1330, i32 27 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1332, i32 24 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1333, i32 24 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1334, i32 26 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1074, i32 39 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1093, i32 16 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 999, i32 15 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1004, i32 15 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1009, i32 15 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1014, i32 15 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1019, i32 15 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1024, i32 15 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1029, i32 15 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1034, i32 15 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1039, i32 15 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1268, i32 50 }
@___asan_gen_.250 = private unnamed_addr constant [16 x i8] c"oss_mixer_names\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1148, i32 27 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1193, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1195, i32 4 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1199, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1149, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1150, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1151, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1152, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1154, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1155, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1156, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1158, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1159, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1160, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1161, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1162, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1163, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1164, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1165, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1166, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1167, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1168, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1169, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1170, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1171, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1172, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1173, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1221, i32 4 }
@___asan_gen_.340 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.343 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.344 = private constant [30 x i8] c"../sound/core/oss/mixer_oss.c\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.344, i32 1236, i32 4 }
@llvm.compiler.used = appending global [99 x ptr] [ptr @__UNIQUE_ID_alias235, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_alsa_mixer_oss_exit, ptr @__initcall__kmod_snd_mixer_oss__236_1459_alsa_mixer_oss_init6, ptr @__ksymtab_snd_mixer_oss_ioctl_card, ptr @alsa_mixer_oss_exit, ptr @snd_mixer_oss_notify_handler._entry, ptr @snd_mixer_oss_notify_handler._entry_ptr, ptr @snd_mixer_oss_proc_write._entry, ptr @snd_mixer_oss_proc_write._entry.82, ptr @snd_mixer_oss_proc_write._entry_ptr, ptr @snd_mixer_oss_proc_write._entry_ptr.84, ptr @.str, ptr @.str.3, ptr @snd_mixer_oss_notify_handler.__key, ptr @.str.4, ptr @snd_mixer_oss_f_ops, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @snd_mixer_oss_build.table, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @oss_mixer_names, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.83], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixer_oss_notify_handler.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixer_oss_f_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixer_oss_notify_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixer_oss_build.table to i32), i32 456, i32 576, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @oss_mixer_names to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixer_oss_proc_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_mixer_oss_proc_write._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_mixer_oss_ioctl_card(ptr noundef %card, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %fmixer = alloca %struct.snd_mixer_oss_file, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fmixer) #13
  %0 = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %fmixer, i32 0, i32 1
  %tobool.not = icmp eq ptr %card, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !201

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 397, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end23:                                         ; preds = %entry
  %mixer_oss = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 42
  %1 = ptrtoint ptr %mixer_oss to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %mixer_oss, align 8
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.end23.cleanup_crit_edge, label %if.end25

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end25:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %fmixer to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %card, ptr %fmixer, align 8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %0, align 4
  %call = call fastcc i32 @snd_mixer_oss_ioctl1(ptr noundef nonnull %fmixer, i32 noundef %cmd, i32 noundef %arg)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %call, %if.end25 ], [ -6, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fmixer) #13
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_mixer_oss_ioctl1(ptr noundef %fmixer, i32 noundef %cmd, i32 noundef %arg) unnamed_addr #0 align 64 {
entry:
  %left.i = alloca i32, align 4
  %right.i = alloca i32, align 4
  %index.i = alloca i32, align 4
  %active.i = alloca i32, align 4
  %info.i348 = alloca %struct._old_mixer_info, align 1
  %info.i = alloca %struct.mixer_info, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %tobool.not = icmp eq ptr %fmixer, null
  br i1 %tobool.not, label %do.end, label %if.end24, !prof !201

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #13
  br label %cleanup

if.end24:                                         ; preds = %entry
  %1 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 19712, i32 %1)
  %cmp = icmp eq i32 %1, 19712
  br i1 %cmp, label %if.then25, label %if.end24.if.end184_crit_edge

if.end24.if.end184_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184

if.then25:                                        ; preds = %if.end24
  %2 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %if.then25.if.end184_crit_edge [
    i32 -2141434523, label %sw.bb
    i32 -2144318107, label %sw.bb26
    i32 -1073459713, label %sw.bb28
    i32 -2147201674, label %sw.bb52
    i32 -2147201543, label %sw.bb68
    i32 -2147201538, label %sw.bb84
    i32 -2147201541, label %sw.bb104
    i32 -2147201539, label %sw.bb124
    i32 -2147201540, label %sw.bb144
    i32 -2147201537, label %sw.bb164
  ]

if.then25.if.end184_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end184

sw.bb:                                            ; preds = %if.then25
  %3 = ptrtoint ptr %fmixer to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fmixer, align 4
  %mixer2.i = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %fmixer, i32 0, i32 1
  %5 = ptrtoint ptr %mixer2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mixer2.i, align 4
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %info.i) #13
  %7 = call ptr @memset(ptr %info.i, i32 0, i32 92)
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %cond.end.thread41.i, label %land.lhs.true.i

cond.end.thread41.i:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15
  %driver42.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 2
  %call43.i = call i32 @strscpy(ptr noundef nonnull %info.i, ptr noundef %driver42.i, i32 noundef 16) #13
  %name44.i = getelementptr inbounds %struct.mixer_info, ptr %info.i, i32 0, i32 1
  br label %cond.false18.i

land.lhs.true.i:                                  ; preds = %sw.bb
  %id3.i = getelementptr inbounds %struct.snd_mixer_oss, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %id3.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %id3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool4.not.i = icmp eq i8 %9, 0
  %driver.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 2
  %driver.sink.i = select i1 %tobool4.not.i, ptr %driver.i, ptr %id3.i
  %call.i = call i32 @strscpy(ptr noundef nonnull %info.i, ptr noundef %driver.sink.i, i32 noundef 16) #13
  %name.i = getelementptr inbounds %struct.mixer_info, ptr %info.i, i32 0, i32 1
  %name11.i = getelementptr inbounds %struct.snd_mixer_oss, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %name11.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %name11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool14.not.i = icmp eq i8 %11, 0
  br i1 %tobool14.not.i, label %land.lhs.true.i.cond.false18.i_crit_edge, label %land.lhs.true.i.cond.end20.i_crit_edge

land.lhs.true.i.cond.end20.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end20.i

land.lhs.true.i.cond.false18.i_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false18.i

cond.false18.i:                                   ; preds = %land.lhs.true.i.cond.false18.i_crit_edge, %cond.end.thread41.i
  %name39.i = phi ptr [ %name.i, %land.lhs.true.i.cond.false18.i_crit_edge ], [ %name44.i, %cond.end.thread41.i ]
  %mixername.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 6
  br label %cond.end20.i

cond.end20.i:                                     ; preds = %cond.false18.i, %land.lhs.true.i.cond.end20.i_crit_edge
  %name38.i = phi ptr [ %name39.i, %cond.false18.i ], [ %name.i, %land.lhs.true.i.cond.end20.i_crit_edge ]
  %cond21.i = phi ptr [ %mixername.i, %cond.false18.i ], [ %name11.i, %land.lhs.true.i.cond.end20.i_crit_edge ]
  %call22.i = call i32 @strscpy(ptr noundef %name38.i, ptr noundef %cond21.i, i32 noundef 32) #13
  %mixer_oss_change_count.i = getelementptr inbounds %struct.snd_card, ptr %4, i32 0, i32 43
  %12 = ptrtoint ptr %mixer_oss_change_count.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mixer_oss_change_count.i, align 4
  %modify_counter.i = getelementptr inbounds %struct.mixer_info, ptr %info.i, i32 0, i32 2
  %14 = ptrtoint ptr %modify_counter.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %modify_counter.i, align 4
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #13
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i, label %cond.end20.i.snd_mixer_oss_info.exit_crit_edge, label %if.end.i.i.i

cond.end20.i.snd_mixer_oss_info.exit_crit_edge:   ; preds = %cond.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_info.exit

if.end.i.i.i:                                     ; preds = %cond.end20.i
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 92, i32 -1226833920) #16, !srcloc !202
  %asmresult.i.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %copy_to_user.exit.i, label %if.end.i.i.i.snd_mixer_oss_info.exit_crit_edge

if.end.i.i.i.snd_mixer_oss_info.exit_crit_edge:   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_info.exit

copy_to_user.exit.i:                              ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i, i32 noundef 92) #13
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %info.i, i32 noundef 92) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool24.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select.i = select i1 %tobool24.not.i, i32 0, i32 -14
  br label %snd_mixer_oss_info.exit

snd_mixer_oss_info.exit:                          ; preds = %copy_to_user.exit.i, %if.end.i.i.i.snd_mixer_oss_info.exit_crit_edge, %cond.end20.i.snd_mixer_oss_info.exit_crit_edge
  %16 = phi i32 [ -14, %cond.end20.i.snd_mixer_oss_info.exit_crit_edge ], [ -14, %if.end.i.i.i.snd_mixer_oss_info.exit_crit_edge ], [ %spec.select.i, %copy_to_user.exit.i ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %info.i) #13
  br label %cleanup

sw.bb26:                                          ; preds = %if.then25
  %17 = ptrtoint ptr %fmixer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %fmixer, align 4
  %mixer2.i349 = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %fmixer, i32 0, i32 1
  %19 = ptrtoint ptr %mixer2.i349 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mixer2.i349, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %info.i348) #13
  %21 = call ptr @memset(ptr %info.i348, i32 0, i32 48)
  %tobool.not.i350 = icmp eq ptr %20, null
  br i1 %tobool.not.i350, label %cond.end.thread40.i, label %land.lhs.true.i359

cond.end.thread40.i:                              ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #15
  %driver41.i = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 2
  %call42.i = call i32 @strscpy(ptr noundef nonnull %info.i348, ptr noundef %driver41.i, i32 noundef 16) #13
  %name43.i = getelementptr inbounds %struct._old_mixer_info, ptr %info.i348, i32 0, i32 1
  br label %cond.false18.i362

land.lhs.true.i359:                               ; preds = %sw.bb26
  %id3.i351 = getelementptr inbounds %struct.snd_mixer_oss, ptr %20, i32 0, i32 1
  %22 = ptrtoint ptr %id3.i351 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %id3.i351, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool4.not.i352 = icmp eq i8 %23, 0
  %driver.i353 = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 2
  %driver.sink.i354 = select i1 %tobool4.not.i352, ptr %driver.i353, ptr %id3.i351
  %call.i355 = call i32 @strscpy(ptr noundef nonnull %info.i348, ptr noundef %driver.sink.i354, i32 noundef 16) #13
  %name.i356 = getelementptr inbounds %struct._old_mixer_info, ptr %info.i348, i32 0, i32 1
  %name11.i357 = getelementptr inbounds %struct.snd_mixer_oss, ptr %20, i32 0, i32 2
  %24 = ptrtoint ptr %name11.i357 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %name11.i357, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool14.not.i358 = icmp eq i8 %25, 0
  br i1 %tobool14.not.i358, label %land.lhs.true.i359.cond.false18.i362_crit_edge, label %land.lhs.true.i359.cond.end20.i366_crit_edge

land.lhs.true.i359.cond.end20.i366_crit_edge:     ; preds = %land.lhs.true.i359
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end20.i366

land.lhs.true.i359.cond.false18.i362_crit_edge:   ; preds = %land.lhs.true.i359
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.false18.i362

cond.false18.i362:                                ; preds = %land.lhs.true.i359.cond.false18.i362_crit_edge, %cond.end.thread40.i
  %name38.i360 = phi ptr [ %name.i356, %land.lhs.true.i359.cond.false18.i362_crit_edge ], [ %name43.i, %cond.end.thread40.i ]
  %mixername.i361 = getelementptr inbounds %struct.snd_card, ptr %18, i32 0, i32 6
  br label %cond.end20.i366

cond.end20.i366:                                  ; preds = %cond.false18.i362, %land.lhs.true.i359.cond.end20.i366_crit_edge
  %name37.i = phi ptr [ %name38.i360, %cond.false18.i362 ], [ %name.i356, %land.lhs.true.i359.cond.end20.i366_crit_edge ]
  %cond21.i363 = phi ptr [ %mixername.i361, %cond.false18.i362 ], [ %name11.i357, %land.lhs.true.i359.cond.end20.i366_crit_edge ]
  %call22.i364 = call i32 @strscpy(ptr noundef %name37.i, ptr noundef %cond21.i363, i32 noundef 32) #13
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #13
  %call.i.i.i365 = call zeroext i1 @should_fail_usercopy() #13
  br i1 %call.i.i.i365, label %cond.end20.i366.snd_mixer_oss_info_obsolete.exit_crit_edge, label %if.end.i.i.i369

cond.end20.i366.snd_mixer_oss_info_obsolete.exit_crit_edge: ; preds = %cond.end20.i366
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_info_obsolete.exit

if.end.i.i.i369:                                  ; preds = %cond.end20.i366
  %26 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 48, i32 -1226833920) #16, !srcloc !202
  %asmresult.i.i.i367 = extractvalue { i32, i32 } %26, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i367)
  %cmp.i6.i.i368 = icmp eq i32 %asmresult.i.i.i367, 0
  br i1 %cmp.i6.i.i368, label %copy_to_user.exit.i374, label %if.end.i.i.i369.snd_mixer_oss_info_obsolete.exit_crit_edge

if.end.i.i.i369.snd_mixer_oss_info_obsolete.exit_crit_edge: ; preds = %if.end.i.i.i369
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_info_obsolete.exit

copy_to_user.exit.i374:                           ; preds = %if.end.i.i.i369
  call void @__sanitizer_cov_trace_pc() #15
  %call.i.i.i.i370 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %info.i348, i32 noundef 48) #13
  %call.i12.i.i.i371 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %info.i348, i32 noundef 48) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i371)
  %tobool24.not.i372 = icmp eq i32 %call.i12.i.i.i371, 0
  %spec.select.i373 = select i1 %tobool24.not.i372, i32 0, i32 -14
  br label %snd_mixer_oss_info_obsolete.exit

snd_mixer_oss_info_obsolete.exit:                 ; preds = %copy_to_user.exit.i374, %if.end.i.i.i369.snd_mixer_oss_info_obsolete.exit_crit_edge, %cond.end20.i366.snd_mixer_oss_info_obsolete.exit_crit_edge
  %27 = phi i32 [ -14, %cond.end20.i366.snd_mixer_oss_info_obsolete.exit_crit_edge ], [ -14, %if.end.i.i.i369.snd_mixer_oss_info_obsolete.exit_crit_edge ], [ %spec.select.i373, %copy_to_user.exit.i374 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %info.i348) #13
  br label %cleanup

sw.bb28:                                          ; preds = %if.then25
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 335) #13
  %28 = tail call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i.i.i = and i32 %28, -16384
  %29 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %29, i32 0, i32 4
  %30 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #4, !srcloc !203
  %and.i = and i32 %30, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  %31 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #13, !srcloc !206
  %asmresult = extractvalue { i32, i32 } %31, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %30) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool33.not = icmp eq i32 %asmresult, 0
  br i1 %tobool33.not, label %if.end35, label %sw.bb28.cleanup_crit_edge

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end35:                                         ; preds = %sw.bb28
  %asmresult31 = extractvalue { i32, i32 } %31, 1
  %call36 = tail call fastcc i32 @snd_mixer_oss_set_recsrc(ptr noundef nonnull %fmixer, i32 noundef %asmresult31)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end35.cleanup_crit_edge, label %if.end39

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end39:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 340) #13
  %32 = tail call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i.i.i304 = and i32 %32, -16384
  %33 = inttoptr i32 %and.i.i.i304 to ptr
  %cpu_domain.i.i305 = getelementptr inbounds %struct.thread_info, ptr %33, i32 0, i32 4
  %34 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i305) #4, !srcloc !203
  %and.i306 = and i32 %34, -13
  %or.i307 = or i32 %and.i306, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i307) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  %35 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %call36, i32 -1226833921) #13, !srcloc !207
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %34) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  br label %cleanup

sw.bb52:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 342) #13
  %36 = tail call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i.i.i308 = and i32 %36, -16384
  %37 = inttoptr i32 %and.i.i.i308 to ptr
  %cpu_domain.i.i309 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 4
  %38 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i309) #4, !srcloc !203
  %and.i310 = and i32 %38, -13
  %or.i311 = or i32 %and.i310, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i311) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  %39 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 198672, i32 -1226833921) #13, !srcloc !208
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %38) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  br label %cleanup

sw.bb68:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 344) #13
  %40 = tail call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i.i.i312 = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i312 to ptr
  %cpu_domain.i.i313 = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 4
  %42 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i313) #4, !srcloc !203
  %and.i314 = and i32 %42, -13
  %or.i315 = or i32 %and.i314, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i315) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  %43 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 1, i32 -1226833921) #13, !srcloc !209
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %42) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  br label %cleanup

sw.bb84:                                          ; preds = %if.then25
  %mixer1.i = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %fmixer, i32 0, i32 1
  %44 = ptrtoint ptr %mixer1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mixer1.i, align 4
  %cmp.i = icmp eq ptr %45, null
  br i1 %cmp.i, label %sw.bb84.cleanup_crit_edge, label %if.end.i

sw.bb84.cleanup_crit_edge:                        ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb84
  %reg_mutex.i = getelementptr inbounds %struct.snd_mixer_oss, ptr %45, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i, i32 noundef 0) #13
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i
  %chn.020.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %result.018.i = phi i32 [ 0, %if.end.i ], [ %result.1.i, %for.inc.i.for.body.i_crit_edge ]
  %put_volume.i = getelementptr %struct.snd_mixer_oss, ptr %45, i32 0, i32 3, i32 %chn.020.i, i32 3
  %46 = ptrtoint ptr %put_volume.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %put_volume.i, align 4
  %tobool.not.i375 = icmp eq ptr %47, null
  br i1 %tobool.not.i375, label %lor.lhs.false.i, label %for.body.i.if.then4.i_crit_edge

for.body.i.if.then4.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %put_recsrc.i = getelementptr %struct.snd_mixer_oss, ptr %45, i32 0, i32 3, i32 %chn.020.i, i32 5
  %48 = ptrtoint ptr %put_recsrc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %put_recsrc.i, align 4
  %tobool3.not.i = icmp eq ptr %49, null
  br i1 %tobool3.not.i, label %lor.lhs.false.i.for.inc.i_crit_edge, label %lor.lhs.false.i.if.then4.i_crit_edge

lor.lhs.false.i.if.then4.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4.i

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then4.i:                                       ; preds = %lor.lhs.false.i.if.then4.i_crit_edge, %for.body.i.if.then4.i_crit_edge
  %shl.i = shl nuw nsw i32 1, %chn.020.i
  %or.i376 = or i32 %shl.i, %result.018.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then4.i, %lor.lhs.false.i.for.inc.i_crit_edge
  %result.1.i = phi i32 [ %or.i376, %if.then4.i ], [ %result.018.i, %lor.lhs.false.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %chn.020.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 31
  br i1 %exitcond.not.i, label %snd_mixer_oss_devmask.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

snd_mixer_oss_devmask.exit:                       ; preds = %for.inc.i
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1.i)
  %cmp86 = icmp slt i32 %result.1.i, 0
  br i1 %cmp86, label %snd_mixer_oss_devmask.exit.cleanup_crit_edge, label %if.end88

snd_mixer_oss_devmask.exit.cleanup_crit_edge:     ; preds = %snd_mixer_oss_devmask.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end88:                                         ; preds = %snd_mixer_oss_devmask.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 349) #13
  %50 = tail call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i.i.i316 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i.i.i316 to ptr
  %cpu_domain.i.i317 = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 4
  %52 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i317) #4, !srcloc !203
  %and.i318 = and i32 %52, -13
  %or.i319 = or i32 %and.i318, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i319) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  %53 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %result.1.i, i32 -1226833921) #13, !srcloc !210
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %52) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  br label %cleanup

sw.bb104:                                         ; preds = %if.then25
  %mixer1.i377 = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %fmixer, i32 0, i32 1
  %54 = ptrtoint ptr %mixer1.i377 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %mixer1.i377, align 4
  %cmp.i378 = icmp eq ptr %55, null
  br i1 %cmp.i378, label %sw.bb104.cleanup_crit_edge, label %if.end.i380

sw.bb104.cleanup_crit_edge:                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i380:                                      ; preds = %sw.bb104
  %reg_mutex.i379 = getelementptr inbounds %struct.snd_mixer_oss, ptr %55, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i379, i32 noundef 0) #13
  br label %for.body.i384

for.body.i384:                                    ; preds = %for.inc.i393.for.body.i384_crit_edge, %if.end.i380
  %chn.019.i = phi i32 [ 0, %if.end.i380 ], [ %inc.i391, %for.inc.i393.for.body.i384_crit_edge ]
  %result.018.i381 = phi i32 [ 0, %if.end.i380 ], [ %result.1.i390, %for.inc.i393.for.body.i384_crit_edge ]
  %put_volume.i382 = getelementptr %struct.snd_mixer_oss, ptr %55, i32 0, i32 3, i32 %chn.019.i, i32 3
  %56 = ptrtoint ptr %put_volume.i382 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %put_volume.i382, align 4
  %tobool.not.i383 = icmp eq ptr %57, null
  br i1 %tobool.not.i383, label %for.body.i384.for.inc.i393_crit_edge, label %land.lhs.true.i386

for.body.i384.for.inc.i393_crit_edge:             ; preds = %for.body.i384
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i393

land.lhs.true.i386:                               ; preds = %for.body.i384
  %stereo.i = getelementptr %struct.snd_mixer_oss, ptr %55, i32 0, i32 3, i32 %chn.019.i, i32 1
  %58 = ptrtoint ptr %stereo.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %bf.load.i = load i8, ptr %stereo.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool3.not.i385 = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool3.not.i385, label %land.lhs.true.i386.for.inc.i393_crit_edge, label %if.then4.i389

land.lhs.true.i386.for.inc.i393_crit_edge:        ; preds = %land.lhs.true.i386
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i393

if.then4.i389:                                    ; preds = %land.lhs.true.i386
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i387 = shl nuw nsw i32 1, %chn.019.i
  %or.i388 = or i32 %shl.i387, %result.018.i381
  br label %for.inc.i393

for.inc.i393:                                     ; preds = %if.then4.i389, %land.lhs.true.i386.for.inc.i393_crit_edge, %for.body.i384.for.inc.i393_crit_edge
  %result.1.i390 = phi i32 [ %or.i388, %if.then4.i389 ], [ %result.018.i381, %land.lhs.true.i386.for.inc.i393_crit_edge ], [ %result.018.i381, %for.body.i384.for.inc.i393_crit_edge ]
  %inc.i391 = add nuw nsw i32 %chn.019.i, 1
  %exitcond.not.i392 = icmp eq i32 %inc.i391, 31
  br i1 %exitcond.not.i392, label %snd_mixer_oss_stereodevs.exit, label %for.inc.i393.for.body.i384_crit_edge

for.inc.i393.for.body.i384_crit_edge:             ; preds = %for.inc.i393
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i384

snd_mixer_oss_stereodevs.exit:                    ; preds = %for.inc.i393
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i379) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.1.i390)
  %cmp106 = icmp slt i32 %result.1.i390, 0
  br i1 %cmp106, label %snd_mixer_oss_stereodevs.exit.cleanup_crit_edge, label %if.end108

snd_mixer_oss_stereodevs.exit.cleanup_crit_edge:  ; preds = %snd_mixer_oss_stereodevs.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end108:                                        ; preds = %snd_mixer_oss_stereodevs.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 354) #13
  %59 = tail call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i.i.i320 = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i320 to ptr
  %cpu_domain.i.i321 = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 4
  %61 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i321) #4, !srcloc !203
  %and.i322 = and i32 %61, -13
  %or.i323 = or i32 %and.i322, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i323) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  %62 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %result.1.i390, i32 -1226833921) #13, !srcloc !211
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %61) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  br label %cleanup

sw.bb124:                                         ; preds = %if.then25
  %mixer1.i396 = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %fmixer, i32 0, i32 1
  %63 = ptrtoint ptr %mixer1.i396 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mixer1.i396, align 4
  %cmp.i397 = icmp eq ptr %64, null
  br i1 %cmp.i397, label %sw.bb124.cleanup_crit_edge, label %if.end.i401

sw.bb124.cleanup_crit_edge:                       ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i401:                                      ; preds = %sw.bb124
  %reg_mutex.i398 = getelementptr inbounds %struct.snd_mixer_oss, ptr %64, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i398, i32 noundef 0) #13
  %put_recsrc.i399 = getelementptr inbounds %struct.snd_mixer_oss, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %put_recsrc.i399 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %put_recsrc.i399, align 4
  %tobool.not.i400 = icmp eq ptr %66, null
  br i1 %tobool.not.i400, label %if.end.i401.for.body.i408.preheader_crit_edge, label %land.lhs.true.i402

if.end.i401.for.body.i408.preheader_crit_edge:    ; preds = %if.end.i401
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i408.preheader

for.body.i408.preheader:                          ; preds = %land.lhs.true.i402.for.body.i408.preheader_crit_edge, %if.end.i401.for.body.i408.preheader_crit_edge
  br label %for.body.i408

land.lhs.true.i402:                               ; preds = %if.end.i401
  %get_recsrc.i = getelementptr inbounds %struct.snd_mixer_oss, ptr %64, i32 0, i32 5
  %67 = ptrtoint ptr %get_recsrc.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %get_recsrc.i, align 4
  %tobool2.not.i = icmp eq ptr %68, null
  br i1 %tobool2.not.i, label %land.lhs.true.i402.for.body.i408.preheader_crit_edge, label %if.then3.i

land.lhs.true.i402.for.body.i408.preheader_crit_edge: ; preds = %land.lhs.true.i402
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i408.preheader

if.then3.i:                                       ; preds = %land.lhs.true.i402
  call void @__sanitizer_cov_trace_pc() #15
  %mask_recsrc.i = getelementptr inbounds %struct.snd_mixer_oss, ptr %64, i32 0, i32 4
  %69 = ptrtoint ptr %mask_recsrc.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mask_recsrc.i, align 4
  br label %snd_mixer_oss_recmask.exit

for.body.i408:                                    ; preds = %for.body.i408.for.body.i408_crit_edge, %for.body.i408.preheader
  %chn.023.i = phi i32 [ %inc.i406, %for.body.i408.for.body.i408_crit_edge ], [ 0, %for.body.i408.preheader ]
  %result.022.i = phi i32 [ %result.1.i405, %for.body.i408.for.body.i408_crit_edge ], [ 0, %for.body.i408.preheader ]
  %put_recsrc5.i = getelementptr %struct.snd_mixer_oss, ptr %64, i32 0, i32 3, i32 %chn.023.i, i32 5
  %71 = ptrtoint ptr %put_recsrc5.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %put_recsrc5.i, align 4
  %tobool6.not.i = icmp eq ptr %72, null
  %shl.i403 = shl nuw nsw i32 1, %chn.023.i
  %or.i404 = select i1 %tobool6.not.i, i32 0, i32 %shl.i403
  %result.1.i405 = or i32 %or.i404, %result.022.i
  %inc.i406 = add nuw nsw i32 %chn.023.i, 1
  %exitcond.not.i407 = icmp eq i32 %inc.i406, 31
  br i1 %exitcond.not.i407, label %for.body.i408.snd_mixer_oss_recmask.exit_crit_edge, label %for.body.i408.for.body.i408_crit_edge

for.body.i408.for.body.i408_crit_edge:            ; preds = %for.body.i408
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i408

for.body.i408.snd_mixer_oss_recmask.exit_crit_edge: ; preds = %for.body.i408
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_recmask.exit

snd_mixer_oss_recmask.exit:                       ; preds = %for.body.i408.snd_mixer_oss_recmask.exit_crit_edge, %if.then3.i
  %result.2.i = phi i32 [ %70, %if.then3.i ], [ %result.1.i405, %for.body.i408.snd_mixer_oss_recmask.exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i398) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.2.i)
  %cmp126 = icmp slt i32 %result.2.i, 0
  br i1 %cmp126, label %snd_mixer_oss_recmask.exit.cleanup_crit_edge, label %if.end128

snd_mixer_oss_recmask.exit.cleanup_crit_edge:     ; preds = %snd_mixer_oss_recmask.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end128:                                        ; preds = %snd_mixer_oss_recmask.exit
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 359) #13
  %73 = tail call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i.i.i324 = and i32 %73, -16384
  %74 = inttoptr i32 %and.i.i.i324 to ptr
  %cpu_domain.i.i325 = getelementptr inbounds %struct.thread_info, ptr %74, i32 0, i32 4
  %75 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i325) #4, !srcloc !203
  %and.i326 = and i32 %75, -13
  %or.i327 = or i32 %and.i326, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i327) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  %76 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %result.2.i, i32 -1226833921) #13, !srcloc !212
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %75) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  br label %cleanup

sw.bb144:                                         ; preds = %if.then25
  %mixer1.i410 = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %fmixer, i32 0, i32 1
  %77 = ptrtoint ptr %mixer1.i410 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %mixer1.i410, align 4
  %cmp.i411 = icmp eq ptr %78, null
  br i1 %cmp.i411, label %sw.bb144.cleanup_crit_edge, label %if.end.i414

sw.bb144.cleanup_crit_edge:                       ; preds = %sw.bb144
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i414:                                      ; preds = %sw.bb144
  %get_recsrc.i412 = getelementptr inbounds %struct.snd_mixer_oss, ptr %78, i32 0, i32 5
  %79 = ptrtoint ptr %get_recsrc.i412 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %get_recsrc.i412, align 4
  %tobool.not.i413 = icmp eq ptr %80, null
  br i1 %tobool.not.i413, label %if.end.i414.if.end148_crit_edge, label %land.lhs.true.i418

if.end.i414.if.end148_crit_edge:                  ; preds = %if.end.i414
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end148

land.lhs.true.i418:                               ; preds = %if.end.i414
  call void @__sanitizer_cov_trace_pc() #15
  %put_recsrc.i415 = getelementptr inbounds %struct.snd_mixer_oss, ptr %78, i32 0, i32 6
  %81 = ptrtoint ptr %put_recsrc.i415 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %put_recsrc.i415, align 4
  %tobool2.not.i416 = icmp ne ptr %82, null
  %spec.select.i417 = zext i1 %tobool2.not.i416 to i32
  br label %if.end148

if.end148:                                        ; preds = %land.lhs.true.i418, %if.end.i414.if.end148_crit_edge
  %retval.0.i419.ph = phi i32 [ %spec.select.i417, %land.lhs.true.i418 ], [ 0, %if.end.i414.if.end148_crit_edge ]
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 364) #13
  %83 = tail call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i.i.i328 = and i32 %83, -16384
  %84 = inttoptr i32 %and.i.i.i328 to ptr
  %cpu_domain.i.i329 = getelementptr inbounds %struct.thread_info, ptr %84, i32 0, i32 4
  %85 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i329) #4, !srcloc !203
  %and.i330 = and i32 %85, -13
  %or.i331 = or i32 %and.i330, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i331) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  %86 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %retval.0.i419.ph, i32 -1226833921) #13, !srcloc !213
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %85) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  br label %cleanup

sw.bb164:                                         ; preds = %if.then25
  %mixer1.i420 = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %fmixer, i32 0, i32 1
  %87 = ptrtoint ptr %mixer1.i420 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mixer1.i420, align 4
  %cmp.i421 = icmp eq ptr %88, null
  br i1 %cmp.i421, label %sw.bb164.cleanup_crit_edge, label %if.end.i425

sw.bb164.cleanup_crit_edge:                       ; preds = %sw.bb164
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i425:                                      ; preds = %sw.bb164
  %reg_mutex.i422 = getelementptr inbounds %struct.snd_mixer_oss, ptr %88, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i422, i32 noundef 0) #13
  %put_recsrc.i423 = getelementptr inbounds %struct.snd_mixer_oss, ptr %88, i32 0, i32 6
  %89 = ptrtoint ptr %put_recsrc.i423 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %put_recsrc.i423, align 4
  %tobool.not.i424 = icmp eq ptr %90, null
  br i1 %tobool.not.i424, label %if.end.i425.for.body.i433.preheader_crit_edge, label %land.lhs.true.i428

if.end.i425.for.body.i433.preheader_crit_edge:    ; preds = %if.end.i425
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i433.preheader

for.body.i433.preheader:                          ; preds = %land.lhs.true.i428.for.body.i433.preheader_crit_edge, %if.end.i425.for.body.i433.preheader_crit_edge
  br label %for.body.i433

land.lhs.true.i428:                               ; preds = %if.end.i425
  %get_recsrc.i426 = getelementptr inbounds %struct.snd_mixer_oss, ptr %88, i32 0, i32 5
  %91 = ptrtoint ptr %get_recsrc.i426 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %get_recsrc.i426, align 4
  %tobool2.not.i427 = icmp eq ptr %92, null
  br i1 %tobool2.not.i427, label %land.lhs.true.i428.for.body.i433.preheader_crit_edge, label %if.then3.i430

land.lhs.true.i428.for.body.i433.preheader_crit_edge: ; preds = %land.lhs.true.i428
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i433.preheader

if.then3.i430:                                    ; preds = %land.lhs.true.i428
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index.i) #13
  %93 = ptrtoint ptr %index.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %index.i, align 4, !annotation !214
  %call.i429 = call i32 %92(ptr noundef nonnull %fmixer, ptr noundef nonnull %index.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i429)
  %cmp5.i = icmp slt i32 %call.i429, 0
  br i1 %cmp5.i, label %snd_mixer_oss_get_recsrc.exit.thread486, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then3.i430
  call void @__sanitizer_cov_trace_pc() #15
  %94 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %index.i, align 4
  %shl.i431 = shl nuw i32 1, %95
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #13
  br label %snd_mixer_oss_get_recsrc.exit

snd_mixer_oss_get_recsrc.exit.thread486:          ; preds = %if.then3.i430
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index.i) #13
  call void @mutex_unlock(ptr noundef %reg_mutex.i422) #13
  br label %cleanup

for.body.i433:                                    ; preds = %for.inc.i439.for.body.i433_crit_edge, %for.body.i433.preheader
  %chn.045.i = phi i32 [ %inc.i437, %for.inc.i439.for.body.i433_crit_edge ], [ 0, %for.body.i433.preheader ]
  %result.144.i = phi i32 [ %result.3.i, %for.inc.i439.for.body.i433_crit_edge ], [ 0, %for.body.i433.preheader ]
  %get_recsrc9.i = getelementptr %struct.snd_mixer_oss, ptr %88, i32 0, i32 3, i32 %chn.045.i, i32 4
  %96 = ptrtoint ptr %get_recsrc9.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %get_recsrc9.i, align 4
  %tobool10.not.i = icmp eq ptr %97, null
  br i1 %tobool10.not.i, label %for.body.i433.for.inc.i439_crit_edge, label %if.then11.i

for.body.i433.for.inc.i439_crit_edge:             ; preds = %for.body.i433
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i439

if.then11.i:                                      ; preds = %for.body.i433
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i = getelementptr %struct.snd_mixer_oss, ptr %88, i32 0, i32 3, i32 %chn.045.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active.i) #13
  %98 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %active.i, align 4
  %99 = ptrtoint ptr %get_recsrc9.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %get_recsrc9.i, align 4
  %call13.i = call i32 %100(ptr noundef nonnull %fmixer, ptr noundef %arrayidx.i, ptr noundef nonnull %active.i) #13
  %101 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %active.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool14.not.i434 = icmp eq i32 %102, 0
  %shl16.i = shl nuw nsw i32 1, %chn.045.i
  %or.i435 = select i1 %tobool14.not.i434, i32 0, i32 %shl16.i
  %result.2.i436 = or i32 %or.i435, %result.144.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active.i) #13
  br label %for.inc.i439

for.inc.i439:                                     ; preds = %if.then11.i, %for.body.i433.for.inc.i439_crit_edge
  %result.3.i = phi i32 [ %result.2.i436, %if.then11.i ], [ %result.144.i, %for.body.i433.for.inc.i439_crit_edge ]
  %inc.i437 = add nuw nsw i32 %chn.045.i, 1
  %exitcond.not.i438 = icmp eq i32 %inc.i437, 31
  br i1 %exitcond.not.i438, label %for.inc.i439.snd_mixer_oss_get_recsrc.exit_crit_edge, label %for.inc.i439.for.body.i433_crit_edge

for.inc.i439.for.body.i433_crit_edge:             ; preds = %for.inc.i439
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i433

for.inc.i439.snd_mixer_oss_get_recsrc.exit_crit_edge: ; preds = %for.inc.i439
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_get_recsrc.exit

snd_mixer_oss_get_recsrc.exit:                    ; preds = %for.inc.i439.snd_mixer_oss_get_recsrc.exit_crit_edge, %cleanup.thread.i
  %result.4.i = phi i32 [ %shl.i431, %cleanup.thread.i ], [ %result.3.i, %for.inc.i439.snd_mixer_oss_get_recsrc.exit_crit_edge ]
  %oss_recsrc.i = getelementptr inbounds %struct.snd_mixer_oss, ptr %88, i32 0, i32 12
  %103 = ptrtoint ptr %oss_recsrc.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %result.4.i, ptr %oss_recsrc.i, align 4
  call void @mutex_unlock(ptr noundef %reg_mutex.i422) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.4.i)
  %cmp166 = icmp slt i32 %result.4.i, 0
  br i1 %cmp166, label %snd_mixer_oss_get_recsrc.exit.cleanup_crit_edge, label %if.end168

snd_mixer_oss_get_recsrc.exit.cleanup_crit_edge:  ; preds = %snd_mixer_oss_get_recsrc.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end168:                                        ; preds = %snd_mixer_oss_get_recsrc.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 369) #13
  %104 = call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i.i.i332 = and i32 %104, -16384
  %105 = inttoptr i32 %and.i.i.i332 to ptr
  %cpu_domain.i.i333 = getelementptr inbounds %struct.thread_info, ptr %105, i32 0, i32 4
  %106 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i333) #4, !srcloc !203
  %and.i334 = and i32 %106, -13
  %or.i335 = or i32 %and.i334, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i335) #13, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  %107 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %result.4.i, i32 -1226833921) #13, !srcloc !215
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %106) #13, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  br label %cleanup

if.end184:                                        ; preds = %if.then25.if.end184_crit_edge, %if.end24.if.end184_crit_edge
  %and185 = and i32 %cmd, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.else, label %if.then187

if.then187:                                       ; preds = %if.end184
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 373) #13
  %108 = tail call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i.i.i336 = and i32 %108, -16384
  %109 = inttoptr i32 %and.i.i.i336 to ptr
  %cpu_domain.i.i337 = getelementptr inbounds %struct.thread_info, ptr %109, i32 0, i32 4
  %110 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i337) #4, !srcloc !203
  %and.i338 = and i32 %110, -13
  %or.i339 = or i32 %and.i338, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i339) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  %111 = tail call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %0, i32 -1226833921) #13, !srcloc !216
  %asmresult197 = extractvalue { i32, i32 } %111, 0
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %110) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult197)
  %tobool200.not = icmp eq i32 %asmresult197, 0
  br i1 %tobool200.not, label %if.end202, label %if.then187.cleanup_crit_edge

if.then187.cleanup_crit_edge:                     ; preds = %if.then187
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end202:                                        ; preds = %if.then187
  %and203 = and i32 %cmd, 255
  %mixer1.i441 = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %fmixer, i32 0, i32 1
  %112 = ptrtoint ptr %mixer1.i441 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mixer1.i441, align 4
  %cmp.i442 = icmp eq ptr %113, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %and203)
  %cmp3.i = icmp ugt i32 %and203, 30
  %or.cond.i = or i1 %cmp3.i, %cmp.i442
  br i1 %or.cond.i, label %if.end202.cleanup_crit_edge, label %if.end.i449

if.end202.cleanup_crit_edge:                      ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end.i449:                                      ; preds = %if.end202
  %asmresult198 = extractvalue { i32, i32 } %111, 1
  %114 = lshr i32 %asmresult198, 8
  %and2.i = and i32 %114, 255
  %and.i443 = and i32 %asmresult198, 255
  %reg_mutex.i444 = getelementptr inbounds %struct.snd_mixer_oss, ptr %113, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i444, i32 noundef 0) #13
  %115 = tail call i32 @llvm.umin.i32(i32 %and.i443, i32 100) #13
  %stereo.i445 = getelementptr %struct.snd_mixer_oss, ptr %113, i32 0, i32 3, i32 %and203, i32 1
  %116 = ptrtoint ptr %stereo.i445 to i32
  call void @__asan_load1_noabort(i32 %116)
  %bf.load.i446 = load i8, ptr %stereo.i445, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i446)
  %tobool.not53.i = icmp slt i8 %bf.load.i446, 0
  %minmaxop.i = select i1 %tobool.not53.i, i32 %and2.i, i32 %and.i443
  %spec.select.i447 = tail call i32 @llvm.umin.i32(i32 %minmaxop.i, i32 100) #13
  %put_volume.i448 = getelementptr %struct.snd_mixer_oss, ptr %113, i32 0, i32 3, i32 %and203, i32 3
  %117 = ptrtoint ptr %put_volume.i448 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %put_volume.i448, align 4
  %tobool12.not.i = icmp eq ptr %118, null
  br i1 %tobool12.not.i, label %if.end.i449.snd_mixer_oss_set_volume.exit_crit_edge, label %if.end15.i

if.end.i449.snd_mixer_oss_set_volume.exit_crit_edge: ; preds = %if.end.i449
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_set_volume.exit

if.end15.i:                                       ; preds = %if.end.i449
  %arrayidx.i450 = getelementptr %struct.snd_mixer_oss, ptr %113, i32 0, i32 3, i32 %and203
  %call.i451 = tail call i32 %118(ptr noundef nonnull %fmixer, ptr noundef %arrayidx.i450, i32 noundef %115, i32 noundef %spec.select.i447) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i451)
  %cmp16.i = icmp slt i32 %call.i451, 0
  br i1 %cmp16.i, label %snd_mixer_oss_set_volume.exit.thread491, label %if.end15.i.snd_mixer_oss_set_volume.exit_crit_edge

if.end15.i.snd_mixer_oss_set_volume.exit_crit_edge: ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_set_volume.exit

snd_mixer_oss_set_volume.exit.thread491:          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i444) #13
  br label %cleanup

snd_mixer_oss_set_volume.exit:                    ; preds = %if.end15.i.snd_mixer_oss_set_volume.exit_crit_edge, %if.end.i449.snd_mixer_oss_set_volume.exit_crit_edge
  %volume19.i = getelementptr %struct.snd_mixer_oss, ptr %113, i32 0, i32 3, i32 %and203, i32 9
  %119 = ptrtoint ptr %volume19.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %115, ptr %volume19.i, align 4
  %arrayidx22.i = getelementptr %struct.snd_mixer_oss, ptr %113, i32 0, i32 3, i32 %and203, i32 9, i32 1
  %120 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 %spec.select.i447, ptr %arrayidx22.i, align 4
  %shl.i452 = shl nuw nsw i32 %spec.select.i447, 8
  %or.i453 = or i32 %shl.i452, %115
  tail call void @mutex_unlock(ptr noundef %reg_mutex.i444) #13
  tail call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 378) #13
  %121 = tail call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i.i.i340 = and i32 %121, -16384
  %122 = inttoptr i32 %and.i.i.i340 to ptr
  %cpu_domain.i.i341 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 4
  %123 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i341) #4, !srcloc !203
  %and.i342 = and i32 %123, -13
  %or.i343 = or i32 %and.i342, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i343) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  %124 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %or.i453, i32 -1226833921) #13, !srcloc !217
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %123) #13, !srcloc !204
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  br label %cleanup

if.else:                                          ; preds = %if.end184
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %tobool224.not = icmp sgt i32 %cmd, -1
  br i1 %tobool224.not, label %if.else.cleanup_crit_edge, label %if.then225

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then225:                                       ; preds = %if.else
  %and226 = and i32 %cmd, 255
  %mixer1.i458 = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %fmixer, i32 0, i32 1
  %125 = ptrtoint ptr %mixer1.i458 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %mixer1.i458, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left.i) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %right.i) #13
  %cmp.i459 = icmp eq ptr %126, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 30, i32 %and226)
  %cmp2.i = icmp ugt i32 %and226, 30
  %or.cond.i460 = or i1 %cmp2.i, %cmp.i459
  br i1 %or.cond.i460, label %snd_mixer_oss_get_volume.exit.thread, label %if.end.i463

snd_mixer_oss_get_volume.exit.thread:             ; preds = %if.then225
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %right.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left.i) #13
  br label %cleanup

if.end.i463:                                      ; preds = %if.then225
  %reg_mutex.i461 = getelementptr inbounds %struct.snd_mixer_oss, ptr %126, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex.i461, i32 noundef 0) #13
  %volume.i = getelementptr %struct.snd_mixer_oss, ptr %126, i32 0, i32 3, i32 %and226, i32 9
  %127 = ptrtoint ptr %volume.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %volume.i, align 4
  %129 = ptrtoint ptr %left.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %128, ptr %left.i, align 4
  %arrayidx5.i = getelementptr %struct.snd_mixer_oss, ptr %126, i32 0, i32 3, i32 %and226, i32 9, i32 1
  %130 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx5.i, align 4
  %132 = ptrtoint ptr %right.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %right.i, align 4
  %get_volume.i = getelementptr %struct.snd_mixer_oss, ptr %126, i32 0, i32 3, i32 %and226, i32 2
  %133 = ptrtoint ptr %get_volume.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %get_volume.i, align 4
  %tobool.not.i462 = icmp eq ptr %134, null
  br i1 %tobool.not.i462, label %if.end.i463.if.end8.i_crit_edge, label %if.then6.i

if.end.i463.if.end8.i_crit_edge:                  ; preds = %if.end.i463
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i

if.then6.i:                                       ; preds = %if.end.i463
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i464 = getelementptr %struct.snd_mixer_oss, ptr %126, i32 0, i32 3, i32 %and226
  %call.i465 = call i32 %134(ptr noundef nonnull %fmixer, ptr noundef %arrayidx.i464, ptr noundef nonnull %left.i, ptr noundef nonnull %right.i) #13
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then6.i, %if.end.i463.if.end8.i_crit_edge
  %result.0.i = phi i32 [ %call.i465, %if.then6.i ], [ 0, %if.end.i463.if.end8.i_crit_edge ]
  %stereo.i466 = getelementptr %struct.snd_mixer_oss, ptr %126, i32 0, i32 3, i32 %and226, i32 1
  %135 = ptrtoint ptr %stereo.i466 to i32
  call void @__asan_load1_noabort(i32 %135)
  %bf.load.i467 = load i8, ptr %stereo.i466, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i467)
  %tobool9.not.i = icmp sgt i8 %bf.load.i467, -1
  %136 = ptrtoint ptr %left.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %left.i, align 4
  br i1 %tobool9.not.i, label %if.then10.i, label %if.end8.i.if.end11.i_crit_edge

if.end8.i.if.end11.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end11.i

if.then10.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  %138 = ptrtoint ptr %right.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %137, ptr %right.i, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then10.i, %if.end8.i.if.end11.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %137)
  %139 = icmp ugt i32 %137, 100
  br i1 %139, label %if.end11.i.snd_mixer_oss_get_volume.exit.thread496.sink.split_crit_edge, label %if.end37.i, !prof !201

if.end11.i.snd_mixer_oss_get_volume.exit.thread496.sink.split_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_get_volume.exit.thread496.sink.split

if.end37.i:                                       ; preds = %if.end11.i
  %140 = ptrtoint ptr %right.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %right.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %141)
  %142 = icmp ugt i32 %141, 100
  br i1 %142, label %if.end37.i.snd_mixer_oss_get_volume.exit.thread496.sink.split_crit_edge, label %if.end74.i, !prof !201

if.end37.i.snd_mixer_oss_get_volume.exit.thread496.sink.split_crit_edge: ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_get_volume.exit.thread496.sink.split

if.end74.i:                                       ; preds = %if.end37.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %result.0.i)
  %cmp75.i = icmp sgt i32 %result.0.i, -1
  br i1 %cmp75.i, label %snd_mixer_oss_get_volume.exit, label %if.end74.i.snd_mixer_oss_get_volume.exit.thread496_crit_edge

if.end74.i.snd_mixer_oss_get_volume.exit.thread496_crit_edge: ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_get_volume.exit.thread496

snd_mixer_oss_get_volume.exit.thread496.sink.split: ; preds = %if.end37.i.snd_mixer_oss_get_volume.exit.thread496.sink.split_crit_edge, %if.end11.i.snd_mixer_oss_get_volume.exit.thread496.sink.split_crit_edge
  %.sink = phi i32 [ 273, %if.end11.i.snd_mixer_oss_get_volume.exit.thread496.sink.split_crit_edge ], [ 277, %if.end37.i.snd_mixer_oss_get_volume.exit.thread496.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef %.sink, i32 noundef 9, ptr noundef null) #13
  br label %snd_mixer_oss_get_volume.exit.thread496

snd_mixer_oss_get_volume.exit.thread496:          ; preds = %snd_mixer_oss_get_volume.exit.thread496.sink.split, %if.end74.i.snd_mixer_oss_get_volume.exit.thread496_crit_edge
  %result.1.i471.ph = phi i32 [ %result.0.i, %if.end74.i.snd_mixer_oss_get_volume.exit.thread496_crit_edge ], [ -5, %snd_mixer_oss_get_volume.exit.thread496.sink.split ]
  call void @mutex_unlock(ptr noundef %reg_mutex.i461) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %right.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left.i) #13
  br label %cleanup

snd_mixer_oss_get_volume.exit:                    ; preds = %if.end74.i
  call void @__sanitizer_cov_trace_pc() #15
  %143 = ptrtoint ptr %volume.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 %137, ptr %volume.i, align 4
  %144 = ptrtoint ptr %right.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %right.i, align 4
  %146 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 %145, ptr %arrayidx5.i, align 4
  %147 = ptrtoint ptr %left.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %left.i, align 4
  %and.i468 = and i32 %148, 255
  %149 = load i32, ptr %right.i, align 4
  %and81.i = shl i32 %149, 8
  %shl.i469 = and i32 %and81.i, 65280
  %or.i470 = or i32 %shl.i469, %and.i468
  call void @mutex_unlock(ptr noundef %reg_mutex.i461) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %right.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left.i) #13
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 383) #13
  %150 = call i32 @llvm.read_register.i32(metadata !191) #13
  %and.i.i.i344 = and i32 %150, -16384
  %151 = inttoptr i32 %and.i.i.i344 to ptr
  %cpu_domain.i.i345 = getelementptr inbounds %struct.thread_info, ptr %151, i32 0, i32 4
  %152 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i345) #4, !srcloc !203
  %and.i346 = and i32 %152, -13
  %or.i347 = or i32 %and.i346, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i347) #13, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  %153 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 %or.i470, i32 -1226833921) #13, !srcloc !218
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %152) #13, !srcloc !204
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #13, !srcloc !205
  br label %cleanup

cleanup:                                          ; preds = %snd_mixer_oss_get_volume.exit, %snd_mixer_oss_get_volume.exit.thread496, %snd_mixer_oss_get_volume.exit.thread, %if.else.cleanup_crit_edge, %snd_mixer_oss_set_volume.exit, %snd_mixer_oss_set_volume.exit.thread491, %if.end202.cleanup_crit_edge, %if.then187.cleanup_crit_edge, %if.end168, %snd_mixer_oss_get_recsrc.exit.cleanup_crit_edge, %snd_mixer_oss_get_recsrc.exit.thread486, %sw.bb164.cleanup_crit_edge, %if.end148, %sw.bb144.cleanup_crit_edge, %if.end128, %snd_mixer_oss_recmask.exit.cleanup_crit_edge, %sw.bb124.cleanup_crit_edge, %if.end108, %snd_mixer_oss_stereodevs.exit.cleanup_crit_edge, %sw.bb104.cleanup_crit_edge, %if.end88, %snd_mixer_oss_devmask.exit.cleanup_crit_edge, %sw.bb84.cleanup_crit_edge, %sw.bb68, %sw.bb52, %if.end39, %if.end35.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %snd_mixer_oss_info_obsolete.exit, %snd_mixer_oss_info.exit, %do.end
  %retval.0 = phi i32 [ -6, %do.end ], [ %124, %snd_mixer_oss_set_volume.exit ], [ %153, %snd_mixer_oss_get_volume.exit ], [ %107, %if.end168 ], [ %86, %if.end148 ], [ %76, %if.end128 ], [ %62, %if.end108 ], [ %53, %if.end88 ], [ %43, %sw.bb68 ], [ %39, %sw.bb52 ], [ %35, %if.end39 ], [ %27, %snd_mixer_oss_info_obsolete.exit ], [ %16, %snd_mixer_oss_info.exit ], [ -14, %sw.bb28.cleanup_crit_edge ], [ %call36, %if.end35.cleanup_crit_edge ], [ %result.1.i, %snd_mixer_oss_devmask.exit.cleanup_crit_edge ], [ %result.1.i390, %snd_mixer_oss_stereodevs.exit.cleanup_crit_edge ], [ %result.2.i, %snd_mixer_oss_recmask.exit.cleanup_crit_edge ], [ %result.4.i, %snd_mixer_oss_get_recsrc.exit.cleanup_crit_edge ], [ -14, %if.then187.cleanup_crit_edge ], [ -6, %if.else.cleanup_crit_edge ], [ -5, %sw.bb144.cleanup_crit_edge ], [ %call.i429, %snd_mixer_oss_get_recsrc.exit.thread486 ], [ %call.i451, %snd_mixer_oss_set_volume.exit.thread491 ], [ -5, %snd_mixer_oss_get_volume.exit.thread ], [ %result.1.i471.ph, %snd_mixer_oss_get_volume.exit.thread496 ], [ -5, %sw.bb84.cleanup_crit_edge ], [ -5, %sw.bb104.cleanup_crit_edge ], [ -5, %sw.bb124.cleanup_crit_edge ], [ -5, %sw.bb164.cleanup_crit_edge ], [ -5, %if.end202.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @alsa_mixer_oss_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @snd_mixer_oss_notify_callback to i32))
  store ptr null, ptr @snd_mixer_oss_notify_callback, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %idx.06 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call ptr @snd_card_ref(i32 noundef %idx.06) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @snd_mixer_oss_notify_handler(ptr noundef nonnull %call, i32 noundef 2)
  %card_dev.i = getelementptr inbounds %struct.snd_card, ptr %call, i32 0, i32 28
  tail call void @put_device(ptr noundef %card_dev.i) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.06, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_card_ref(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixer_oss_notify_handler(ptr noundef %card, i32 noundef %cmd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cmd)
  %cmp = icmp eq i32 %cmd, 0
  br i1 %cmp, label %if.then, label %if.else28

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 3168) #17
  %cmp1 = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp1, label %if.then.cleanup48_crit_edge, label %do.body

if.then.cleanup48_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup48

do.body:                                          ; preds = %if.then
  %reg_mutex = getelementptr inbounds %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 9
  tail call void @__mutex_init(ptr noundef %reg_mutex, ptr noundef nonnull @.str.4, ptr noundef nonnull @snd_mixer_oss_notify_handler.__key) #13
  %call3 = tail call i32 @snd_register_oss_device(i32 noundef 0, ptr noundef %card, i32 noundef 0, ptr noundef nonnull @snd_mixer_oss_f_ops, ptr noundef %card) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end9

do.end8:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %dev = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 27
  %1 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev, align 8
  %3 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %card, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %4, i32 noundef 0) #18
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #13
  br label %cleanup48

if.end9:                                          ; preds = %do.body
  %oss_dev_alloc = getelementptr inbounds %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 11
  %5 = ptrtoint ptr %oss_dev_alloc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %oss_dev_alloc, align 8
  %6 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %card, ptr %call7.i.i.i, align 8
  %mixername = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 6
  %7 = ptrtoint ptr %mixername to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %mixername, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %name16 = getelementptr inbounds %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 2
  br i1 %tobool.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %call15 = tail call i32 @strscpy(ptr noundef %name16, ptr noundef %mixername, i32 noundef 32) #13
  br label %if.end20

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %card, align 8
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name16, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %10)
  br label %if.end20

if.end20:                                         ; preds = %if.else, %if.then11
  %11 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %card, align 8
  %name22 = getelementptr inbounds %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 2
  %call24 = tail call i32 @snd_oss_info_register(i32 noundef 5, i32 noundef %12, ptr noundef %name22) #13
  %arrayidx = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 0
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx, align 4
  %arrayidx.1 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %arrayidx.1, align 8
  %arrayidx.2 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %arrayidx.3, align 8
  %arrayidx.4 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 5
  %18 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 5, ptr %arrayidx.5, align 8
  %arrayidx.6 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 6
  %19 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 6, ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 7
  %20 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 7, ptr %arrayidx.7, align 8
  %arrayidx.8 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 8
  %21 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 9
  %22 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 9, ptr %arrayidx.9, align 8
  %arrayidx.10 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 10
  %23 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 10, ptr %arrayidx.10, align 4
  %arrayidx.11 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 11
  %24 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 11, ptr %arrayidx.11, align 8
  %arrayidx.12 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 12
  %25 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 12, ptr %arrayidx.12, align 4
  %arrayidx.13 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 13
  %26 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 13, ptr %arrayidx.13, align 8
  %arrayidx.14 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 14
  %27 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 14, ptr %arrayidx.14, align 4
  %arrayidx.15 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 15
  %28 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 15, ptr %arrayidx.15, align 8
  %arrayidx.16 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 16
  %29 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 16, ptr %arrayidx.16, align 4
  %arrayidx.17 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 17
  %30 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 17, ptr %arrayidx.17, align 8
  %arrayidx.18 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 18
  %31 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 18, ptr %arrayidx.18, align 4
  %arrayidx.19 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 19
  %32 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 19, ptr %arrayidx.19, align 8
  %arrayidx.20 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 20
  %33 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 20, ptr %arrayidx.20, align 4
  %arrayidx.21 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 21
  %34 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 21, ptr %arrayidx.21, align 8
  %arrayidx.22 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 22
  %35 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 22, ptr %arrayidx.22, align 4
  %arrayidx.23 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 23
  %36 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 23, ptr %arrayidx.23, align 8
  %arrayidx.24 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 24
  %37 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 24, ptr %arrayidx.24, align 4
  %arrayidx.25 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 25
  %38 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 25, ptr %arrayidx.25, align 8
  %arrayidx.26 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 26
  %39 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 26, ptr %arrayidx.26, align 4
  %arrayidx.27 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 27
  %40 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 27, ptr %arrayidx.27, align 8
  %arrayidx.28 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 28
  %41 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 28, ptr %arrayidx.28, align 4
  %arrayidx.29 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 29
  %42 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 29, ptr %arrayidx.29, align 8
  %arrayidx.30 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 30
  %43 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 30, ptr %arrayidx.30, align 4
  %arrayidx.31 = getelementptr %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 3, i32 31
  %44 = ptrtoint ptr %arrayidx.31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 31, ptr %arrayidx.31, align 8
  %mixer_oss = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 42
  %45 = ptrtoint ptr %mixer_oss to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call7.i.i.i, ptr %mixer_oss, align 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end20
  %idx.06.i = phi i32 [ 0, %if.end20 ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [38 x %struct.snd_mixer_oss_assign_table], ptr @snd_mixer_oss_build.table, i32 0, i32 %idx.06.i
  %call.i = tail call fastcc i32 @snd_mixer_oss_build_input(ptr noundef nonnull %call7.i.i.i, ptr noundef %arrayidx.i, i32 noundef 0, i32 noundef 0) #13
  %inc.i = add nuw nsw i32 %idx.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 38
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  %mask_recsrc.i = getelementptr inbounds %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 4
  %46 = ptrtoint ptr %mask_recsrc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mask_recsrc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i, label %for.end.i.snd_mixer_oss_build.exit_crit_edge, label %if.then.i

for.end.i.snd_mixer_oss_build.exit_crit_edge:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_build.exit

if.then.i:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %get_recsrc.i = getelementptr inbounds %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %get_recsrc.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @snd_mixer_oss_get_recsrc2, ptr %get_recsrc.i, align 8
  %put_recsrc.i = getelementptr inbounds %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %put_recsrc.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @snd_mixer_oss_put_recsrc2, ptr %put_recsrc.i, align 4
  br label %snd_mixer_oss_build.exit

snd_mixer_oss_build.exit:                         ; preds = %if.then.i, %for.end.i.snd_mixer_oss_build.exit_crit_edge
  %50 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call7.i.i.i, align 8
  %proc_root.i = getelementptr inbounds %struct.snd_card, ptr %51, i32 0, i32 20
  %52 = ptrtoint ptr %proc_root.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %proc_root.i, align 8
  %call.i82 = tail call ptr @snd_info_create_card_entry(ptr noundef %51, ptr noundef nonnull @.str.53, ptr noundef %53) #13
  %tobool.not.i83 = icmp eq ptr %call.i82, null
  br i1 %tobool.not.i83, label %snd_mixer_oss_build.exit.cleanup48_crit_edge, label %if.end.i

snd_mixer_oss_build.exit.cleanup48_crit_edge:     ; preds = %snd_mixer_oss_build.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup48

if.end.i:                                         ; preds = %snd_mixer_oss_build.exit
  %content.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i82, i32 0, i32 3
  %54 = ptrtoint ptr %content.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 0, ptr %content.i, align 4
  %mode.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i82, i32 0, i32 1
  %55 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 -32348, ptr %mode.i, align 4
  %c.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i82, i32 0, i32 4
  %56 = ptrtoint ptr %c.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @snd_mixer_oss_proc_read, ptr %c.i, align 4
  %write.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i82, i32 0, i32 4, i32 0, i32 1
  %57 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @snd_mixer_oss_proc_write, ptr %write.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_info_entry, ptr %call.i82, i32 0, i32 7
  %58 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call7.i.i.i, ptr %private_data.i, align 4
  %call4.i = tail call i32 @snd_info_register(ptr noundef nonnull %call.i82) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %if.then5.i, label %if.end.i.if.end6.i_crit_edge

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @snd_info_free_entry(ptr noundef nonnull %call.i82) #13
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then5.i, %if.end.i.if.end6.i_crit_edge
  %entry1.0.i = phi ptr [ null, %if.then5.i ], [ %call.i82, %if.end.i.if.end6.i_crit_edge ]
  %proc_entry.i = getelementptr inbounds %struct.snd_mixer_oss, ptr %call7.i.i.i, i32 0, i32 10
  %59 = ptrtoint ptr %proc_entry.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry1.0.i, ptr %proc_entry.i, align 4
  br label %cleanup48

if.else28:                                        ; preds = %entry
  %mixer_oss29 = getelementptr inbounds %struct.snd_card, ptr %card, i32 0, i32 42
  %60 = ptrtoint ptr %mixer_oss29 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mixer_oss29, align 8
  %cmp30 = icmp eq ptr %61, null
  br i1 %cmp30, label %if.else28.cleanup48_crit_edge, label %if.end32

if.else28.cleanup48_crit_edge:                    ; preds = %if.else28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup48

if.end32:                                         ; preds = %if.else28
  %oss_dev_alloc33 = getelementptr inbounds %struct.snd_mixer_oss, ptr %61, i32 0, i32 11
  %62 = ptrtoint ptr %oss_dev_alloc33 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %oss_dev_alloc33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool34.not = icmp eq i32 %63, 0
  br i1 %tobool34.not, label %if.end32.if.end42_crit_edge, label %if.then35

if.end32.if.end42_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %61, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 8
  %call38 = tail call i32 @snd_oss_info_register(i32 noundef 5, i32 noundef %67, ptr noundef null) #13
  %68 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %61, align 4
  %call40 = tail call i32 @snd_unregister_oss_device(i32 noundef 0, ptr noundef %69, i32 noundef 0) #13
  %70 = ptrtoint ptr %oss_dev_alloc33 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %oss_dev_alloc33, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then35, %if.end32.if.end42_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %cmd)
  %cmp43 = icmp eq i32 %cmd, 1
  br i1 %cmp43, label %if.end42.cleanup48_crit_edge, label %if.end.i86

if.end42.cleanup48_crit_edge:                     ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup48

if.end.i86:                                       ; preds = %if.end42
  %proc_entry.i84 = getelementptr inbounds %struct.snd_mixer_oss, ptr %61, i32 0, i32 10
  %71 = ptrtoint ptr %proc_entry.i84 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %proc_entry.i84, align 4
  tail call void @snd_info_free_entry(ptr noundef %72) #13
  %73 = ptrtoint ptr %proc_entry.i84 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr null, ptr %proc_entry.i84, align 4
  %74 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %61, align 4
  %mixer_oss.i = getelementptr inbounds %struct.snd_card, ptr %75, i32 0, i32 42
  %76 = ptrtoint ptr %mixer_oss.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %mixer_oss.i, align 8
  %cmp.not.i = icmp eq ptr %77, %61
  br i1 %cmp.not.i, label %if.end25.i, label %do.end.i, !prof !219

do.end.i:                                         ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1359, i32 noundef 9, ptr noundef null) #13
  br label %cleanup48

if.end25.i:                                       ; preds = %if.end.i86
  %78 = ptrtoint ptr %mixer_oss.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %mixer_oss.i, align 8
  br label %for.body.i87

for.body.i87:                                     ; preds = %if.end31.i.for.body.i87_crit_edge, %if.end25.i
  %idx.044.i = phi i32 [ 0, %if.end25.i ], [ %inc.i89, %if.end31.i.for.body.i87_crit_edge ]
  %private_free.i = getelementptr %struct.snd_mixer_oss, ptr %61, i32 0, i32 3, i32 %idx.044.i, i32 8
  %79 = ptrtoint ptr %private_free.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %private_free.i, align 4
  %tobool28.not.i = icmp eq ptr %80, null
  br i1 %tobool28.not.i, label %for.body.i87.if.end31.i_crit_edge, label %if.then29.i

for.body.i87.if.end31.i_crit_edge:                ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31.i

if.then29.i:                                      ; preds = %for.body.i87
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx.i88 = getelementptr %struct.snd_mixer_oss, ptr %61, i32 0, i32 3, i32 %idx.044.i
  tail call void %80(ptr noundef %arrayidx.i88) #13
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then29.i, %for.body.i87.if.end31.i_crit_edge
  %inc.i89 = add nuw nsw i32 %idx.044.i, 1
  %exitcond.not.i90 = icmp eq i32 %inc.i89, 32
  br i1 %exitcond.not.i90, label %for.end.i91, label %if.end31.i.for.body.i87_crit_edge

if.end31.i.for.body.i87_crit_edge:                ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i87

for.end.i91:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %61) #13
  br label %cleanup48

cleanup48:                                        ; preds = %for.end.i91, %do.end.i, %if.end42.cleanup48_crit_edge, %if.else28.cleanup48_crit_edge, %if.end6.i, %snd_mixer_oss_build.exit.cleanup48_crit_edge, %do.end8, %if.then.cleanup48_crit_edge
  %retval.1 = phi i32 [ 0, %if.else28.cleanup48_crit_edge ], [ 0, %if.end42.cleanup48_crit_edge ], [ %call3, %do.end8 ], [ -12, %if.then.cleanup48_crit_edge ], [ 0, %snd_mixer_oss_build.exit.cleanup48_crit_edge ], [ 0, %if.end6.i ], [ -6, %do.end.i ], [ 0, %for.end.i91 ]
  ret i32 %retval.1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @alsa_mixer_oss_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @snd_mixer_oss_notify_callback to i32))
  store ptr @snd_mixer_oss_notify_handler, ptr @snd_mixer_oss_notify_callback, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %idx.06 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = tail call ptr @snd_card_ref(i32 noundef %idx.06) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %call1 = tail call i32 @snd_mixer_oss_notify_handler(ptr noundef nonnull %call, i32 noundef 0)
  %card_dev.i = getelementptr inbounds %struct.snd_card, ptr %call, i32 0, i32 28
  tail call void @put_device(ptr noundef %card_dev.i) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.06, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_mixer_oss_set_recsrc(ptr noundef %fmixer, i32 noundef %recsrc) unnamed_addr #0 align 64 {
entry:
  %active = alloca i32, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %mixer1 = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %fmixer, i32 0, i32 1
  %0 = ptrtoint ptr %mixer1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %active) #13
  %2 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %active, align 4, !annotation !214
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #13
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %index, align 4, !annotation !214
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_mutex = getelementptr inbounds %struct.snd_mixer_oss, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  %get_recsrc = getelementptr inbounds %struct.snd_mixer_oss, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %get_recsrc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %get_recsrc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %land.lhs.true

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end
  %put_recsrc = getelementptr inbounds %struct.snd_mixer_oss, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %put_recsrc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %put_recsrc, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %land.lhs.true.if.end16_crit_edge, label %if.then3

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %oss_recsrc = getelementptr inbounds %struct.snd_mixer_oss, ptr %1, i32 0, i32 12
  %8 = ptrtoint ptr %oss_recsrc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %oss_recsrc, align 4
  %neg = xor i32 %9, -1
  %and = and i32 %neg, %recsrc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool4.not, i32 %recsrc, i32 %and
  %10 = tail call i32 @llvm.cttz.i32(i32 %spec.select, i1 false) #13, !range !220
  %call13 = tail call i32 %7(ptr noundef %fmixer, i32 noundef %10) #13
  %11 = ptrtoint ptr %get_recsrc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %get_recsrc, align 4
  %call15 = call i32 %12(ptr noundef %fmixer, ptr noundef nonnull %index) #13
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %shl = shl nuw i32 1, %14
  br label %if.end16

if.end16:                                         ; preds = %if.then3, %land.lhs.true.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %recsrc.addr.1 = phi i32 [ %spec.select, %if.then3 ], [ %recsrc, %land.lhs.true.if.end16_crit_edge ], [ %recsrc, %if.end.if.end16_crit_edge ]
  %result.0 = phi i32 [ %shl, %if.then3 ], [ 0, %land.lhs.true.if.end16_crit_edge ], [ 0, %if.end.if.end16_crit_edge ]
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16
  %chn.085 = phi i32 [ 0, %if.end16 ], [ %inc, %for.inc.for.body_crit_edge ]
  %put_recsrc18 = getelementptr %struct.snd_mixer_oss, ptr %1, i32 0, i32 3, i32 %chn.085, i32 5
  %15 = ptrtoint ptr %put_recsrc18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %put_recsrc18, align 4
  %tobool19.not = icmp eq ptr %16, null
  br i1 %tobool19.not, label %for.body.for.inc_crit_edge, label %if.then20

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.snd_mixer_oss, ptr %1, i32 0, i32 3, i32 %chn.085
  %17 = lshr i32 %recsrc.addr.1, %chn.085
  %18 = and i32 %17, 1
  %19 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %active, align 4
  %20 = ptrtoint ptr %put_recsrc18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %put_recsrc18, align 4
  %call25 = call i32 %21(ptr noundef %fmixer, ptr noundef %arrayidx, i32 noundef %18) #13
  br label %for.inc

for.inc:                                          ; preds = %if.then20, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %chn.085, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %result.0)
  %tobool27.not = icmp eq i32 %result.0, 0
  br i1 %tobool27.not, label %for.end.for.body31_crit_edge, label %for.end.if.end47_crit_edge

for.end.if.end47_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

for.end.for.body31_crit_edge:                     ; preds = %for.end
  br label %for.body31

for.body31:                                       ; preds = %for.inc44.for.body31_crit_edge, %for.end.for.body31_crit_edge
  %result.189 = phi i32 [ %result.2, %for.inc44.for.body31_crit_edge ], [ 0, %for.end.for.body31_crit_edge ]
  %chn.187 = phi i32 [ %inc45, %for.inc44.for.body31_crit_edge ], [ 0, %for.end.for.body31_crit_edge ]
  %get_recsrc34 = getelementptr %struct.snd_mixer_oss, ptr %1, i32 0, i32 3, i32 %chn.187, i32 4
  %22 = ptrtoint ptr %get_recsrc34 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %get_recsrc34, align 4
  %tobool35.not = icmp eq ptr %23, null
  br i1 %tobool35.not, label %for.body31.for.inc44_crit_edge, label %if.then36

for.body31.for.inc44_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc44

if.then36:                                        ; preds = %for.body31
  %arrayidx33 = getelementptr %struct.snd_mixer_oss, ptr %1, i32 0, i32 3, i32 %chn.187
  %24 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %active, align 4
  %25 = ptrtoint ptr %get_recsrc34 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %get_recsrc34, align 4
  %call38 = call i32 %26(ptr noundef %fmixer, ptr noundef %arrayidx33, ptr noundef nonnull %active) #13
  %27 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %active, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool39.not = icmp eq i32 %28, 0
  br i1 %tobool39.not, label %if.then36.for.inc44_crit_edge, label %if.then40

if.then36.for.inc44_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc44

if.then40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  %shl41 = shl nuw nsw i32 1, %chn.187
  %or = or i32 %result.189, %shl41
  br label %for.inc44

for.inc44:                                        ; preds = %if.then40, %if.then36.for.inc44_crit_edge, %for.body31.for.inc44_crit_edge
  %result.2 = phi i32 [ %or, %if.then40 ], [ %result.189, %if.then36.for.inc44_crit_edge ], [ %result.189, %for.body31.for.inc44_crit_edge ]
  %inc45 = add nuw nsw i32 %chn.187, 1
  %exitcond90.not = icmp eq i32 %inc45, 31
  br i1 %exitcond90.not, label %for.inc44.if.end47_crit_edge, label %for.inc44.for.body31_crit_edge

for.inc44.for.body31_crit_edge:                   ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body31

for.inc44.if.end47_crit_edge:                     ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.end47:                                         ; preds = %for.inc44.if.end47_crit_edge, %for.end.if.end47_crit_edge
  %result.3 = phi i32 [ %result.0, %for.end.if.end47_crit_edge ], [ %result.2, %for.inc44.if.end47_crit_edge ]
  call void @mutex_unlock(ptr noundef %reg_mutex) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %result.3, %if.end47 ], [ -5, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %active) #13
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_register_oss_device(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_oss_info_register(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_unregister_oss_device(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixer_oss_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call fastcc i32 @snd_mixer_oss_ioctl1(ptr noundef %1, i32 noundef %cmd, i32 noundef %arg)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixer_oss_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call2 = tail call ptr @snd_lookup_oss_minor_data(i32 noundef %and.i, i32 noundef 0) #13
  %cmp3 = icmp eq ptr %call2, null
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %mixer_oss = getelementptr inbounds %struct.snd_card, ptr %call2, i32 0, i32 42
  %2 = ptrtoint ptr %mixer_oss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer_oss, align 8
  %cmp6 = icmp eq ptr %3, null
  br i1 %cmp6, label %if.end5.cleanup.sink.split_crit_edge, label %if.end8

if.end5.cleanup.sink.split_crit_edge:             ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end8:                                          ; preds = %if.end5
  %call9 = tail call i32 @snd_card_file_add(ptr noundef nonnull %call2, ptr noundef %file) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup.sink.split_crit_edge, label %if.end12

if.end8.cleanup.sink.split_crit_edge:             ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end12:                                         ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 8) #17
  %cmp14 = icmp eq ptr %call7.i.i, null
  br i1 %cmp14, label %if.end12.cleanup.sink.split.sink.split_crit_edge, label %if.end17

if.end12.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split.sink.split

if.end17:                                         ; preds = %if.end12
  %5 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %call7.i.i, align 8
  %6 = ptrtoint ptr %mixer_oss to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mixer_oss, align 8
  %mixer = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %mixer to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %mixer, align 4
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %9 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call7.i.i, ptr %private_data, align 4
  %module = getelementptr inbounds %struct.snd_card, ptr %call2, i32 0, i32 8
  %10 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %module, align 4
  %call20 = tail call zeroext i1 @try_module_get(ptr noundef %11) #13
  br i1 %call20, label %if.end17.cleanup.sink.split_crit_edge, label %if.then21

if.end17.cleanup.sink.split_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then21, %if.end12.cleanup.sink.split.sink.split_crit_edge
  %retval.0.ph.ph = phi i32 [ -14, %if.then21 ], [ -12, %if.end12.cleanup.sink.split.sink.split_crit_edge ]
  %call16 = tail call i32 @snd_card_file_remove(ptr noundef nonnull %call2, ptr noundef %file) #13
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end17.cleanup.sink.split_crit_edge, %if.end8.cleanup.sink.split_crit_edge, %if.end5.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -19, %if.end5.cleanup.sink.split_crit_edge ], [ %call9, %if.end8.cleanup.sink.split_crit_edge ], [ 0, %if.end17.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %card_dev.i53 = getelementptr inbounds %struct.snd_card, ptr %call2, i32 0, i32 28
  tail call void @put_device(ptr noundef %card_dev.i53) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixer_oss_release(ptr nocapture noundef readnone %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %module = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %5) #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call = tail call i32 @snd_card_file_remove(ptr noundef %7, ptr noundef %file) #13
  tail call void @kfree(ptr noundef nonnull %1) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_lookup_oss_minor_data(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_card_file_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_mixer_oss_build_input(ptr noundef %mixer, ptr noundef %ptr, i32 noundef %ptr_allocated, i32 noundef %replace_old) unnamed_addr #0 align 64 {
entry:
  %id.i = alloca %struct.snd_ctl_elem_id, align 4
  %str.i = alloca [64 x i8], align 1
  %slot = alloca %struct.slot, align 4
  %str = alloca [64 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %slot) #13
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %str) #13
  %0 = call ptr @memset(ptr %str, i32 255, i32 64)
  %1 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %ptr, align 4
  %get_volume = getelementptr %struct.snd_mixer_oss, ptr %mixer, i32 0, i32 3, i32 %2, i32 2
  %3 = ptrtoint ptr %get_volume to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %get_volume, align 4
  %tobool.not = icmp ne ptr %4, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %replace_old)
  %tobool1.not = icmp eq i32 %replace_old, 0
  %or.cond = and i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup111_crit_edge, label %if.end

entry.cleanup111_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup111

if.end:                                           ; preds = %entry
  %5 = call ptr @memset(ptr %slot, i32 0, i32 68)
  %numid = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 3
  %6 = call ptr @memset(ptr %numid, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %str.i) #13
  %7 = call ptr @memset(ptr %str.i, i32 255, i32 64)
  %name.i = getelementptr inbounds %struct.snd_mixer_oss_assign_table, ptr %ptr, i32 0, i32 1
  %8 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name.i, align 4
  %index.i = getelementptr inbounds %struct.snd_mixer_oss_assign_table, ptr %ptr, i32 0, i32 2
  %10 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i, align 4
  %call.i = call fastcc i32 @snd_mixer_oss_build_test(ptr noundef %mixer, ptr noundef nonnull %slot, ptr noundef %9, i32 noundef %11, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.snd_mixer_oss_build_test_all.exit.thread_crit_edge

if.end.snd_mixer_oss_build_test_all.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_build_test_all.exit.thread

if.end.i:                                         ; preds = %if.end
  %12 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name.i, align 4
  %call2.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.44, ptr noundef %13) #13
  %14 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %index.i, align 4
  %call5.i = call fastcc i32 @snd_mixer_oss_build_test(ptr noundef %mixer, ptr noundef nonnull %slot, ptr noundef nonnull %str.i, i32 noundef %15, i32 noundef 1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge

if.end.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_build_test_all.exit.thread

if.end8.i:                                        ; preds = %if.end.i
  %16 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name.i, align 4
  %call11.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.45, ptr noundef %17) #13
  %18 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i, align 4
  %call14.i = call fastcc i32 @snd_mixer_oss_build_test(ptr noundef %mixer, ptr noundef nonnull %slot, ptr noundef nonnull %str.i, i32 noundef %19, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %if.end17.i, label %if.end8.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge

if.end8.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_build_test_all.exit.thread

if.end17.i:                                       ; preds = %if.end8.i
  %20 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name.i, align 4
  %call20.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.46, ptr noundef %21) #13
  %22 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %index.i, align 4
  %call23.i = call fastcc i32 @snd_mixer_oss_build_test(ptr noundef %mixer, ptr noundef nonnull %slot, ptr noundef nonnull %str.i, i32 noundef %23, i32 noundef 3) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool24.not.i = icmp eq i32 %call23.i, 0
  br i1 %tobool24.not.i, label %if.end26.i, label %if.end17.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge

if.end17.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_build_test_all.exit.thread

if.end26.i:                                       ; preds = %if.end17.i
  %24 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %name.i, align 4
  %call29.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.47, ptr noundef %25) #13
  %26 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index.i, align 4
  %call32.i = call fastcc i32 @snd_mixer_oss_build_test(ptr noundef %mixer, ptr noundef nonnull %slot, ptr noundef nonnull %str.i, i32 noundef %27, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %tobool33.not.i = icmp eq i32 %call32.i, 0
  br i1 %tobool33.not.i, label %if.end35.i, label %if.end26.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge

if.end26.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_build_test_all.exit.thread

if.end35.i:                                       ; preds = %if.end26.i
  %28 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %name.i, align 4
  %call38.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.48, ptr noundef %29) #13
  %30 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i, align 4
  %call41.i = call fastcc i32 @snd_mixer_oss_build_test(ptr noundef %mixer, ptr noundef nonnull %slot, ptr noundef nonnull %str.i, i32 noundef %31, i32 noundef 5) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i)
  %tobool42.not.i = icmp eq i32 %call41.i, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %if.end35.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge

if.end35.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge: ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_build_test_all.exit.thread

if.end44.i:                                       ; preds = %if.end35.i
  %32 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %name.i, align 4
  %call47.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.49, ptr noundef %33) #13
  %34 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index.i, align 4
  %call50.i = call fastcc i32 @snd_mixer_oss_build_test(ptr noundef %mixer, ptr noundef nonnull %slot, ptr noundef nonnull %str.i, i32 noundef %35, i32 noundef 6) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i)
  %tobool51.not.i = icmp eq i32 %call50.i, 0
  br i1 %tobool51.not.i, label %if.end53.i, label %if.end44.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge

if.end44.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge: ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_build_test_all.exit.thread

if.end53.i:                                       ; preds = %if.end44.i
  %36 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name.i, align 4
  %call56.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.50, ptr noundef %37) #13
  %38 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %index.i, align 4
  %call59.i = call fastcc i32 @snd_mixer_oss_build_test(ptr noundef %mixer, ptr noundef nonnull %slot, ptr noundef nonnull %str.i, i32 noundef %39, i32 noundef 7) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59.i)
  %tobool60.not.i = icmp eq i32 %call59.i, 0
  br i1 %tobool60.not.i, label %if.end62.i, label %if.end53.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge

if.end53.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_build_test_all.exit.thread

if.end62.i:                                       ; preds = %if.end53.i
  %40 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name.i, align 4
  %call65.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.51, ptr noundef %41) #13
  %42 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %index.i, align 4
  %call68.i = call fastcc i32 @snd_mixer_oss_build_test(ptr noundef %mixer, ptr noundef nonnull %slot, ptr noundef nonnull %str.i, i32 noundef %43, i32 noundef 8) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %tobool69.not.i = icmp eq i32 %call68.i, 0
  br i1 %tobool69.not.i, label %snd_mixer_oss_build_test_all.exit, label %if.end62.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge

if.end62.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge: ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_build_test_all.exit.thread

snd_mixer_oss_build_test_all.exit.thread:         ; preds = %if.end62.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge, %if.end53.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge, %if.end44.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge, %if.end35.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge, %if.end26.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge, %if.end17.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge, %if.end8.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge, %if.end.i.snd_mixer_oss_build_test_all.exit.thread_crit_edge, %if.end.snd_mixer_oss_build_test_all.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str.i) #13
  br label %cleanup111

snd_mixer_oss_build_test_all.exit:                ; preds = %if.end62.i
  %44 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %name.i, align 4
  %call74.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.52, ptr noundef %45) #13
  %46 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i, align 4
  %call77.i = call fastcc i32 @snd_mixer_oss_build_test(ptr noundef %mixer, ptr noundef nonnull %slot, ptr noundef nonnull %str.i, i32 noundef %47, i32 noundef 9) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool2.not = icmp eq i32 %call77.i, 0
  br i1 %tobool2.not, label %if.end4, label %snd_mixer_oss_build_test_all.exit.cleanup111_crit_edge

snd_mixer_oss_build_test_all.exit.cleanup111_crit_edge: ; preds = %snd_mixer_oss_build_test_all.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup111

if.end4:                                          ; preds = %snd_mixer_oss_build_test_all.exit
  %48 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mixer, align 4
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %49, i32 0, i32 14
  call void @down_read(ptr noundef %controls_rwsem) #13
  %50 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %index.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool5.not = icmp eq i32 %51, 0
  br i1 %tobool5.not, label %if.end8, label %if.end4.if.end69_crit_edge

if.end4.if.end69_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.end8:                                          ; preds = %if.end4
  %52 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mixer, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i) #13
  %54 = call ptr @memset(ptr %id.i, i32 0, i32 64)
  %iface.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 1
  %55 = ptrtoint ptr %iface.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %iface.i, align 4
  %name2.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 4
  %call.i160 = call i32 @strscpy(ptr noundef %name2.i, ptr noundef nonnull @.str.41, i32 noundef 44) #13
  %index3.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 5
  %56 = ptrtoint ptr %index3.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %index3.i, align 4
  %call4.i = call ptr @snd_ctl_find_id(ptr noundef %53, ptr noundef nonnull %id.i) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i) #13
  %tobool9.not = icmp eq ptr %call4.i, null
  br i1 %tobool9.not, label %if.end8.if.end69_crit_edge, label %if.then10

if.end8.if.end69_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end69

if.then10:                                        ; preds = %if.end8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %57 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %57, i32 noundef 3520, i32 noundef 272) #17
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %mixer, align 4
  %controls_rwsem15 = getelementptr inbounds %struct.snd_card, ptr %59, i32 0, i32 14
  call void @up_read(ptr noundef %controls_rwsem15) #13
  br label %cleanup111

if.end16:                                         ; preds = %if.then10
  %info = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 3
  %60 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %info, align 4
  %call17 = call i32 %61(ptr noundef nonnull %call4.i, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end22, label %if.then19

if.then19:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #15
  %62 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %mixer, align 4
  %controls_rwsem21 = getelementptr inbounds %struct.snd_card, ptr %63, i32 0, i32 14
  call void @up_read(ptr noundef %controls_rwsem21) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup111

if.end22:                                         ; preds = %if.end16
  %64 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name.i, align 4
  %call24 = call ptr @strcpy(ptr noundef nonnull %str, ptr noundef %65) #19
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %str, ptr noundef nonnull dereferenceable(7) @.str.10, i32 7) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool27.not = icmp eq i32 %bcmp, 0
  br i1 %tobool27.not, label %if.then28, label %if.end22.if.end31_crit_edge

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %66 = ptrtoint ptr %str to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 1298757632, ptr %str, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then28, %if.end22.if.end31_crit_edge
  %bcmp159 = call i32 @bcmp(ptr noundef nonnull dereferenceable(12) %str, ptr noundef nonnull dereferenceable(12) @.str.36, i32 12) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp159)
  %tobool34.not = icmp eq i32 %bcmp159, 0
  br i1 %tobool34.not, label %if.then35, label %if.end31.if.end38_crit_edge

if.end31.if.end38_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  %67 = call ptr @memcpy(ptr %str, ptr @.str.43, i32 9)
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end31.if.end38_crit_edge
  %capture_item = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 4
  %68 = ptrtoint ptr %capture_item to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %capture_item, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 5
  %name39 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %call42 = call i32 @strcmp(ptr noundef %name39, ptr noundef nonnull %str) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %if.then44, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end38
  %69 = ptrtoint ptr %capture_item to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 1, ptr %capture_item, align 4
  %70 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %71)
  %cmp169 = icmp ugt i32 %71, 1
  br i1 %cmp169, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %item = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %72 = ptrtoint ptr %capture_item to i32
  call void @__asan_load4_noabort(i32 %72)
  %capture_item.promoted = load i32, ptr %capture_item, align 4
  br label %for.body

if.then44:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #15
  %present = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %73 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %present, align 4
  %or = or i32 %74, 1024
  store i32 %or, ptr %present, align 4
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %inc171 = phi i32 [ %capture_item.promoted, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %storemerge170 = phi i32 [ 1, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %75 = ptrtoint ptr %item to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %storemerge170, ptr %item, align 4
  %76 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %info, align 4
  %call51 = call i32 %77(ptr noundef nonnull %call4.i, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end56, label %if.then53

if.then53:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %78 = ptrtoint ptr %capture_item to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %inc171, ptr %capture_item, align 4
  %79 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mixer, align 4
  %controls_rwsem55 = getelementptr inbounds %struct.snd_card, ptr %80, i32 0, i32 14
  call void @up_read(ptr noundef %controls_rwsem55) #13
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup111

if.end56:                                         ; preds = %for.body
  %call61 = call i32 @strcmp(ptr noundef %name39, ptr noundef nonnull %str) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %if.then63, label %for.inc

if.then63:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #15
  %81 = ptrtoint ptr %capture_item to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %inc171, ptr %capture_item, align 4
  %present64 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %82 = ptrtoint ptr %present64 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %present64, align 4
  %or65 = or i32 %83, 1024
  store i32 %or65, ptr %present64, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end56
  %inc = add i32 %inc171, 1
  %84 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %value, align 8
  %cmp = icmp ult i32 %inc, %85
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %cleanup.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %86 = ptrtoint ptr %capture_item to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %inc, ptr %capture_item, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.then63, %if.then44, %for.cond.preheader.cleanup_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %if.end69

if.end69:                                         ; preds = %cleanup, %if.end8.if.end69_crit_edge, %if.end4.if.end69_crit_edge
  %87 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %mixer, align 4
  %controls_rwsem71 = getelementptr inbounds %struct.snd_card, ptr %88, i32 0, i32 14
  call void @up_read(ptr noundef %controls_rwsem71) #13
  %present72 = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %89 = ptrtoint ptr %present72 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %present72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp73.not = icmp eq i32 %90, 0
  br i1 %cmp73.not, label %if.end69.cleanup111_crit_edge, label %if.then74

if.end69.cleanup111_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup111

if.then74:                                        ; preds = %if.end69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %91 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %91, i32 noundef 3264, i32 noundef 68) #17
  %tobool76.not = icmp eq ptr %call7.i, null
  br i1 %tobool76.not, label %if.then74.cleanup111_crit_edge, label %if.end78

if.then74.cleanup111_crit_edge:                   ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup111

if.end78:                                         ; preds = %if.then74
  %92 = call ptr @memcpy(ptr %call7.i, ptr %slot, i32 68)
  %93 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 1704563280, ptr %call7.i, align 8
  %assigned = getelementptr inbounds %struct.slot, ptr %call7.i, i32 0, i32 5
  %94 = ptrtoint ptr %assigned to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %ptr, ptr %assigned, align 4
  %allocated = getelementptr inbounds %struct.slot, ptr %call7.i, i32 0, i32 6
  %95 = trunc i32 %ptr_allocated to i8
  %96 = ptrtoint ptr %allocated to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load = load i8, ptr %allocated, align 8
  %bf.shl = shl i8 %95, 7
  %bf.clear = and i8 %bf.load, 127
  %bf.set = or i8 %bf.clear, %bf.shl
  store i8 %bf.set, ptr %allocated, align 8
  %97 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %ptr, align 4
  %arrayidx81 = getelementptr %struct.snd_mixer_oss, ptr %mixer, i32 0, i32 3, i32 %98
  %99 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %arrayidx81, align 4
  %private_free.i = getelementptr %struct.snd_mixer_oss, ptr %mixer, i32 0, i32 3, i32 %98, i32 8
  %101 = ptrtoint ptr %private_free.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %private_free.i, align 4
  %tobool.not.i161 = icmp eq ptr %102, null
  br i1 %tobool.not.i161, label %if.end78.mixer_slot_clear.exit_crit_edge, label %if.then.i

if.end78.mixer_slot_clear.exit_crit_edge:         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  br label %mixer_slot_clear.exit

if.then.i:                                        ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #15
  call void %102(ptr noundef %arrayidx81) #13
  br label %mixer_slot_clear.exit

mixer_slot_clear.exit:                            ; preds = %if.then.i, %if.end78.mixer_slot_clear.exit_crit_edge
  %103 = getelementptr inbounds i8, ptr %arrayidx81, i32 4
  %104 = call ptr @memset(ptr %103, i32 0, i32 40)
  %105 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %100, ptr %arrayidx81, align 4
  %channels = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 2
  %106 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp82 = icmp ugt i32 %107, 1
  %stereo = getelementptr %struct.snd_mixer_oss, ptr %mixer, i32 0, i32 3, i32 %98, i32 1
  %108 = ptrtoint ptr %stereo to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load83 = load i8, ptr %stereo, align 4
  %bf.shl85 = select i1 %cmp82, i8 -128, i8 0
  %bf.clear86 = and i8 %bf.load83, 127
  %bf.set87 = or i8 %bf.clear86, %bf.shl85
  store i8 %bf.set87, ptr %stereo, align 4
  %get_volume89 = getelementptr %struct.snd_mixer_oss, ptr %mixer, i32 0, i32 3, i32 %98, i32 2
  %109 = ptrtoint ptr %get_volume89 to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr @snd_mixer_oss_get_volume1, ptr %get_volume89, align 4
  %put_volume = getelementptr %struct.snd_mixer_oss, ptr %mixer, i32 0, i32 3, i32 %98, i32 3
  %110 = ptrtoint ptr %put_volume to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr @snd_mixer_oss_put_volume1, ptr %put_volume, align 4
  %111 = ptrtoint ptr %present72 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %present72, align 4
  %and = and i32 %112, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool91.not = icmp eq i32 %and, 0
  br i1 %tobool91.not, label %if.else93, label %if.then92

if.then92:                                        ; preds = %mixer_slot_clear.exit
  call void @__sanitizer_cov_trace_pc() #15
  %get_recsrc = getelementptr %struct.snd_mixer_oss, ptr %mixer, i32 0, i32 3, i32 %98, i32 4
  %113 = ptrtoint ptr %get_recsrc to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @snd_mixer_oss_get_recsrc1_sw, ptr %get_recsrc, align 4
  %put_recsrc = getelementptr %struct.snd_mixer_oss, ptr %mixer, i32 0, i32 3, i32 %98, i32 5
  %114 = ptrtoint ptr %put_recsrc to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr @snd_mixer_oss_put_recsrc1_sw, ptr %put_recsrc, align 4
  br label %if.end109

if.else93:                                        ; preds = %mixer_slot_clear.exit
  %and95 = and i32 %112, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95)
  %tobool96.not = icmp eq i32 %and95, 0
  br i1 %tobool96.not, label %if.else100, label %if.then97

if.then97:                                        ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #15
  %get_recsrc98 = getelementptr %struct.snd_mixer_oss, ptr %mixer, i32 0, i32 3, i32 %98, i32 4
  %115 = ptrtoint ptr %get_recsrc98 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr @snd_mixer_oss_get_recsrc1_route, ptr %get_recsrc98, align 4
  %put_recsrc99 = getelementptr %struct.snd_mixer_oss, ptr %mixer, i32 0, i32 3, i32 %98, i32 5
  %116 = ptrtoint ptr %put_recsrc99 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr @snd_mixer_oss_put_recsrc1_route, ptr %put_recsrc99, align 4
  br label %if.end109

if.else100:                                       ; preds = %if.else93
  %and102 = and i32 %112, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.else100.if.end109_crit_edge, label %if.then104

if.else100.if.end109_crit_edge:                   ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end109

if.then104:                                       ; preds = %if.else100
  call void @__sanitizer_cov_trace_pc() #15
  %117 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %ptr, align 4
  %shl = shl nuw i32 1, %118
  %mask_recsrc = getelementptr inbounds %struct.snd_mixer_oss, ptr %mixer, i32 0, i32 4
  %119 = ptrtoint ptr %mask_recsrc to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %mask_recsrc, align 4
  %or106 = or i32 %120, %shl
  store i32 %or106, ptr %mask_recsrc, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then104, %if.else100.if.end109_crit_edge, %if.then97, %if.then92
  %private_data = getelementptr %struct.snd_mixer_oss, ptr %mixer, i32 0, i32 3, i32 %98, i32 7
  %121 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call7.i, ptr %private_data, align 4
  %122 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr @snd_mixer_oss_slot_free, ptr %private_free.i, align 4
  br label %cleanup111

cleanup111:                                       ; preds = %if.end109, %if.then74.cleanup111_crit_edge, %if.end69.cleanup111_crit_edge, %if.then53, %if.then19, %if.then13, %snd_mixer_oss_build_test_all.exit.cleanup111_crit_edge, %snd_mixer_oss_build_test_all.exit.thread, %entry.cleanup111_crit_edge
  %retval.1 = phi i32 [ 1, %if.end109 ], [ 0, %entry.cleanup111_crit_edge ], [ 0, %snd_mixer_oss_build_test_all.exit.cleanup111_crit_edge ], [ -12, %if.then74.cleanup111_crit_edge ], [ 0, %if.end69.cleanup111_crit_edge ], [ 0, %snd_mixer_oss_build_test_all.exit.thread ], [ -12, %if.then13 ], [ 0, %if.then53 ], [ 0, %if.then19 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %str) #13
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %slot) #13
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixer_oss_get_recsrc2(ptr nocapture noundef readonly %fmixer, ptr nocapture noundef writeonly %active_index) #0 align 64 {
entry:
  %id.i = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmixer, align 4
  %mixer2 = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %fmixer, i32 0, i32 1
  %2 = ptrtoint ptr %mixer2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 272) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i53 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 712) #17
  %cmp = icmp eq ptr %call7.i.i, null
  %cmp4 = icmp eq ptr %call7.i.i53, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %entry.__free_only_crit_edge, label %if.end

entry.__free_only_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__free_only

if.end:                                           ; preds = %entry
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 14
  tail call void @down_read(ptr noundef %controls_rwsem) #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i) #13
  %8 = call ptr @memset(ptr %id.i, i32 0, i32 64)
  %iface.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 1
  %9 = ptrtoint ptr %iface.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %iface.i, align 4
  %name2.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 4
  %call.i = call i32 @strscpy(ptr noundef %name2.i, ptr noundef nonnull @.str.41, i32 noundef 44) #13
  %index3.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 5
  %10 = ptrtoint ptr %index3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %index3.i, align 4
  %call4.i = call ptr @snd_ctl_find_id(ptr noundef %7, ptr noundef nonnull %id.i) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i) #13
  %tobool.not = icmp eq ptr %call4.i, null
  br i1 %tobool.not, label %if.end.__unlock_crit_edge, label %if.end7

if.end.__unlock_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock

if.end7:                                          ; preds = %if.end
  %info = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 3
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %call8 = call i32 %12(ptr noundef nonnull %call4.i, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.__unlock_crit_edge, label %if.end11

if.end7.__unlock_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock

if.end11:                                         ; preds = %if.end7
  %get = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 4
  %13 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get, align 4
  %call12 = call i32 %14(ptr noundef nonnull %call4.i, ptr noundef nonnull %call7.i.i53) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end11.__unlock_crit_edge, label %for.cond.preheader

if.end11.__unlock_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock

for.cond.preheader:                               ; preds = %if.end11
  %mask_recsrc = getelementptr inbounds %struct.snd_mixer_oss, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %mask_recsrc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mask_recsrc, align 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %call7.i.i53, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %idx.055 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %idx.055
  %and = and i32 %16, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.end19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %private_data = getelementptr %struct.snd_mixer_oss, ptr %3, i32 0, i32 3, i32 %idx.055, i32 7
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1704563280, i32 %20)
  %cmp20.not = icmp eq i32 %20, 1704563280
  br i1 %cmp20.not, label %if.end22, label %if.end19.for.inc_crit_edge

if.end19.for.inc_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end22:                                         ; preds = %if.end19
  %present = getelementptr inbounds %struct.slot, ptr %18, i32 0, i32 1
  %21 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %present, align 4
  %and23 = and i32 %22, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %if.end22.for.inc_crit_edge, label %if.end26

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end26:                                         ; preds = %if.end22
  %capture_item = getelementptr inbounds %struct.slot, ptr %18, i32 0, i32 4
  %23 = ptrtoint ptr %capture_item to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %capture_item, align 4
  %25 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %26)
  %cmp28 = icmp eq i32 %24, %26
  br i1 %cmp28, label %if.then29, label %if.end26.for.inc_crit_edge

if.end26.for.inc_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %active_index to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %idx.055, ptr %active_index, align 4
  br label %__unlock

for.inc:                                          ; preds = %if.end26.for.inc_crit_edge, %if.end22.for.inc_crit_edge, %if.end19.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %idx.055, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.__unlock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.__unlock_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock

__unlock:                                         ; preds = %for.inc.__unlock_crit_edge, %if.then29, %if.end11.__unlock_crit_edge, %if.end7.__unlock_crit_edge, %if.end.__unlock_crit_edge
  %err.0 = phi i32 [ %call8, %if.end7.__unlock_crit_edge ], [ %call12, %if.end11.__unlock_crit_edge ], [ -2, %if.end.__unlock_crit_edge ], [ 0, %if.then29 ], [ 0, %for.inc.__unlock_crit_edge ]
  call void @up_read(ptr noundef %controls_rwsem) #13
  br label %__free_only

__free_only:                                      ; preds = %__unlock, %entry.__free_only_crit_edge
  %err.1 = phi i32 [ %err.0, %__unlock ], [ -12, %entry.__free_only_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i53) #13
  call void @kfree(ptr noundef %call7.i.i) #13
  ret i32 %err.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixer_oss_put_recsrc2(ptr nocapture noundef readonly %fmixer, i32 noundef %active_index) #0 align 64 {
entry:
  %id.i = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmixer, align 4
  %mixer2 = getelementptr inbounds %struct.snd_mixer_oss_file, ptr %fmixer, i32 0, i32 1
  %2 = ptrtoint ptr %mixer2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 272) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i70 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 712) #17
  %cmp = icmp eq ptr %call7.i.i, null
  %cmp4 = icmp eq ptr %call7.i.i70, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp4
  br i1 %or.cond, label %entry.__free_only_crit_edge, label %if.end

entry.__free_only_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %__free_only

if.end:                                           ; preds = %entry
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 14
  tail call void @down_read(ptr noundef %controls_rwsem) #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i) #13
  %8 = call ptr @memset(ptr %id.i, i32 0, i32 64)
  %iface.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 1
  %9 = ptrtoint ptr %iface.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %iface.i, align 4
  %name2.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 4
  %call.i = call i32 @strscpy(ptr noundef %name2.i, ptr noundef nonnull @.str.41, i32 noundef 44) #13
  %index3.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 5
  %10 = ptrtoint ptr %index3.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %index3.i, align 4
  %call4.i = call ptr @snd_ctl_find_id(ptr noundef %7, ptr noundef nonnull %id.i) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i) #13
  %tobool.not = icmp eq ptr %call4.i, null
  br i1 %tobool.not, label %if.end.__unlock_crit_edge, label %if.end7

if.end.__unlock_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock

if.end7:                                          ; preds = %if.end
  %info = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 3
  %11 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %info, align 4
  %call8 = call i32 %12(ptr noundef nonnull %call4.i, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.__unlock_crit_edge, label %for.cond.preheader

if.end7.__unlock_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock

for.cond.preheader:                               ; preds = %if.end7
  %mask_recsrc = getelementptr inbounds %struct.snd_mixer_oss, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %mask_recsrc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask_recsrc, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %idx.072 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %slot.071 = phi ptr [ null, %for.cond.preheader ], [ %slot.1, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %idx.072
  %and = and i32 %14, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %if.end15

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %private_data = getelementptr %struct.snd_mixer_oss, ptr %3, i32 0, i32 3, i32 %idx.072, i32 7
  %15 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %private_data, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1704563280, i32 %18)
  %cmp16.not = icmp eq i32 %18, 1704563280
  br i1 %cmp16.not, label %if.end18, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end18:                                         ; preds = %if.end15
  %present = getelementptr inbounds %struct.slot, ptr %16, i32 0, i32 1
  %19 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %present, align 4
  %and19 = and i32 %20, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end18.for.inc_crit_edge, label %if.end22

if.end18.for.inc_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_cmp4(i32 %idx.072, i32 %active_index)
  %cmp23 = icmp eq i32 %idx.072, %active_index
  br i1 %cmp23, label %if.end22.for.end_crit_edge, label %if.end22.for.inc_crit_edge

if.end22.for.inc_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %if.end22.for.inc_crit_edge, %if.end18.for.inc_crit_edge, %if.end15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %slot.1 = phi ptr [ %16, %if.end15.for.inc_crit_edge ], [ %16, %if.end18.for.inc_crit_edge ], [ %slot.071, %for.body.for.inc_crit_edge ], [ null, %if.end22.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %idx.072, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end22.for.end_crit_edge
  %slot.2 = phi ptr [ %16, %if.end22.for.end_crit_edge ], [ %slot.1, %for.inc.for.end_crit_edge ]
  %tobool26.not = icmp eq ptr %slot.2, null
  br i1 %tobool26.not, label %for.end.__unlock_crit_edge, label %for.cond29.preheader

for.end.__unlock_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock

for.cond29.preheader:                             ; preds = %for.end
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp3074.not = icmp eq i32 %22, 0
  br i1 %cmp3074.not, label %for.cond29.preheader.for.end35_crit_edge, label %for.body31.lr.ph

for.cond29.preheader.for.end35_crit_edge:         ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end35

for.body31.lr.ph:                                 ; preds = %for.cond29.preheader
  %capture_item = getelementptr inbounds %struct.slot, ptr %slot.2, i32 0, i32 4
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %call7.i.i70, i32 0, i32 2
  br label %for.body31

for.body31:                                       ; preds = %for.body31.for.body31_crit_edge, %for.body31.lr.ph
  %idx.175 = phi i32 [ 0, %for.body31.lr.ph ], [ %inc34, %for.body31.for.body31_crit_edge ]
  %23 = ptrtoint ptr %capture_item to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %capture_item, align 4
  %arrayidx32 = getelementptr [128 x i32], ptr %value, i32 0, i32 %idx.175
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx32, align 4
  %inc34 = add nuw i32 %idx.175, 1
  %exitcond76.not = icmp eq i32 %inc34, %22
  br i1 %exitcond76.not, label %for.body31.for.end35_crit_edge, label %for.body31.for.body31_crit_edge

for.body31.for.body31_crit_edge:                  ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body31

for.body31.for.end35_crit_edge:                   ; preds = %for.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end35

for.end35:                                        ; preds = %for.body31.for.end35_crit_edge, %for.cond29.preheader.for.end35_crit_edge
  %put = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 5
  %26 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %put, align 4
  %call36 = call i32 %27(ptr noundef nonnull %call4.i, ptr noundef nonnull %call7.i.i70) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp sgt i32 %call36, 0
  br i1 %cmp37, label %if.then38, label %for.end35.__unlock_crit_edge

for.end35.__unlock_crit_edge:                     ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock

if.then38:                                        ; preds = %for.end35
  call void @__sanitizer_cov_trace_pc() #15
  %28 = ptrtoint ptr %fmixer to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fmixer, align 4
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 1
  call void @snd_ctl_notify(ptr noundef %29, i32 noundef 1, ptr noundef %id) #13
  br label %__unlock

__unlock:                                         ; preds = %if.then38, %for.end35.__unlock_crit_edge, %for.end.__unlock_crit_edge, %if.end7.__unlock_crit_edge, %if.end.__unlock_crit_edge
  %err.0 = phi i32 [ %call8, %if.end7.__unlock_crit_edge ], [ %call8, %for.end.__unlock_crit_edge ], [ -2, %if.end.__unlock_crit_edge ], [ 0, %if.then38 ], [ 0, %for.end35.__unlock_crit_edge ]
  call void @up_read(ptr noundef %controls_rwsem) #13
  br label %__free_only

__free_only:                                      ; preds = %__unlock, %entry.__free_only_crit_edge
  %err.1 = phi i32 [ %err.0, %__unlock ], [ -12, %entry.__free_only_crit_edge ]
  call void @kfree(ptr noundef %call7.i.i70) #13
  call void @kfree(ptr noundef %call7.i.i) #13
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixer_oss_get_volume1(ptr nocapture noundef readonly %fmixer, ptr nocapture noundef readonly %pslot, ptr nocapture noundef writeonly %left, ptr nocapture noundef writeonly %right) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_mixer_oss_slot, ptr %pslot, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 100, ptr %right, align 4
  %3 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 100, ptr %left, align 4
  %present = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %present, align 4
  %and = and i32 %5, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 6
  br label %if.end15.sink.split

if.else:                                          ; preds = %entry
  %and2 = and i32 %5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else7, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx6 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 3
  br label %if.end15.sink.split

if.else7:                                         ; preds = %if.else
  %and9 = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.else7.if.end15_crit_edge, label %if.then11

if.else7.if.end15_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end15

if.then11:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #15
  %numid12 = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 3
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.then11, %if.then4, %if.then
  %arrayidx6.sink = phi ptr [ %arrayidx6, %if.then4 ], [ %numid12, %if.then11 ], [ %arrayidx, %if.then ]
  %6 = ptrtoint ptr %arrayidx6.sink to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx6.sink, align 4
  tail call fastcc void @snd_mixer_oss_get_volume1_vol(ptr noundef %fmixer, ptr noundef %pslot, i32 noundef %7, ptr noundef %left, ptr noundef %right)
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else7.if.end15_crit_edge
  %8 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %present, align 4
  %and17 = and i32 %9, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.else22, label %if.then19

if.then19:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx21 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 4
  br label %if.end46.sink.split

if.else22:                                        ; preds = %if.end15
  %and24 = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else29, label %if.then26

if.then26:                                        ; preds = %if.else22
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx28 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 1
  br label %if.end46.sink.split

if.else29:                                        ; preds = %if.else22
  %and31 = and i32 %9, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and31)
  %tobool32.not = icmp eq i32 %and31, 0
  br i1 %tobool32.not, label %if.else36, label %if.then33

if.then33:                                        ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx35 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 5
  br label %if.end46.sink.split

if.else36:                                        ; preds = %if.else29
  %and38 = and i32 %9, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.else36.if.end46_crit_edge, label %if.then40

if.else36.if.end46_crit_edge:                     ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end46

if.then40:                                        ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx42 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 2
  br label %if.end46.sink.split

if.end46.sink.split:                              ; preds = %if.then40, %if.then33, %if.then26, %if.then19
  %arrayidx28.sink = phi ptr [ %arrayidx28, %if.then26 ], [ %arrayidx42, %if.then40 ], [ %arrayidx35, %if.then33 ], [ %arrayidx21, %if.then19 ]
  %.sink87 = phi i32 [ 0, %if.then26 ], [ 1, %if.then40 ], [ 1, %if.then33 ], [ 0, %if.then19 ]
  %10 = ptrtoint ptr %arrayidx28.sink to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx28.sink, align 4
  tail call fastcc void @snd_mixer_oss_get_volume1_sw(ptr noundef %fmixer, i32 noundef %11, ptr noundef %left, ptr noundef %right, i32 noundef %.sink87)
  br label %if.end46

if.end46:                                         ; preds = %if.end46.sink.split, %if.else36.if.end46_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixer_oss_put_volume1(ptr nocapture noundef readonly %fmixer, ptr nocapture noundef readonly %pslot, i32 noundef %left, i32 noundef %right) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_mixer_oss_slot, ptr %pslot, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %present = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %present, align 4
  %and = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %arrayidx = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 6
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_vol(ptr noundef %fmixer, i32 noundef %5, i32 noundef %left, i32 noundef %right)
  %6 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %present, align 4
  %and2 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.then.if.end30_crit_edge, label %if.then4

if.then.if.end30_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx6 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 9
  br label %if.end30.sink.split

if.else:                                          ; preds = %entry
  %and8 = and i32 %3, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.else13, label %if.then10

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx12 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 9
  br label %if.end30.sink.split

if.else13:                                        ; preds = %if.else
  %and15 = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.else20, label %if.then17

if.then17:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx19 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 3
  br label %if.end30.sink.split

if.else20:                                        ; preds = %if.else13
  %and22 = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.else20.if.end30_crit_edge, label %if.then24

if.else20.if.end30_crit_edge:                     ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30

if.then24:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #15
  %numid25 = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 3
  br label %if.end30.sink.split

if.end30.sink.split:                              ; preds = %if.then24, %if.then17, %if.then10, %if.then4
  %arrayidx12.sink = phi ptr [ %arrayidx12, %if.then10 ], [ %numid25, %if.then24 ], [ %arrayidx19, %if.then17 ], [ %arrayidx6, %if.then4 ]
  %8 = ptrtoint ptr %arrayidx12.sink to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12.sink, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_vol(ptr noundef %fmixer, i32 noundef %9, i32 noundef %left, i32 noundef %right)
  br label %if.end30

if.end30:                                         ; preds = %if.end30.sink.split, %if.else20.if.end30_crit_edge, %if.then.if.end30_crit_edge
  %10 = or i32 %right, %left
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %11 = icmp eq i32 %10, 0
  %12 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %present, align 4
  %and78 = and i32 %13, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and78)
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %11, label %if.else76, label %if.then33

if.then33:                                        ; preds = %if.end30
  br i1 %tobool79.not, label %if.then33.if.end40_crit_edge, label %if.then37

if.then33.if.end40_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end40

if.then37:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx39 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx39, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %15, i32 noundef %left, i32 noundef %right, i32 noundef 0)
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.then33.if.end40_crit_edge
  %16 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %present, align 4
  %and42 = and i32 %17, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.end40.if.end47_crit_edge, label %if.then44

if.end40.if.end47_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end47

if.then44:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx46 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 7
  %18 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx46, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %19, i32 noundef %left, i32 noundef %right, i32 noundef 0)
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end40.if.end47_crit_edge
  %20 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %present, align 4
  %and49 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end47.if.end54_crit_edge, label %if.then51

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then51:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx53 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 1
  %22 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx53, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %23, i32 noundef %left, i32 noundef %right, i32 noundef 0)
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end47.if.end54_crit_edge
  %24 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %present, align 4
  %and56 = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %if.end54.if.end61_crit_edge, label %if.then58

if.end54.if.end61_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end61

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx60 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 5
  %26 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx60, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %27, i32 noundef %left, i32 noundef %right, i32 noundef 1)
  br label %if.end61

if.end61:                                         ; preds = %if.then58, %if.end54.if.end61_crit_edge
  %28 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %present, align 4
  %and63 = and i32 %29, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.end61.if.end68_crit_edge, label %if.then65

if.end61.if.end68_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end68

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx67 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 8
  %30 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx67, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %31, i32 noundef %left, i32 noundef %right, i32 noundef 1)
  br label %if.end68

if.end68:                                         ; preds = %if.then65, %if.end61.if.end68_crit_edge
  %32 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %present, align 4
  %and70 = and i32 %33, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.end68.if.end124_crit_edge, label %if.then72

if.end68.if.end124_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

if.then72:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx74 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 2
  %34 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx74, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %35, i32 noundef %left, i32 noundef %right, i32 noundef 1)
  br label %if.end124

if.else76:                                        ; preds = %if.end30
  br i1 %tobool79.not, label %if.else83, label %if.then80

if.then80:                                        ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx82 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %arrayidx82 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx82, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %37, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %if.end124

if.else83:                                        ; preds = %if.else76
  %and85 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85)
  %tobool86.not = icmp eq i32 %and85, 0
  br i1 %tobool86.not, label %if.else90, label %if.then87

if.then87:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx89 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 7
  %38 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx89, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %39, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %if.end124

if.else90:                                        ; preds = %if.else83
  %and92 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and92)
  %tobool93.not = icmp eq i32 %and92, 0
  br i1 %tobool93.not, label %if.else97, label %if.then94

if.then94:                                        ; preds = %if.else90
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx96 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx96, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %41, i32 noundef 0, i32 noundef 0, i32 noundef 0)
  br label %if.end124

if.else97:                                        ; preds = %if.else90
  %and99 = and i32 %13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and99)
  %tobool100.not = icmp eq i32 %and99, 0
  br i1 %tobool100.not, label %if.else104, label %if.then101

if.then101:                                       ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx103 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 5
  %42 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx103, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %43, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  br label %if.end124

if.else104:                                       ; preds = %if.else97
  %and106 = and i32 %13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %if.else111, label %if.then108

if.then108:                                       ; preds = %if.else104
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx110 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 8
  %44 = ptrtoint ptr %arrayidx110 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx110, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %45, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  br label %if.end124

if.else111:                                       ; preds = %if.else104
  %and113 = and i32 %13, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.else111.if.end124_crit_edge, label %if.then115

if.else111.if.end124_crit_edge:                   ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end124

if.then115:                                       ; preds = %if.else111
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx117 = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 2
  %46 = ptrtoint ptr %arrayidx117 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx117, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %47, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  br label %if.end124

if.end124:                                        ; preds = %if.then115, %if.else111.if.end124_crit_edge, %if.then108, %if.then101, %if.then94, %if.then87, %if.then80, %if.then72, %if.end68.if.end124_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixer_oss_get_recsrc1_sw(ptr nocapture noundef readonly %fmixer, ptr nocapture noundef readonly %pslot, ptr nocapture noundef writeonly %active) #0 align 64 {
entry:
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_mixer_oss_slot, ptr %pslot, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %right) #13
  %2 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %right, align 4
  %3 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %left, align 4
  %arrayidx = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call fastcc void @snd_mixer_oss_get_volume1_sw(ptr noundef %fmixer, i32 noundef %5, ptr noundef nonnull %left, ptr noundef nonnull %right, i32 noundef 0)
  %6 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %right, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1 = icmp ne i32 %9, 0
  %phi.cast = zext i1 %tobool1 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %10 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %11 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %active, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %right) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixer_oss_put_recsrc1_sw(ptr nocapture noundef readonly %fmixer, ptr nocapture noundef readonly %pslot, i32 noundef %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_mixer_oss_slot, ptr %pslot, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %3, i32 noundef %active, i32 noundef %active, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixer_oss_get_recsrc1_route(ptr nocapture noundef readonly %fmixer, ptr nocapture noundef readonly %pslot, ptr nocapture noundef writeonly %active) #0 align 64 {
entry:
  %left = alloca i32, align 4
  %right = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_mixer_oss_slot, ptr %pslot, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %left) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %right) #13
  %2 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %right, align 4
  %3 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %left, align 4
  %arrayidx = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 8
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  call fastcc void @snd_mixer_oss_get_volume1_sw(ptr noundef %fmixer, i32 noundef %5, ptr noundef nonnull %left, ptr noundef nonnull %right, i32 noundef 1)
  %6 = ptrtoint ptr %left to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %left, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %lor.rhs, label %entry.lor.end_crit_edge

entry.lor.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.end

lor.rhs:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %right to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %right, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool1 = icmp ne i32 %9, 0
  %phi.cast = zext i1 %tobool1 to i32
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %entry.lor.end_crit_edge
  %10 = phi i32 [ 1, %entry.lor.end_crit_edge ], [ %phi.cast, %lor.rhs ]
  %11 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %active, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %right) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %left) #13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_mixer_oss_put_recsrc1_route(ptr nocapture noundef readonly %fmixer, ptr nocapture noundef readonly %pslot, i32 noundef %active) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_mixer_oss_slot, ptr %pslot, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %arrayidx = getelementptr %struct.slot, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  tail call fastcc void @snd_mixer_oss_put_volume1_sw(ptr noundef %fmixer, i32 noundef %3, i32 noundef %active, i32 noundef %active, i32 noundef 1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mixer_oss_slot_free(ptr nocapture noundef readonly %chn) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_mixer_oss_slot, ptr %chn, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %entry
  %allocated = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %allocated to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool1.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %assigned = getelementptr inbounds %struct.slot, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %assigned to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %assigned, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %land.lhs.true.if.end_crit_edge, label %if.then3

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %name = getelementptr inbounds %struct.snd_mixer_oss_assign_table, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  tail call void @kfree_const(ptr noundef %6) #13
  %7 = ptrtoint ptr %assigned to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %assigned, align 4
  tail call void @kfree_const(ptr noundef %8) #13
  br label %if.end

if.end:                                           ; preds = %if.then3, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #13
  br label %if.end6

if.end6:                                          ; preds = %if.end, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @snd_mixer_oss_build_test(ptr nocapture noundef readonly %mixer, ptr nocapture noundef %slot, ptr noundef %name, i32 noundef %index, i32 noundef %item) unnamed_addr #0 align 64 {
entry:
  %id.i = alloca %struct.snd_ctl_elem_id, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mixer, align 4
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 14
  tail call void @down_read(ptr noundef %controls_rwsem) #13
  %2 = ptrtoint ptr %mixer to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mixer, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %id.i) #13
  %4 = call ptr @memset(ptr %id.i, i32 0, i32 64)
  %iface.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 1
  %5 = ptrtoint ptr %iface.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2, ptr %iface.i, align 4
  %name2.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 4
  %call.i = call i32 @strscpy(ptr noundef %name2.i, ptr noundef %name, i32 noundef 44) #13
  %index3.i = getelementptr inbounds %struct.snd_ctl_elem_id, ptr %id.i, i32 0, i32 5
  %6 = ptrtoint ptr %index3.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %index, ptr %index3.i, align 4
  %call4.i = call ptr @snd_ctl_find_id(ptr noundef %3, ptr noundef nonnull %id.i) #13
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %id.i) #13
  %cmp = icmp eq ptr %call4.i, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  call void @up_read(ptr noundef %controls_rwsem) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 272) #17
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  call void @up_read(ptr noundef %controls_rwsem) #13
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %info7 = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 3
  %8 = ptrtoint ptr %info7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info7, align 4
  %call8 = call i32 %9(ptr noundef nonnull %call4.i, ptr noundef nonnull %call7.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  call void @up_read(ptr noundef %controls_rwsem) #13
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

if.end12:                                         ; preds = %if.end6
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %call4.i, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %arrayidx = getelementptr %struct.slot, ptr %slot, i32 0, i32 3, i32 %item
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %arrayidx, align 4
  call void @up_read(ptr noundef %controls_rwsem) #13
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i, i32 0, i32 3
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 8
  %channels = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 2
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp15 = icmp ugt i32 %14, %16
  br i1 %cmp15, label %if.then16, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %14, ptr %channels, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then16, %if.end12.if.end19_crit_edge
  %shl = shl nuw i32 1, %item
  %present = getelementptr inbounds %struct.slot, ptr %slot, i32 0, i32 1
  %18 = ptrtoint ptr %present to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %present, align 4
  %or = or i32 %19, %shl
  store i32 %or, ptr %present, align 4
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then10, %if.then4, %if.then
  %retval.0 = phi i32 [ 0, %if.then ], [ %call8, %if.then10 ], [ 0, %if.end19 ], [ -12, %if.then4 ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_id(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_mixer_oss_get_volume1_vol(ptr nocapture noundef readonly %fmixer, ptr nocapture noundef readonly %pslot, i32 noundef %numid, ptr nocapture noundef writeonly %left, ptr nocapture noundef writeonly %right) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %numid)
  %cmp = icmp eq i32 %numid, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %fmixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmixer, align 4
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 14
  tail call void @down_read(ptr noundef %controls_rwsem) #13
  %call = tail call ptr @snd_ctl_find_numid(ptr noundef %1, i32 noundef %numid) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @up_read(ptr noundef %controls_rwsem) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 272) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i72 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 712) #17
  %cmp7 = icmp eq ptr %call7.i.i, null
  %cmp8 = icmp eq ptr %call7.i.i72, null
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.end4.__unalloc_crit_edge, label %if.end10

if.end4.__unalloc_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.end10:                                         ; preds = %if.end4
  %info = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %call11 = tail call i32 %5(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.__unalloc_crit_edge

if.end10.__unalloc_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.end14:                                         ; preds = %if.end10
  %get = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get, align 4
  %call15 = tail call i32 %7(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i72) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.__unalloc_crit_edge

if.end14.__unalloc_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.end18:                                         ; preds = %if.end14
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp19 = icmp eq i32 %9, 1
  br i1 %cmp19, label %land.lhs.true, label %if.end18.if.end25_crit_edge

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true:                                    ; preds = %if.end18
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp20 = icmp eq i32 %11, 0
  br i1 %cmp20, label %land.lhs.true21, label %land.lhs.true.if.end25_crit_edge

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true21:                                  ; preds = %land.lhs.true
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %12 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp23 = icmp eq i32 %13, 1
  br i1 %cmp23, label %land.lhs.true21.__unalloc_crit_edge, label %land.lhs.true21.if.end25_crit_edge

land.lhs.true21.if.end25_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end25

land.lhs.true21.__unalloc_crit_edge:              ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.end25:                                         ; preds = %land.lhs.true21.if.end25_crit_edge, %land.lhs.true.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  %value26 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %call7.i.i72, i32 0, i32 2
  %14 = ptrtoint ptr %value26 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value26, align 8
  %value27 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 5
  %16 = ptrtoint ptr %value27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %value27, align 8
  %max30 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %18 = ptrtoint ptr %max30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max30, align 4
  %volume = getelementptr inbounds %struct.snd_mixer_oss_slot, ptr %pslot, i32 0, i32 9
  %20 = ptrtoint ptr %volume to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %volume, align 4
  %sub1.i.i = sub i32 %19, %17
  %mul.i.i = mul i32 %21, %sub1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp3.i.i = icmp sgt i32 %mul.i.i, 0
  %add.pn.v.i.sext.i = select i1 %cmp3.i.i, i32 50, i32 -50
  %add.pn.i.i = add i32 %add.pn.v.i.sext.i, %mul.i.i
  %cond.i.i = sdiv i32 %add.pn.i.i, 100
  %add12.i.i = add i32 %cond.i.i, %17
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i.i, i32 %15)
  %cmp.i = icmp eq i32 %add12.i.i, %15
  br i1 %cmp.i, label %if.end25.snd_mixer_oss_conv1.exit_crit_edge, label %if.end.i

if.end25.snd_mixer_oss_conv1.exit_crit_edge:      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_conv1.exit

if.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %17)
  %cmp.i.i = icmp eq i32 %19, %17
  br i1 %cmp.i.i, label %if.end.i.snd_mixer_oss_conv1.exit_crit_edge, label %if.end.i.i

if.end.i.snd_mixer_oss_conv1.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %snd_mixer_oss_conv1.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %sub2.i.i = sub i32 %15, %17
  %mul.i6.i = mul i32 %sub2.i.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i6.i)
  %cmp3.i7.i = icmp slt i32 %mul.i6.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i.i)
  %cmp4.i.i = icmp sgt i32 %sub1.i.i, 0
  %cmp6.i8.i = xor i1 %cmp4.i.i, %cmp3.i7.i
  %add.pn.v.v.i9.i = select i1 %cmp6.i8.i, i32 2, i32 -2
  %add.pn.v.i10.i = sdiv i32 %sub1.i.i, %add.pn.v.v.i9.i
  %add.pn.i11.i = add i32 %add.pn.v.i10.i, %mul.i6.i
  %cond.i12.i = sdiv i32 %add.pn.i11.i, %sub1.i.i
  br label %snd_mixer_oss_conv1.exit

snd_mixer_oss_conv1.exit:                         ; preds = %if.end.i.i, %if.end.i.snd_mixer_oss_conv1.exit_crit_edge, %if.end25.snd_mixer_oss_conv1.exit_crit_edge
  %retval.0.i = phi i32 [ %21, %if.end25.snd_mixer_oss_conv1.exit_crit_edge ], [ %cond.i12.i, %if.end.i.i ], [ 0, %if.end.i.snd_mixer_oss_conv1.exit_crit_edge ]
  %22 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %retval.0.i, ptr %left, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %24)
  %cmp33 = icmp ugt i32 %24, 1
  br i1 %cmp33, label %if.then34, label %snd_mixer_oss_conv1.exit.__unalloc_crit_edge

snd_mixer_oss_conv1.exit.__unalloc_crit_edge:     ; preds = %snd_mixer_oss_conv1.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.then34:                                        ; preds = %snd_mixer_oss_conv1.exit
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx36 = getelementptr [128 x i32], ptr %value26, i32 0, i32 1
  %25 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx36, align 4
  %arrayidx42 = getelementptr %struct.snd_mixer_oss_slot, ptr %pslot, i32 0, i32 9, i32 1
  %call43 = tail call fastcc i32 @snd_mixer_oss_conv1(i32 noundef %26, i32 noundef %17, i32 noundef %19, ptr noundef %arrayidx42)
  %27 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call43, ptr %right, align 4
  br label %__unalloc

__unalloc:                                        ; preds = %if.then34, %snd_mixer_oss_conv1.exit.__unalloc_crit_edge, %land.lhs.true21.__unalloc_crit_edge, %if.end14.__unalloc_crit_edge, %if.end10.__unalloc_crit_edge, %if.end4.__unalloc_crit_edge
  tail call void @up_read(ptr noundef %controls_rwsem) #13
  tail call void @kfree(ptr noundef %call7.i.i72) #13
  tail call void @kfree(ptr noundef %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %__unalloc, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_mixer_oss_get_volume1_sw(ptr nocapture noundef readonly %fmixer, i32 noundef %numid, ptr nocapture noundef writeonly %left, ptr nocapture noundef writeonly %right, i32 noundef %route) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %numid)
  %cmp = icmp eq i32 %numid, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %fmixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmixer, align 4
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 14
  tail call void @down_read(ptr noundef %controls_rwsem) #13
  %call = tail call ptr @snd_ctl_find_numid(ptr noundef %1, i32 noundef %numid) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @up_read(ptr noundef %controls_rwsem) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 272) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 712) #17
  %cmp7 = icmp eq ptr %call7.i.i, null
  %cmp8 = icmp eq ptr %call7.i.i1, null
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.end4.__unalloc_crit_edge, label %if.end10

if.end4.__unalloc_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.end10:                                         ; preds = %if.end4
  %info = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %call11 = tail call i32 %5(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.__unalloc_crit_edge

if.end10.__unalloc_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.end14:                                         ; preds = %if.end10
  %get = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %get to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %get, align 4
  %call15 = tail call i32 %7(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i1) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.__unalloc_crit_edge

if.end14.__unalloc_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.end18:                                         ; preds = %if.end14
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %call7.i.i1, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool19.not = icmp eq i32 %9, 0
  br i1 %tobool19.not, label %if.then20, label %if.end18.if.end24_crit_edge

if.end18.if.end24_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then20:                                        ; preds = %if.end18
  %10 = ptrtoint ptr %left to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %left, align 4
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp21 = icmp eq i32 %12, 1
  br i1 %cmp21, label %if.then22, label %if.then20.if.end24_crit_edge

if.then20.if.end24_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %right, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.then20.if.end24_crit_edge, %if.end18.if.end24_crit_edge
  %count25 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %count25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count25, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp26 = icmp ugt i32 %15, 1
  br i1 %cmp26, label %land.lhs.true, label %if.end24.__unalloc_crit_edge

if.end24.__unalloc_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

land.lhs.true:                                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %route)
  %tobool28.not = icmp eq i32 %route, 0
  %cond = select i1 %tobool28.not, i32 1, i32 3
  %arrayidx29 = getelementptr [128 x i32], ptr %value, i32 0, i32 %cond
  %16 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool30.not = icmp eq i32 %17, 0
  br i1 %tobool30.not, label %if.then31, label %land.lhs.true.__unalloc_crit_edge

land.lhs.true.__unalloc_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %right to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %right, align 4
  br label %__unalloc

__unalloc:                                        ; preds = %if.then31, %land.lhs.true.__unalloc_crit_edge, %if.end24.__unalloc_crit_edge, %if.end14.__unalloc_crit_edge, %if.end10.__unalloc_crit_edge, %if.end4.__unalloc_crit_edge
  tail call void @up_read(ptr noundef %controls_rwsem) #13
  tail call void @kfree(ptr noundef %call7.i.i1) #13
  tail call void @kfree(ptr noundef %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %__unalloc, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_ctl_find_numid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc i32 @snd_mixer_oss_conv1(i32 noundef %val, i32 noundef %min, i32 noundef %max, ptr nocapture noundef readonly %old) unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %old, align 4
  %sub1.i = sub i32 %max, %min
  %mul.i = mul i32 %1, %sub1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp3.i = icmp sgt i32 %mul.i, 0
  %add.pn.v.i.sext = select i1 %cmp3.i, i32 50, i32 -50
  %add.pn.i = add i32 %add.pn.v.i.sext, %mul.i
  %cond.i = sdiv i32 %add.pn.i, 100
  %add12.i = add i32 %cond.i, %min
  call void @__sanitizer_cov_trace_cmp4(i32 %add12.i, i32 %val)
  %cmp = icmp eq i32 %add12.i, %val
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %max, i32 %min)
  %cmp.i = icmp eq i32 %max, %min
  br i1 %cmp.i, label %if.end.return_crit_edge, label %if.end.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %sub2.i = sub i32 %val, %min
  %mul.i6 = mul i32 %sub2.i, 100
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul.i6)
  %cmp3.i7 = icmp slt i32 %mul.i6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp4.i = icmp sgt i32 %sub1.i, 0
  %cmp6.i8 = xor i1 %cmp4.i, %cmp3.i7
  %add.pn.v.v.i9 = select i1 %cmp6.i8, i32 2, i32 -2
  %add.pn.v.i10 = sdiv i32 %sub1.i, %add.pn.v.v.i9
  %add.pn.i11 = add i32 %add.pn.v.i10, %mul.i6
  %cond.i12 = sdiv i32 %add.pn.i11, %sub1.i
  br label %return

return:                                           ; preds = %if.end.i, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %1, %entry.return_crit_edge ], [ %cond.i12, %if.end.i ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_mixer_oss_put_volume1_vol(ptr nocapture noundef readonly %fmixer, i32 noundef %numid, i32 noundef %left, i32 noundef %right) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmixer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %numid)
  %cmp = icmp eq i32 %numid, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 14
  tail call void @down_read(ptr noundef %controls_rwsem) #13
  %call = tail call ptr @snd_ctl_find_numid(ptr noundef %1, i32 noundef %numid) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @up_read(ptr noundef %controls_rwsem) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 272) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 712) #17
  %cmp7 = icmp eq ptr %call7.i.i, null
  %cmp8 = icmp eq ptr %call7.i.i2, null
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.end4.__unalloc_crit_edge, label %if.end10

if.end4.__unalloc_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.end10:                                         ; preds = %if.end4
  %info = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %call11 = tail call i32 %5(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.__unalloc_crit_edge

if.end10.__unalloc_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.end14:                                         ; preds = %if.end10
  %type = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp15 = icmp eq i32 %7, 1
  br i1 %cmp15, label %land.lhs.true, label %if.end14.if.end21_crit_edge

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end14
  %value = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 5
  %8 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp16 = icmp eq i32 %9, 0
  br i1 %cmp16, label %land.lhs.true17, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true17:                                  ; preds = %land.lhs.true
  %max = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %10 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp19 = icmp eq i32 %11, 1
  br i1 %cmp19, label %land.lhs.true17.__unalloc_crit_edge, label %land.lhs.true17.if.end21_crit_edge

land.lhs.true17.if.end21_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end21

land.lhs.true17.__unalloc_crit_edge:              ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.end21:                                         ; preds = %land.lhs.true17.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end14.if.end21_crit_edge
  %value22 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %value22 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %value22, align 8
  %max25 = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %14 = ptrtoint ptr %max25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %max25, align 4
  %sub1.i.i = sub i32 %15, %13
  %mul.i.i = mul i32 %sub1.i.i, %left
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i)
  %cmp3.i.i = icmp sgt i32 %mul.i.i, 0
  %add.pn.v.i.sext.i = select i1 %cmp3.i.i, i32 50, i32 -50
  %add.pn.i.i = add i32 %add.pn.v.i.sext.i, %mul.i.i
  %cond.i.i = sdiv i32 %add.pn.i.i, 100
  %add12.i.i = add i32 %cond.i.i, %13
  %value27 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %call7.i.i2, i32 0, i32 2
  %16 = ptrtoint ptr %value27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add12.i.i, ptr %value27, align 8
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp28 = icmp ugt i32 %18, 1
  br i1 %cmp28, label %if.then29, label %if.end21.if.end37_crit_edge

if.end21.if.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then29:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #15
  %mul.i.i4 = mul i32 %sub1.i.i, %right
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i.i4)
  %cmp3.i.i5 = icmp sgt i32 %mul.i.i4, 0
  %add.pn.v.i.sext.i6 = select i1 %cmp3.i.i5, i32 50, i32 -50
  %add.pn.i.i7 = add i32 %add.pn.v.i.sext.i6, %mul.i.i4
  %cond.i.i8 = sdiv i32 %add.pn.i.i7, 100
  %add12.i.i9 = add i32 %cond.i.i8, %13
  %arrayidx36 = getelementptr [128 x i32], ptr %value27, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add12.i.i9, ptr %arrayidx36, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then29, %if.end21.if.end37_crit_edge
  %put = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 5
  %20 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %put, align 4
  %call38 = tail call i32 %21(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call38)
  %22 = icmp slt i32 %call38, 1
  br i1 %22, label %if.end37.__unalloc_crit_edge, label %if.then43

if.end37.__unalloc_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.then43:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %1, i32 noundef 1, ptr noundef %id) #13
  br label %__unalloc

__unalloc:                                        ; preds = %if.then43, %if.end37.__unalloc_crit_edge, %land.lhs.true17.__unalloc_crit_edge, %if.end10.__unalloc_crit_edge, %if.end4.__unalloc_crit_edge
  tail call void @up_read(ptr noundef %controls_rwsem) #13
  tail call void @kfree(ptr noundef %call7.i.i2) #13
  tail call void @kfree(ptr noundef %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %__unalloc, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_mixer_oss_put_volume1_sw(ptr nocapture noundef readonly %fmixer, i32 noundef %numid, i32 noundef %left, i32 noundef %right, i32 noundef %route) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fmixer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fmixer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %numid)
  %cmp = icmp eq i32 %numid, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %1, i32 0, i32 14
  tail call void @down_read(ptr noundef %controls_rwsem) #13
  %call = tail call ptr @snd_ctl_find_numid(ptr noundef %1, i32 noundef %numid) #13
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then2, label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @up_read(ptr noundef %controls_rwsem) #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 272) #17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i2 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 712) #17
  %cmp7 = icmp eq ptr %call7.i.i, null
  %cmp8 = icmp eq ptr %call7.i.i2, null
  %or.cond = select i1 %cmp7, i1 true, i1 %cmp8
  br i1 %or.cond, label %if.end4.__unalloc_crit_edge, label %if.end10

if.end4.__unalloc_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.end10:                                         ; preds = %if.end4
  %info = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %info, align 4
  %call11 = tail call i32 %5(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.__unalloc_crit_edge

if.end10.__unalloc_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.end14:                                         ; preds = %if.end10
  %count = getelementptr inbounds %struct.snd_ctl_elem_info, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp15 = icmp ugt i32 %7, 1
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left)
  %cmp17 = icmp sgt i32 %left, 0
  %cond = zext i1 %cmp17 to i32
  %value = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %call7.i.i2, i32 0, i32 2
  %8 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %cond, ptr %value, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %right)
  %cmp18 = icmp sgt i32 %right, 0
  %cond19 = zext i1 %cmp18 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %route)
  %tobool21.not = icmp eq i32 %route, 0
  %cond22 = select i1 %tobool21.not, i32 1, i32 3
  %arrayidx23 = getelementptr [128 x i32], ptr %value, i32 0, i32 %cond22
  %9 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %cond19, ptr %arrayidx23, align 4
  br i1 %tobool21.not, label %if.then16.if.end36_crit_edge, label %if.then25

if.then16.if.end36_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

if.then25:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #15
  %arrayidx27 = getelementptr %struct.snd_ctl_elem_value, ptr %call7.i.i2, i32 0, i32 2, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx27, align 8
  %arrayidx29 = getelementptr [128 x i32], ptr %value, i32 0, i32 1
  %11 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx29, align 4
  br label %if.end36

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %right)
  %cmp32 = icmp sgt i32 %right, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left)
  %cmp31.inv = icmp sgt i32 %left, 0
  %narrow = or i1 %cmp31.inv, %cmp32
  %12 = zext i1 %narrow to i32
  %value34 = getelementptr inbounds %struct.snd_ctl_elem_value, ptr %call7.i.i2, i32 0, i32 2
  %13 = ptrtoint ptr %value34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %value34, align 8
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then25, %if.then16.if.end36_crit_edge
  %put = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 5
  %14 = ptrtoint ptr %put to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %put, align 4
  %call37 = tail call i32 %15(ptr noundef nonnull %call, ptr noundef nonnull %call7.i.i2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call37)
  %16 = icmp slt i32 %call37, 1
  br i1 %16, label %if.end36.__unalloc_crit_edge, label %if.then42

if.end36.__unalloc_crit_edge:                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unalloc

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  %id = getelementptr inbounds %struct.snd_kcontrol, ptr %call, i32 0, i32 1
  tail call void @snd_ctl_notify(ptr noundef %1, i32 noundef 1, ptr noundef %id) #13
  br label %__unalloc

__unalloc:                                        ; preds = %if.then42, %if.end36.__unalloc_crit_edge, %if.end10.__unalloc_crit_edge, %if.end4.__unalloc_crit_edge
  tail call void @up_read(ptr noundef %controls_rwsem) #13
  tail call void @kfree(ptr noundef %call7.i.i2) #13
  tail call void @kfree(ptr noundef %call7.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %__unalloc, %if.then2, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_notify(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_const(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_create_card_entry(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mixer_oss_proc_read(ptr nocapture noundef readonly %entry1, ptr nocapture noundef readonly %buffer) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %reg_mutex = getelementptr inbounds %struct.snd_mixer_oss, ptr %1, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %reg_mutex, i32 noundef 0) #13
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %2 = add nsw i32 %i.028, -25
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %2)
  %tobool.not = icmp ult i32 %2, 7
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %for.body
  %arrayidx = getelementptr [32 x ptr], ptr @oss_mixer_names, i32 0, i32 %i.028
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %private_data3 = getelementptr %struct.snd_mixer_oss, ptr %1, i32 0, i32 3, i32 %i.028, i32 7
  %5 = ptrtoint ptr %private_data3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %private_data3, align 4
  %7 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %8, ptr noundef nonnull @.str.54, ptr noundef %4) #13
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %assigned = getelementptr inbounds %struct.slot, ptr %6, i32 0, i32 5
  %9 = ptrtoint ptr %assigned to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %assigned, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %land.lhs.true.if.else_crit_edge, label %if.then8

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.else

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  %11 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %buffer, align 4
  %name = getelementptr inbounds %struct.snd_mixer_oss_assign_table, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %name, align 4
  %index = getelementptr inbounds %struct.snd_mixer_oss_assign_table, ptr %10, i32 0, i32 2
  %15 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %12, ptr noundef nonnull @.str.55, ptr noundef %14, i32 noundef %16) #13
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %17 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %buffer, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %18, ptr noundef nonnull @.str.56) #13
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then8, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @mutex_unlock(ptr noundef %reg_mutex) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_mixer_oss_proc_write(ptr nocapture noundef readonly %entry1, ptr noundef %buffer) #0 align 64 {
entry:
  %line = alloca [128 x i8], align 1
  %str = alloca [32 x i8], align 1
  %idxstr = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_info_entry, ptr %entry1, i32 0, i32 7
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %line) #13
  %2 = call ptr @memset(ptr %line, i32 255, i32 128)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %str) #13
  %3 = call ptr @memset(ptr %str, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %idxstr) #13
  %4 = call ptr @memset(ptr %idxstr, i32 255, i32 16)
  %call104 = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 128) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool.not105 = icmp eq i32 %call104, 0
  br i1 %tobool.not105, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %reg_mutex35 = getelementptr inbounds %struct.snd_mixer_oss, ptr %1, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %while.body.lr.ph
  %call4 = call ptr @snd_info_get_str(ptr noundef nonnull %str, ptr noundef nonnull %line, i32 noundef 32) #13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %while.body
  %ch.0102 = phi i32 [ 0, %while.body ], [ %inc, %for.inc.for.body_crit_edge ]
  %5 = add nsw i32 %ch.0102, -25
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %tobool5.not = icmp ult i32 %5, 7
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr [32 x ptr], ptr @oss_mixer_names, i32 0, i32 %ch.0102
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call8 = call i32 @strcmp(ptr noundef %7, ptr noundef nonnull %str) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp eq i32 %call8, 0
  br i1 %cmp9, label %if.end14, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %ch.0102, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %do.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end:                                           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef nonnull %str) #18
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %__unlock, %do.end31, %mixer_slot_clear.exit, %do.end
  %call = call i32 @snd_info_get_line(ptr noundef %buffer, ptr noundef nonnull %line, i32 noundef 128) #13
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %while.cond.backedge.while.body_crit_edge, label %while.cond.backedge.while.end_crit_edge

while.cond.backedge.while.end_crit_edge:          ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end14:                                         ; preds = %land.lhs.true
  %call16 = call ptr @snd_info_get_str(ptr noundef nonnull %str, ptr noundef %call4, i32 noundef 32) #13
  %8 = ptrtoint ptr %str to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %str, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool18.not = icmp eq i8 %9, 0
  br i1 %tobool18.not, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @mutex_lock_nested(ptr noundef %reg_mutex35, i32 noundef 0) #13
  %arrayidx20 = getelementptr %struct.snd_mixer_oss, ptr %1, i32 0, i32 3, i32 %ch.0102
  %10 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx20, align 4
  %private_free.i = getelementptr %struct.snd_mixer_oss, ptr %1, i32 0, i32 3, i32 %ch.0102, i32 8
  %12 = ptrtoint ptr %private_free.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %private_free.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.then19.mixer_slot_clear.exit_crit_edge, label %if.then.i

if.then19.mixer_slot_clear.exit_crit_edge:        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  br label %mixer_slot_clear.exit

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #15
  call void %13(ptr noundef %arrayidx20) #13
  br label %mixer_slot_clear.exit

mixer_slot_clear.exit:                            ; preds = %if.then.i, %if.then19.mixer_slot_clear.exit_crit_edge
  %14 = getelementptr inbounds i8, ptr %arrayidx20, i32 4
  %15 = call ptr @memset(ptr %14, i32 0, i32 40)
  %16 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %11, ptr %arrayidx20, align 4
  call void @mutex_unlock(ptr noundef %reg_mutex35) #13
  br label %while.cond.backedge

if.end22:                                         ; preds = %if.end14
  %call24 = call ptr @snd_info_get_str(ptr noundef nonnull %idxstr, ptr noundef %call16, i32 noundef 16) #13
  %call26 = call i32 @simple_strtoul(ptr noundef nonnull %idxstr, ptr noundef null, i32 noundef 10) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 16383, i32 %call26)
  %cmp27 = icmp ugt i32 %call26, 16383
  br i1 %cmp27, label %do.end31, label %if.end34

do.end31:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #15
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, i32 noundef %call26) #18
  br label %while.cond.backedge

if.end34:                                         ; preds = %if.end22
  call void @mutex_lock_nested(ptr noundef %reg_mutex35, i32 noundef 0) #13
  %private_data38 = getelementptr %struct.snd_mixer_oss, ptr %1, i32 0, i32 3, i32 %ch.0102, i32 7
  %17 = ptrtoint ptr %private_data38 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_data38, align 4
  %tobool39.not = icmp eq ptr %18, null
  br i1 %tobool39.not, label %if.end34.if.end51_crit_edge, label %land.lhs.true40

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.lhs.true40:                                  ; preds = %if.end34
  %assigned = getelementptr inbounds %struct.slot, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %assigned to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %assigned, align 4
  %tobool41.not = icmp eq ptr %20, null
  br i1 %tobool41.not, label %land.lhs.true40.if.end51_crit_edge, label %land.lhs.true42

land.lhs.true40.if.end51_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.lhs.true42:                                  ; preds = %land.lhs.true40
  %index = getelementptr inbounds %struct.snd_mixer_oss_assign_table, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %call26)
  %cmp44 = icmp eq i32 %22, %call26
  br i1 %cmp44, label %land.lhs.true45, label %land.lhs.true42.if.end51_crit_edge

land.lhs.true42.if.end51_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.lhs.true45:                                  ; preds = %land.lhs.true42
  %name = getelementptr inbounds %struct.snd_mixer_oss_assign_table, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %name, align 4
  %call48 = call i32 @strcmp(ptr noundef %24, ptr noundef nonnull %str) #19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %land.lhs.true45.__unlock_crit_edge, label %land.lhs.true45.if.end51_crit_edge

land.lhs.true45.if.end51_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end51

land.lhs.true45.__unlock_crit_edge:               ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock

if.end51:                                         ; preds = %land.lhs.true45.if.end51_crit_edge, %land.lhs.true42.if.end51_crit_edge, %land.lhs.true40.if.end51_crit_edge, %if.end34.if.end51_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3264, i32 noundef 12) #17
  %tobool53.not = icmp eq ptr %call7.i, null
  br i1 %tobool53.not, label %if.end51.__unlock_crit_edge, label %if.end55

if.end51.__unlock_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock

if.end55:                                         ; preds = %if.end51
  %26 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %ch.0102, ptr %call7.i, align 8
  %call57 = call noalias ptr @kstrdup(ptr noundef nonnull %str, i32 noundef 3264) #13
  %name58 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, ptr %call7.i, i32 0, i32 1
  %27 = ptrtoint ptr %name58 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call57, ptr %name58, align 4
  %tobool60.not = icmp eq ptr %call57, null
  br i1 %tobool60.not, label %if.end55.__unlock.sink.split_crit_edge, label %if.end62

if.end55.__unlock.sink.split_crit_edge:           ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock.sink.split

if.end62:                                         ; preds = %if.end55
  %index63 = getelementptr inbounds %struct.snd_mixer_oss_assign_table, ptr %call7.i, i32 0, i32 2
  %28 = ptrtoint ptr %index63 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %call26, ptr %index63, align 8
  %call64 = call fastcc i32 @snd_mixer_oss_build_input(ptr noundef %1, ptr noundef nonnull %call7.i, i32 noundef 1, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 1
  br i1 %cmp65, label %if.then66, label %if.end62.__unlock_crit_edge

if.end62.__unlock_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  br label %__unlock

if.then66:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %name58 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name58, align 4
  call void @kfree(ptr noundef %30) #13
  br label %__unlock.sink.split

__unlock.sink.split:                              ; preds = %if.then66, %if.end55.__unlock.sink.split_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #13
  br label %__unlock

__unlock:                                         ; preds = %__unlock.sink.split, %if.end62.__unlock_crit_edge, %if.end51.__unlock_crit_edge, %land.lhs.true45.__unlock_crit_edge
  call void @mutex_unlock(ptr noundef %reg_mutex35) #13
  br label %while.cond.backedge

while.end:                                        ; preds = %while.cond.backedge.while.end_crit_edge, %entry.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %idxstr) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %str) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %line) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_info_free_entry(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_info_get_line(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_info_get_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(2) }
attributes #18 = { cold nounwind }
attributes #19 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !22, !24, !26, !27, !29, !30, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !185, !186, !187, !189, !190}
!llvm.named.register.sp = !{!191}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @__UNIQUE_ID_author231, !1, !"__UNIQUE_ID_author231", i1 false, i1 false}
!1 = !{!"../sound/core/oss/mixer_oss.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_description232, !3, !"__UNIQUE_ID_description232", i1 false, i1 false}
!3 = !{!"../sound/core/oss/mixer_oss.c", i32 23, i32 1}
!4 = !{ptr @__UNIQUE_ID_file233, !5, !"__UNIQUE_ID_file233", i1 false, i1 false}
!5 = !{!"../sound/core/oss/mixer_oss.c", i32 24, i32 1}
!6 = !{ptr @__UNIQUE_ID_license234, !5, !"__UNIQUE_ID_license234", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias235, !8, !"__UNIQUE_ID_alias235", i1 false, i1 false}
!8 = !{!"../sound/core/oss/mixer_oss.c", i32 25, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../sound/core/oss/mixer_oss.c", i32 397, i32 6}
!11 = !{ptr @__ksymtab_snd_mixer_oss_ioctl_card, !12, !"__ksymtab_snd_mixer_oss_ioctl_card", i1 false, i1 false}
!12 = !{!"../sound/core/oss/mixer_oss.c", i32 406, i32 1}
!13 = !{ptr @__initcall__kmod_snd_mixer_oss__236_1459_alsa_mixer_oss_init6, !14, !"__initcall__kmod_snd_mixer_oss__236_1459_alsa_mixer_oss_init6", i1 false, i1 false}
!14 = !{!"../sound/core/oss/mixer_oss.c", i32 1459, i32 1}
!15 = !{ptr @__exitcall_alsa_mixer_oss_exit, !16, !"__exitcall_alsa_mixer_oss_exit", i1 false, i1 false}
!16 = !{!"../sound/core/oss/mixer_oss.c", i32 1460, i32 1}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!19 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!24 = !{ptr @snd_mixer_oss_notify_handler.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../sound/core/oss/mixer_oss.c", i32 1381, i32 3}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../sound/core/oss/mixer_oss.c", i32 1386, i32 4}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @snd_mixer_oss_notify_handler._entry, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @snd_mixer_oss_notify_handler._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/core/oss/mixer_oss.c", i32 1398, i32 6}
!36 = !{ptr @snd_mixer_oss_f_ops, !37, !"snd_mixer_oss_f_ops", i1 false, i1 false}
!37 = !{!"../sound/core/oss/mixer_oss.c", i32 424, i32 37}
!38 = !{ptr @.str.10, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/core/oss/mixer_oss.c", i32 1297, i32 26}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/core/oss/mixer_oss.c", i32 1298, i32 26}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/core/oss/mixer_oss.c", i32 1299, i32 23}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/core/oss/mixer_oss.c", i32 1300, i32 25}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/core/oss/mixer_oss.c", i32 1301, i32 24}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/core/oss/mixer_oss.c", i32 1302, i32 24}
!50 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/core/oss/mixer_oss.c", i32 1303, i32 24}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/core/oss/mixer_oss.c", i32 1304, i32 22}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/core/oss/mixer_oss.c", i32 1305, i32 26}
!56 = !{ptr @.str.19, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/core/oss/mixer_oss.c", i32 1306, i32 26}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/core/oss/mixer_oss.c", i32 1307, i32 26}
!60 = !{ptr @.str.21, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/core/oss/mixer_oss.c", i32 1308, i32 23}
!62 = !{ptr @.str.22, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/core/oss/mixer_oss.c", i32 1309, i32 22}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/core/oss/mixer_oss.c", i32 1310, i32 21}
!66 = !{ptr @.str.24, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/core/oss/mixer_oss.c", i32 1311, i32 23}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/core/oss/mixer_oss.c", i32 1313, i32 25}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/core/oss/mixer_oss.c", i32 1314, i32 25}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/core/oss/mixer_oss.c", i32 1315, i32 25}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/core/oss/mixer_oss.c", i32 1316, i32 24}
!76 = !{ptr @.str.29, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/core/oss/mixer_oss.c", i32 1317, i32 24}
!78 = !{ptr @.str.30, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/core/oss/mixer_oss.c", i32 1318, i32 24}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../sound/core/oss/mixer_oss.c", i32 1321, i32 27}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/core/oss/mixer_oss.c", i32 1322, i32 27}
!84 = !{ptr @.str.33, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/core/oss/mixer_oss.c", i32 1323, i32 27}
!86 = !{ptr @.str.34, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/core/oss/mixer_oss.c", i32 1324, i32 27}
!88 = !{ptr @.str.35, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/core/oss/mixer_oss.c", i32 1327, i32 26}
!90 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../sound/core/oss/mixer_oss.c", i32 1328, i32 27}
!92 = !{ptr @.str.37, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/core/oss/mixer_oss.c", i32 1330, i32 27}
!94 = !{ptr @.str.38, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/core/oss/mixer_oss.c", i32 1332, i32 24}
!96 = !{ptr @.str.39, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/core/oss/mixer_oss.c", i32 1333, i32 24}
!98 = !{ptr @.str.40, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../sound/core/oss/mixer_oss.c", i32 1334, i32 26}
!100 = !{ptr @snd_mixer_oss_build.table, !101, !"table", i1 false, i1 false}
!101 = !{!"../sound/core/oss/mixer_oss.c", i32 1296, i32 49}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/core/oss/mixer_oss.c", i32 1074, i32 39}
!104 = distinct !{null, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../sound/core/oss/mixer_oss.c", i32 1091, i32 16}
!106 = !{ptr @.str.43, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/core/oss/mixer_oss.c", i32 1093, i32 16}
!108 = !{ptr @.str.44, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../sound/core/oss/mixer_oss.c", i32 999, i32 15}
!110 = !{ptr @.str.45, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/core/oss/mixer_oss.c", i32 1004, i32 15}
!112 = !{ptr @.str.46, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../sound/core/oss/mixer_oss.c", i32 1009, i32 15}
!114 = !{ptr @.str.47, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../sound/core/oss/mixer_oss.c", i32 1014, i32 15}
!116 = !{ptr @.str.48, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/core/oss/mixer_oss.c", i32 1019, i32 15}
!118 = !{ptr @.str.49, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../sound/core/oss/mixer_oss.c", i32 1024, i32 15}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/core/oss/mixer_oss.c", i32 1029, i32 15}
!122 = !{ptr @.str.51, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/core/oss/mixer_oss.c", i32 1034, i32 15}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../sound/core/oss/mixer_oss.c", i32 1039, i32 15}
!126 = !{ptr @.str.53, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../sound/core/oss/mixer_oss.c", i32 1268, i32 50}
!128 = !{ptr @.str.54, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../sound/core/oss/mixer_oss.c", i32 1193, i32 3}
!130 = !{ptr @.str.55, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../sound/core/oss/mixer_oss.c", i32 1195, i32 4}
!132 = !{ptr @.str.56, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../sound/core/oss/mixer_oss.c", i32 1199, i32 4}
!134 = !{ptr @.str.57, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../sound/core/oss/mixer_oss.c", i32 1149, i32 2}
!136 = !{ptr @.str.58, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../sound/core/oss/mixer_oss.c", i32 1150, i32 2}
!138 = !{ptr @.str.59, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../sound/core/oss/mixer_oss.c", i32 1151, i32 2}
!140 = !{ptr @.str.60, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../sound/core/oss/mixer_oss.c", i32 1152, i32 2}
!142 = !{ptr @.str.61, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/core/oss/mixer_oss.c", i32 1154, i32 2}
!144 = !{ptr @.str.62, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../sound/core/oss/mixer_oss.c", i32 1155, i32 2}
!146 = !{ptr @.str.63, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/core/oss/mixer_oss.c", i32 1156, i32 2}
!148 = !{ptr @.str.64, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/core/oss/mixer_oss.c", i32 1158, i32 2}
!150 = !{ptr @.str.65, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../sound/core/oss/mixer_oss.c", i32 1159, i32 2}
!152 = !{ptr @.str.66, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../sound/core/oss/mixer_oss.c", i32 1160, i32 2}
!154 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../sound/core/oss/mixer_oss.c", i32 1161, i32 2}
!156 = !{ptr @.str.68, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../sound/core/oss/mixer_oss.c", i32 1162, i32 2}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../sound/core/oss/mixer_oss.c", i32 1163, i32 2}
!160 = !{ptr @.str.70, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../sound/core/oss/mixer_oss.c", i32 1164, i32 2}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../sound/core/oss/mixer_oss.c", i32 1165, i32 2}
!164 = !{ptr @.str.72, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../sound/core/oss/mixer_oss.c", i32 1166, i32 2}
!166 = !{ptr @.str.73, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../sound/core/oss/mixer_oss.c", i32 1167, i32 2}
!168 = !{ptr @.str.74, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../sound/core/oss/mixer_oss.c", i32 1168, i32 2}
!170 = !{ptr @.str.75, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../sound/core/oss/mixer_oss.c", i32 1169, i32 2}
!172 = !{ptr @.str.76, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../sound/core/oss/mixer_oss.c", i32 1170, i32 2}
!174 = !{ptr @.str.77, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../sound/core/oss/mixer_oss.c", i32 1171, i32 2}
!176 = !{ptr @.str.78, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../sound/core/oss/mixer_oss.c", i32 1172, i32 2}
!178 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../sound/core/oss/mixer_oss.c", i32 1173, i32 2}
!180 = !{ptr @oss_mixer_names, !181, !"oss_mixer_names", i1 false, i1 false}
!181 = !{!"../sound/core/oss/mixer_oss.c", i32 1148, i32 27}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../sound/core/oss/mixer_oss.c", i32 1221, i32 4}
!184 = !{ptr @.str.81, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @snd_mixer_oss_proc_write._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @snd_mixer_oss_proc_write._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.83, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../sound/core/oss/mixer_oss.c", i32 1236, i32 4}
!189 = !{ptr @snd_mixer_oss_proc_write._entry.82, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @snd_mixer_oss_proc_write._entry_ptr.84, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{!"sp"}
!192 = !{i32 1, !"wchar_size", i32 2}
!193 = !{i32 1, !"min_enum_size", i32 4}
!194 = !{i32 8, !"branch-target-enforcement", i32 0}
!195 = !{i32 8, !"sign-return-address", i32 0}
!196 = !{i32 8, !"sign-return-address-all", i32 0}
!197 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!198 = !{i32 7, !"uwtable", i32 1}
!199 = !{i32 7, !"frame-pointer", i32 2}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!201 = !{!"branch_weights", i32 1, i32 2000}
!202 = !{i64 2152948906, i64 2152948931}
!203 = !{i64 5443780}
!204 = !{i64 5443977}
!205 = !{i64 2152929210}
!206 = !{i64 2153743514, i64 2153743794, i64 2153744128, i64 2153744462}
!207 = !{i64 2153752964, i64 2153753244, i64 2153753578, i64 2153753912}
!208 = !{i64 2153762509, i64 2153762789, i64 2153763123, i64 2153763457}
!209 = !{i64 2153771974, i64 2153772254, i64 2153772588, i64 2153772922}
!210 = !{i64 2153781486, i64 2153781766, i64 2153782100, i64 2153782434}
!211 = !{i64 2153791001, i64 2153791281, i64 2153791615, i64 2153791949}
!212 = !{i64 2153800513, i64 2153800793, i64 2153801127, i64 2153801461}
!213 = !{i64 2153810022, i64 2153810302, i64 2153810636, i64 2153810970}
!214 = !{!"auto-init"}
!215 = !{i64 2153819533, i64 2153819813, i64 2153820147, i64 2153820481}
!216 = !{i64 2153831137, i64 2153831417, i64 2153831751, i64 2153832085}
!217 = !{i64 2153840587, i64 2153840867, i64 2153841201, i64 2153841535}
!218 = !{i64 2153849489, i64 2153849769, i64 2153850103, i64 2153850437}
!219 = !{!"branch_weights", i32 2000, i32 1}
!220 = !{i32 0, i32 33}
