; ModuleID = '/llk/IR_all_yes/sound/core/jack.c_pt.bc'
source_filename = "../sound/core/jack.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_jack_add_new_kctl\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_jack_add_new_kctl\09\09\09\09"
module asm "\09.long\09__crc_snd_jack_add_new_kctl\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_jack_add_new_kctl:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_jack_add_new_kctl\22\09\09\09\09\09"
module asm "__kstrtabns_snd_jack_add_new_kctl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_jack_new\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_jack_new\09\09\09\09"
module asm "\09.long\09__crc_snd_jack_new\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_jack_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_jack_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_jack_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_jack_set_parent\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_jack_set_parent\09\09\09\09"
module asm "\09.long\09__crc_snd_jack_set_parent\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_jack_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_jack_set_parent\22\09\09\09\09\09"
module asm "__kstrtabns_snd_jack_set_parent:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_jack_set_key\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_jack_set_key\09\09\09\09"
module asm "\09.long\09__crc_snd_jack_set_key\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_jack_set_key:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_jack_set_key\22\09\09\09\09\09"
module asm "__kstrtabns_snd_jack_set_key:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_jack_report\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_jack_report\09\09\09\09"
module asm "\09.long\09__crc_snd_jack_report\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_jack_report:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_jack_report\22\09\09\09\09\09"
module asm "__kstrtabns_snd_jack_report:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_device_ops = type { ptr, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.snd_jack = type { %struct.list_head, ptr, ptr, ptr, i32, i32, [100 x i8], [6 x i32], i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.snd_jack_kctl = type { ptr, %struct.list_head, i32, ptr, i8, ptr }
%struct.snd_kcontrol = type { %struct.list_head, %struct.snd_ctl_elem_id, i32, ptr, ptr, ptr, %union.anon.81, i32, ptr, ptr, [0 x %struct.snd_kcontrol_volatile] }
%struct.snd_ctl_elem_id = type { i32, i32, i32, i32, [44 x i8], i32 }
%union.anon.81 = type { ptr }
%struct.snd_kcontrol_volatile = type { ptr, i32 }
%struct.snd_card = type { i32, [16 x i8], [16 x i8], [32 x i8], [80 x i8], [32 x i8], [80 x i8], [128 x i8], ptr, ptr, ptr, %struct.list_head, %struct.device, i32, %struct.rw_semaphore, %struct.rwlock_t, i32, i32, %struct.list_head, %struct.list_head, ptr, ptr, %struct.list_head, ptr, %struct.spinlock, i32, ptr, ptr, %struct.device, [4 x ptr], i8, i8, i8, i32, %struct.wait_queue_head, i32, %struct.mutex, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, %struct.wait_queue_head, ptr, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.snd_device = type { %struct.list_head, ptr, i32, i32, ptr, ptr }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }

@__kstrtab_snd_jack_add_new_kctl = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_jack_add_new_kctl = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_jack_add_new_kctl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_jack_add_new_kctl to i32), ptr @__kstrtab_snd_jack_add_new_kctl, ptr @__kstrtabns_snd_jack_add_new_kctl }, section "___ksymtab+snd_jack_add_new_kctl", align 4
@snd_jack_new.ops = internal constant { %struct.snd_device_ops, [20 x i8] } { %struct.snd_device_ops { ptr @snd_jack_dev_free, ptr @snd_jack_dev_register, ptr @snd_jack_dev_disconnect }, [20 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ALSA\00", [27 x i8] zeroinitializer }, align 32
@__kstrtab_snd_jack_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_jack_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_jack_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_jack_new to i32), ptr @__kstrtab_snd_jack_new, ptr @__kstrtabns_snd_jack_new }, section "___ksymtab+snd_jack_new", align 4
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sound/core/jack.c\00", [46 x i8] zeroinitializer }, align 32
@__kstrtab_snd_jack_set_parent = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_jack_set_parent = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_jack_set_parent = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_jack_set_parent to i32), ptr @__kstrtab_snd_jack_set_parent, ptr @__kstrtabns_snd_jack_set_parent }, section "___ksymtab+snd_jack_set_parent", align 4
@__kstrtab_snd_jack_set_key = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_jack_set_key = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_jack_set_key = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_jack_set_key to i32), ptr @__kstrtab_snd_jack_set_key, ptr @__kstrtabns_snd_jack_set_key }, section "___ksymtab+snd_jack_set_key", align 4
@__kstrtab_snd_jack_report = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_jack_report = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_jack_report = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_jack_report to i32), ptr @__kstrtab_snd_jack_report, ptr @__kstrtabns_snd_jack_report }, section "___ksymtab+snd_jack_report", align 4
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Phantom\00", [24 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sw_inject_enable\00", [47 x i8] zeroinitializer }, align 32
@sw_inject_enable_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @sw_inject_enable_read, ptr @sw_inject_enable_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"jackin_inject\00", [18 x i8] zeroinitializer }, align 32
@jackin_inject_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr null, ptr @jackin_inject_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"kctl_id\00", [24 x i8] zeroinitializer }, align 32
@jack_kctl_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @jack_kctl_id_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mask_bits\00", [22 x i8] zeroinitializer }, align 32
@jack_kctl_mask_bits_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @jack_kctl_mask_bits_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"status\00", [25 x i8] zeroinitializer }, align 32
@jack_kctl_status_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @jack_kctl_status_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@jack_type_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @default_llseek, ptr @jack_type_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @simple_open, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: %s\09\09%s: %i\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Jack\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Inject Enabled\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0x%04x\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@jack_events_name = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.22, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.22], [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"HEADPHONE(0x0001)\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MICROPHONE(0x0002)\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"LINEOUT(0x0004)\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MECHANICAL(0x0008)\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"VIDEOOUT(0x0010)\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"LINEIN(0x0020)\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BTN_5(0x0200)\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BTN_4(0x0400)\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BTN_3(0x0800)\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BTN_2(0x1000)\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BTN_1(0x2000)\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"BTN_0(0x4000)\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Plugged\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Unplugged\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s %s\00", [26 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.32 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 496, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 531, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 580, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 347, i32 39 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 362, i32 22 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"sw_inject_enable_fops\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 309, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 365, i32 22 }
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"jackin_inject_fops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 316, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 368, i32 22 }
@___asan_gen_.59 = private unnamed_addr constant [18 x i8] c"jack_kctl_id_fops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 322, i32 37 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 371, i32 22 }
@___asan_gen_.65 = private unnamed_addr constant [25 x i8] c"jack_kctl_mask_bits_fops\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 328, i32 37 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 374, i32 22 }
@___asan_gen_.71 = private unnamed_addr constant [22 x i8] c"jack_kctl_status_fops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 334, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 378, i32 22 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"jack_type_fops\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 302, i32 37 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 171, i32 36 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 171, i32 58 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 172, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 230, i32 36 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 249, i32 27 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 253, i32 17 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"jack_events_name\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 237, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 256, i32 15 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 238, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 238, i32 23 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 238, i32 45 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 239, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 239, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 239, i32 44 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 240, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 240, i32 14 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 240, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 240, i32 48 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 241, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 241, i32 19 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 241, i32 36 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 282, i32 4 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 282, i32 16 }
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.150 = private constant [21 x i8] c"../sound/core/jack.c\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 90, i32 43 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @__ksymtab_snd_jack_add_new_kctl, ptr @__ksymtab_snd_jack_new, ptr @__ksymtab_snd_jack_report, ptr @__ksymtab_snd_jack_set_key, ptr @__ksymtab_snd_jack_set_parent, ptr @snd_jack_new.ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sw_inject_enable_fops, ptr @.str.4, ptr @jackin_inject_fops, ptr @.str.5, ptr @jack_kctl_id_fops, ptr @.str.6, ptr @jack_kctl_mask_bits_fops, ptr @.str.7, ptr @jack_kctl_status_fops, ptr @.str.8, ptr @jack_type_fops, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @jack_events_name, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_jack_new.ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sw_inject_enable_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jackin_inject_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jack_kctl_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jack_kctl_mask_bits_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jack_kctl_status_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jack_type_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jack_events_name to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_jack_add_new_kctl(ptr noundef %jack, ptr noundef %name, i32 noundef %mask) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %card = getelementptr inbounds %struct.snd_jack, ptr %jack, i32 0, i32 1
  %0 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %card, align 4
  %call.i = tail call ptr @snd_kctl_jack_new(ptr noundef %name, ptr noundef %1) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %1, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup_crit_edge, label %if.end3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #11
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %error.i, label %if.end

error.i:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_ctl_free_one(ptr noundef nonnull %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %call7.i.i.i, align 8
  %mask_bits.i = getelementptr inbounds %struct.snd_jack_kctl, ptr %call7.i.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %mask_bits.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %mask, ptr %mask_bits.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i, i32 0, i32 8
  %5 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %private_data.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i, i32 0, i32 9
  %6 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @snd_jack_kctl_private_free, ptr %private_free.i, align 4
  tail call fastcc void @snd_jack_kctl_add(ptr noundef %jack, ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %error.i, %if.end.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %error.i ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @snd_jack_kctl_add(ptr noundef %jack, ptr noundef %jack_kctl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %jack1 = getelementptr inbounds %struct.snd_jack_kctl, ptr %jack_kctl, i32 0, i32 3
  %0 = ptrtoint ptr %jack1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %jack, ptr %jack1, align 4
  %list = getelementptr inbounds %struct.snd_jack_kctl, ptr %jack_kctl, i32 0, i32 1
  %prev.i = getelementptr inbounds %struct.list_head, ptr %jack, i32 0, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %2, ptr noundef %jack) #8
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %jack, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.snd_jack_kctl, ptr %jack_kctl, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %2, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %list, ptr %2, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  %7 = ptrtoint ptr %jack_kctl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %jack_kctl, align 4
  %name.i = getelementptr inbounds %struct.snd_kcontrol, ptr %8, i32 0, i32 1, i32 4
  %call.i = tail call ptr @strstr(ptr noundef %name.i, ptr noundef nonnull @.str.2) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.i, label %list_add_tail.exit.snd_jack_debugfs_add_inject_node.exit_crit_edge

list_add_tail.exit.snd_jack_debugfs_add_inject_node.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_jack_debugfs_add_inject_node.exit

if.end.i:                                         ; preds = %list_add_tail.exit
  %call5.i = tail call noalias ptr @kstrdup(ptr noundef %name.i, i32 noundef 3264) #8
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end.i.snd_jack_debugfs_add_inject_node.exit_crit_edge, label %for.cond.preheader.i

if.end.i.snd_jack_debugfs_add_inject_node.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_jack_debugfs_add_inject_node.exit

for.cond.preheader.i:                             ; preds = %if.end.i
  %9 = ptrtoint ptr %call5.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %call5.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool9.not1.i = icmp eq i8 %10, 0
  br i1 %tobool9.not1.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %11 = phi i8 [ %17, %for.inc.i.for.body.i_crit_edge ], [ %10, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx3.i = phi ptr [ %arrayidx.i, %for.inc.i.for.body.i_crit_edge ], [ %call5.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.02.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %conv.i = zext i8 %11 to i32
  %arrayidx11.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i
  %12 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx11.i, align 1
  %14 = and i8 %13, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp.not.i = icmp eq i8 %14, 0
  br i1 %cmp.not.i, label %if.then14.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then14.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 95, ptr %arrayidx3.i, align 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then14.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add i32 %i.02.i, 1
  %arrayidx.i = getelementptr i8, ptr %call5.i, i32 %inc.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i, align 1
  %tobool9.not.i = icmp eq i8 %17, 0
  br i1 %tobool9.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %card.i = getelementptr inbounds %struct.snd_jack, ptr %jack, i32 0, i32 1
  %18 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card.i, align 4
  %debugfs_root.i = getelementptr inbounds %struct.snd_card, ptr %19, i32 0, i32 37
  %20 = ptrtoint ptr %debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %debugfs_root.i, align 4
  %call17.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull %call5.i, ptr noundef %21) #8
  %jack_debugfs_root.i = getelementptr inbounds %struct.snd_jack_kctl, ptr %jack_kctl, i32 0, i32 5
  %22 = ptrtoint ptr %jack_debugfs_root.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call17.i, ptr %jack_debugfs_root.i, align 4
  tail call void @kfree(ptr noundef nonnull %call5.i) #8
  %23 = ptrtoint ptr %jack_debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %jack_debugfs_root.i, align 4
  %call19.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.3, i16 noundef zeroext 420, ptr noundef %24, ptr noundef %jack_kctl, ptr noundef nonnull @sw_inject_enable_fops) #8
  %25 = ptrtoint ptr %jack_debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %jack_debugfs_root.i, align 4
  %call21.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.4, i16 noundef zeroext 128, ptr noundef %26, ptr noundef %jack_kctl, ptr noundef nonnull @jackin_inject_fops) #8
  %27 = ptrtoint ptr %jack_debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %jack_debugfs_root.i, align 4
  %call23.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.5, i16 noundef zeroext 292, ptr noundef %28, ptr noundef %jack_kctl, ptr noundef nonnull @jack_kctl_id_fops) #8
  %29 = ptrtoint ptr %jack_debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %jack_debugfs_root.i, align 4
  %call25.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.6, i16 noundef zeroext 292, ptr noundef %30, ptr noundef %jack_kctl, ptr noundef nonnull @jack_kctl_mask_bits_fops) #8
  %31 = ptrtoint ptr %jack_debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %jack_debugfs_root.i, align 4
  %call27.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.7, i16 noundef zeroext 292, ptr noundef %32, ptr noundef %jack_kctl, ptr noundef nonnull @jack_kctl_status_fops) #8
  %33 = ptrtoint ptr %jack_debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %jack_debugfs_root.i, align 4
  %call29.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.8, i16 noundef zeroext 292, ptr noundef %34, ptr noundef %jack_kctl, ptr noundef nonnull @jack_type_fops) #8
  br label %snd_jack_debugfs_add_inject_node.exit

snd_jack_debugfs_add_inject_node.exit:            ; preds = %for.end.i, %if.end.i.snd_jack_debugfs_add_inject_node.exit_crit_edge, %list_add_tail.exit.snd_jack_debugfs_add_inject_node.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_jack_new(ptr noundef %card, ptr noundef %id, i32 noundef %type, ptr nocapture noundef writeonly %jjack, i1 noundef zeroext %initial_kctl, i1 noundef zeroext %phantom_jack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %initial_kctl, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @snd_kctl_jack_new(ptr noundef %id, ptr noundef %card) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.cleanup39_crit_edge, label %if.end.i

if.then.cleanup39_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @snd_ctl_add(ptr noundef %card, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  br i1 %cmp.i, label %if.end.i.cleanup39_crit_edge, label %if.end3.i

if.end.i.cleanup39_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

if.end3.i:                                        ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #11
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %error.i, label %snd_jack_kctl_new.exit

error.i:                                          ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @snd_ctl_free_one(ptr noundef nonnull %call.i) #8
  br label %cleanup39

snd_jack_kctl_new.exit:                           ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %call7.i.i.i, align 8
  %mask_bits.i = getelementptr inbounds %struct.snd_jack_kctl, ptr %call7.i.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %mask_bits.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %type, ptr %mask_bits.i, align 4
  %private_data.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i, i32 0, i32 8
  %3 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %private_data.i, align 4
  %private_free.i = getelementptr inbounds %struct.snd_kcontrol, ptr %call.i, i32 0, i32 9
  %4 = ptrtoint ptr %private_free.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @snd_jack_kctl_private_free, ptr %private_free.i, align 4
  br label %if.end4

if.end4:                                          ; preds = %snd_jack_kctl_new.exit, %entry.if.end4_crit_edge
  %jack_kctl.0 = phi ptr [ %call7.i.i.i, %snd_jack_kctl_new.exit ], [ null, %entry.if.end4_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 164) #11
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end4.cleanup39_crit_edge, label %if.end7

if.end4.cleanup39_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup39

if.end7:                                          ; preds = %if.end4
  %call8 = tail call noalias ptr @kstrdup(ptr noundef %id, i32 noundef 3264) #8
  %id9 = getelementptr inbounds %struct.snd_jack, ptr %call7.i.i, i32 0, i32 2
  %6 = ptrtoint ptr %id9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %id9, align 4
  %cmp11 = icmp eq ptr %call8, null
  br i1 %cmp11, label %if.then12, label %if.end13

if.then12:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup39

if.end13:                                         ; preds = %if.end7
  br i1 %phantom_jack, label %if.end13.if.end28_crit_edge, label %if.then15

if.end13.if.end28_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then15:                                        ; preds = %if.end13
  %call16 = tail call ptr @input_allocate_device() #8
  %input_dev = getelementptr inbounds %struct.snd_jack, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %input_dev to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call16, ptr %input_dev, align 8
  %cmp18 = icmp eq ptr %call16, null
  br i1 %cmp18, label %if.then15.fail_input_crit_edge, label %if.end20

if.then15.fail_input_crit_edge:                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_input

if.end20:                                         ; preds = %if.then15
  %phys = getelementptr inbounds %struct.input_dev, ptr %call16, i32 0, i32 1
  %8 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str, ptr %phys, align 4
  %type22 = getelementptr inbounds %struct.snd_jack, ptr %call7.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %type22 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %type, ptr %type22, align 8
  %and = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool24.not = icmp eq i32 %and, 0
  br i1 %tobool24.not, label %if.end20.for.inc_crit_edge, label %if.then25

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input_dev, align 8
  tail call void @input_set_capability(ptr noundef %11, i32 noundef 5, i32 noundef 2) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then25, %if.end20.for.inc_crit_edge
  %and.1 = and i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool24.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool24.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then25.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then25.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input_dev, align 8
  tail call void @input_set_capability(ptr noundef %13, i32 noundef 5, i32 noundef 4) #8
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then25.1, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool24.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool24.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then25.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.2

if.then25.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input_dev, align 8
  tail call void @input_set_capability(ptr noundef %15, i32 noundef 5, i32 noundef 6) #8
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then25.2, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %type, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool24.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool24.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then25.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.3

if.then25.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input_dev, align 8
  tail call void @input_set_capability(ptr noundef %17, i32 noundef 5, i32 noundef 7) #8
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then25.3, %for.inc.2.for.inc.3_crit_edge
  %and.4 = and i32 %type, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool24.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool24.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then25.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.4

if.then25.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %input_dev, align 8
  tail call void @input_set_capability(ptr noundef %19, i32 noundef 5, i32 noundef 8) #8
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then25.4, %for.inc.3.for.inc.4_crit_edge
  %and.5 = and i32 %type, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool24.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool24.not.5, label %for.inc.4.if.end28_crit_edge, label %if.then25.5

for.inc.4.if.end28_crit_edge:                     ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.then25.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input_dev, align 8
  tail call void @input_set_capability(ptr noundef %21, i32 noundef 5, i32 noundef 13) #8
  br label %if.end28

if.end28:                                         ; preds = %if.then25.5, %for.inc.4.if.end28_crit_edge, %if.end13.if.end28_crit_edge
  %call29 = tail call i32 @snd_device_new(ptr noundef %card, i32 noundef 10, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @snd_jack_new.ops) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %if.end28.fail_input_crit_edge, label %if.end32

if.end28.fail_input_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %fail_input

if.end32:                                         ; preds = %if.end28
  %card33 = getelementptr inbounds %struct.snd_jack, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %card33 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %card, ptr %card33, align 8
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %prev.i, align 4
  br i1 %initial_kctl, label %if.then35, label %if.end32.if.end36_crit_edge

if.end32.if.end36_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @snd_jack_kctl_add(ptr noundef nonnull %call7.i.i, ptr noundef %jack_kctl.0)
  br label %if.end36

if.end36:                                         ; preds = %if.then35, %if.end32.if.end36_crit_edge
  %25 = ptrtoint ptr %jjack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call7.i.i, ptr %jjack, align 4
  br label %cleanup39

fail_input:                                       ; preds = %if.end28.fail_input_crit_edge, %if.then15.fail_input_crit_edge
  %err.1 = phi i32 [ %call29, %if.end28.fail_input_crit_edge ], [ -12, %if.then15.fail_input_crit_edge ]
  %input_dev37 = getelementptr inbounds %struct.snd_jack, ptr %call7.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %input_dev37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %input_dev37, align 8
  tail call void @input_free_device(ptr noundef %27) #8
  %28 = ptrtoint ptr %id9 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %id9, align 4
  tail call void @kfree(ptr noundef %29) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup39

cleanup39:                                        ; preds = %fail_input, %if.end36, %if.then12, %if.end4.cleanup39_crit_edge, %error.i, %if.end.i.cleanup39_crit_edge, %if.then.cleanup39_crit_edge
  %retval.0 = phi i32 [ -12, %if.then12 ], [ %err.1, %fail_input ], [ 0, %if.end36 ], [ -12, %if.end4.cleanup39_crit_edge ], [ -12, %error.i ], [ -12, %if.then.cleanup39_crit_edge ], [ -12, %if.end.i.cleanup39_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_jack_dev_free(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %card1 = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 1
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %controls_rwsem = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 14
  tail call void @down_write(ptr noundef %controls_rwsem) #8
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %cmp.not32 = icmp eq ptr %5, %1
  br i1 %cmp.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del_init.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in33 = phi ptr [ %.pn, %list_del_init.exit.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %jack_kctl.0 = getelementptr i8, ptr %.pn.in33, i32 -4
  %6 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in33, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in33) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del_init.exit_crit_edge

for.body.list_del_init.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in33, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %for.body.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in33 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %.pn.in33, ptr %.pn.in33, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %.pn.in33, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %.pn.in33, ptr %prev.i3.i, align 4
  %15 = ptrtoint ptr %jack_kctl.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %jack_kctl.0, align 4
  %call = tail call i32 @snd_ctl_remove(ptr noundef %3, ptr noundef %16) #8
  %cmp.not = icmp eq ptr %.pn, %1
  br i1 %cmp.not, label %list_del_init.exit.for.end_crit_edge, label %list_del_init.exit.for.body_crit_edge

list_del_init.exit.for.body_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del_init.exit.for.end_crit_edge:             ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del_init.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @up_write(ptr noundef %controls_rwsem) #8
  %private_free = getelementptr inbounds %struct.snd_jack, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %private_free to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %private_free, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %for.end.if.end_crit_edge, label %if.then

for.end.if.end_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %18(ptr noundef %1) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.end.if.end_crit_edge
  %19 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device_data, align 4
  %input_dev.i = getelementptr inbounds %struct.snd_jack, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %input_dev.i, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.snd_jack_dev_disconnect.exit_crit_edge, label %if.end.i

if.end.snd_jack_dev_disconnect.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %snd_jack_dev_disconnect.exit

if.end.i:                                         ; preds = %if.end
  %registered.i = getelementptr inbounds %struct.snd_jack, ptr %20, i32 0, i32 4
  %23 = ptrtoint ptr %registered.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %registered.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool1.not.i = icmp eq i32 %24, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %22) #8
  br label %if.end5.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_free_device(ptr noundef nonnull %22) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then2.i
  %25 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %input_dev.i, align 4
  br label %snd_jack_dev_disconnect.exit

snd_jack_dev_disconnect.exit:                     ; preds = %if.end5.i, %if.end.snd_jack_dev_disconnect.exit_crit_edge
  %id = getelementptr inbounds %struct.snd_jack, ptr %1, i32 0, i32 2
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %id, align 4
  tail call void @kfree(ptr noundef %27) #8
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_jack_dev_register(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %card1 = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 1
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %name = getelementptr inbounds %struct.snd_jack, ptr %1, i32 0, i32 6
  %shortname = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 3
  %id = getelementptr inbounds %struct.snd_jack, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id, align 4
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %name, i32 noundef 100, ptr noundef nonnull @.str.31, ptr noundef %shortname, ptr noundef %5)
  %input_dev = getelementptr inbounds %struct.snd_jack, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input_dev, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.cleanup31_crit_edge, label %if.end

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %name, ptr %7, align 8
  %9 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %input_dev, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %10, i32 0, i32 40, i32 1
  %11 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent, align 8
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %if.then9, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not.i = icmp eq ptr %3, null
  %card_dev.i = getelementptr inbounds %struct.snd_card, ptr %3, i32 0, i32 28
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %card_dev.i
  %13 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %spec.select.i, ptr %parent, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.end.if.end14_crit_edge
  %type = getelementptr inbounds %struct.snd_jack, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %type, align 4
  %and = and i32 %15, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %arrayidx = getelementptr %struct.snd_jack, ptr %1, i32 0, i32 7, i32 0
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %if.then19, label %if.end17.if.end22_crit_edge

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then19:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 256, ptr %arrayidx, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then19, %if.end17.if.end22_crit_edge
  %19 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %input_dev, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  tail call void @input_set_capability(ptr noundef %20, i32 noundef 1, i32 noundef %22) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.end14.cleanup_crit_edge
  %23 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type, align 4
  %and.1 = and i32 %24, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool15.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool15.not.1, label %cleanup.cleanup.1_crit_edge, label %if.end17.1

cleanup.cleanup.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.1

if.end17.1:                                       ; preds = %cleanup
  %arrayidx.1 = getelementptr %struct.snd_jack, ptr %1, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool18.not.1 = icmp eq i32 %26, 0
  br i1 %tobool18.not.1, label %if.then19.1, label %if.end17.1.if.end22.1_crit_edge

if.end17.1.if.end22.1_crit_edge:                  ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.1

if.then19.1:                                      ; preds = %if.end17.1
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 257, ptr %arrayidx.1, align 4
  br label %if.end22.1

if.end22.1:                                       ; preds = %if.then19.1, %if.end17.1.if.end22.1_crit_edge
  %28 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %input_dev, align 4
  %30 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.1, align 4
  tail call void @input_set_capability(ptr noundef %29, i32 noundef 1, i32 noundef %31) #8
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.end22.1, %cleanup.cleanup.1_crit_edge
  %32 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %type, align 4
  %and.2 = and i32 %33, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool15.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool15.not.2, label %cleanup.1.cleanup.2_crit_edge, label %if.end17.2

cleanup.1.cleanup.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.2

if.end17.2:                                       ; preds = %cleanup.1
  %arrayidx.2 = getelementptr %struct.snd_jack, ptr %1, i32 0, i32 7, i32 2
  %34 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool18.not.2 = icmp eq i32 %35, 0
  br i1 %tobool18.not.2, label %if.then19.2, label %if.end17.2.if.end22.2_crit_edge

if.end17.2.if.end22.2_crit_edge:                  ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.2

if.then19.2:                                      ; preds = %if.end17.2
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 258, ptr %arrayidx.2, align 4
  br label %if.end22.2

if.end22.2:                                       ; preds = %if.then19.2, %if.end17.2.if.end22.2_crit_edge
  %37 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %input_dev, align 4
  %39 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.2, align 4
  tail call void @input_set_capability(ptr noundef %38, i32 noundef 1, i32 noundef %40) #8
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.end22.2, %cleanup.1.cleanup.2_crit_edge
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type, align 4
  %and.3 = and i32 %42, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool15.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool15.not.3, label %cleanup.2.cleanup.3_crit_edge, label %if.end17.3

cleanup.2.cleanup.3_crit_edge:                    ; preds = %cleanup.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.3

if.end17.3:                                       ; preds = %cleanup.2
  %arrayidx.3 = getelementptr %struct.snd_jack, ptr %1, i32 0, i32 7, i32 3
  %43 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool18.not.3 = icmp eq i32 %44, 0
  br i1 %tobool18.not.3, label %if.then19.3, label %if.end17.3.if.end22.3_crit_edge

if.end17.3.if.end22.3_crit_edge:                  ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.3

if.then19.3:                                      ; preds = %if.end17.3
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 259, ptr %arrayidx.3, align 4
  br label %if.end22.3

if.end22.3:                                       ; preds = %if.then19.3, %if.end17.3.if.end22.3_crit_edge
  %46 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %input_dev, align 4
  %48 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx.3, align 4
  tail call void @input_set_capability(ptr noundef %47, i32 noundef 1, i32 noundef %49) #8
  br label %cleanup.3

cleanup.3:                                        ; preds = %if.end22.3, %cleanup.2.cleanup.3_crit_edge
  %50 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %type, align 4
  %and.4 = and i32 %51, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool15.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool15.not.4, label %cleanup.3.cleanup.4_crit_edge, label %if.end17.4

cleanup.3.cleanup.4_crit_edge:                    ; preds = %cleanup.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.4

if.end17.4:                                       ; preds = %cleanup.3
  %arrayidx.4 = getelementptr %struct.snd_jack, ptr %1, i32 0, i32 7, i32 4
  %52 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool18.not.4 = icmp eq i32 %53, 0
  br i1 %tobool18.not.4, label %if.then19.4, label %if.end17.4.if.end22.4_crit_edge

if.end17.4.if.end22.4_crit_edge:                  ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.4

if.then19.4:                                      ; preds = %if.end17.4
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 260, ptr %arrayidx.4, align 4
  br label %if.end22.4

if.end22.4:                                       ; preds = %if.then19.4, %if.end17.4.if.end22.4_crit_edge
  %55 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %input_dev, align 4
  %57 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.4, align 4
  tail call void @input_set_capability(ptr noundef %56, i32 noundef 1, i32 noundef %58) #8
  br label %cleanup.4

cleanup.4:                                        ; preds = %if.end22.4, %cleanup.3.cleanup.4_crit_edge
  %59 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %type, align 4
  %and.5 = and i32 %60, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool15.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool15.not.5, label %cleanup.4.cleanup.5_crit_edge, label %if.end17.5

cleanup.4.cleanup.5_crit_edge:                    ; preds = %cleanup.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.5

if.end17.5:                                       ; preds = %cleanup.4
  %arrayidx.5 = getelementptr %struct.snd_jack, ptr %1, i32 0, i32 7, i32 5
  %61 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx.5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool18.not.5 = icmp eq i32 %62, 0
  br i1 %tobool18.not.5, label %if.then19.5, label %if.end17.5.if.end22.5_crit_edge

if.end17.5.if.end22.5_crit_edge:                  ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.5

if.then19.5:                                      ; preds = %if.end17.5
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 261, ptr %arrayidx.5, align 4
  br label %if.end22.5

if.end22.5:                                       ; preds = %if.then19.5, %if.end17.5.if.end22.5_crit_edge
  %64 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %input_dev, align 4
  %66 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.5, align 4
  tail call void @input_set_capability(ptr noundef %65, i32 noundef 1, i32 noundef %67) #8
  br label %cleanup.5

cleanup.5:                                        ; preds = %if.end22.5, %cleanup.4.cleanup.5_crit_edge
  %68 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %input_dev, align 4
  %call27 = tail call i32 @input_register_device(ptr noundef %69) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp eq i32 %call27, 0
  br i1 %cmp28, label %if.then29, label %cleanup.5.cleanup31_crit_edge

cleanup.5.cleanup31_crit_edge:                    ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup31

if.then29:                                        ; preds = %cleanup.5
  call void @__sanitizer_cov_trace_pc() #10
  %registered = getelementptr inbounds %struct.snd_jack, ptr %1, i32 0, i32 4
  %70 = ptrtoint ptr %registered to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 1, ptr %registered, align 4
  br label %cleanup31

cleanup31:                                        ; preds = %if.then29, %cleanup.5.cleanup31_crit_edge, %entry.cleanup31_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup31_crit_edge ], [ 0, %if.then29 ], [ %call27, %cleanup.5.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @snd_jack_dev_disconnect(ptr nocapture noundef readonly %device) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %device_data = getelementptr inbounds %struct.snd_device, ptr %device, i32 0, i32 4
  %0 = ptrtoint ptr %device_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device_data, align 4
  %input_dev = getelementptr inbounds %struct.snd_jack, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %registered = getelementptr inbounds %struct.snd_jack, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool1.not = icmp eq i32 %5, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_unregister_device(ptr noundef nonnull %3) #8
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @input_free_device(ptr noundef nonnull %3) #8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %6 = ptrtoint ptr %input_dev to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %input_dev, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_device_new(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_jack_set_parent(ptr nocapture noundef readonly %jack, ptr noundef %parent) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %registered = getelementptr inbounds %struct.snd_jack, ptr %jack, i32 0, i32 4
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 580, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %input_dev = getelementptr inbounds %struct.snd_jack, ptr %jack, i32 0, i32 3
  %2 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input_dev, align 4
  %tobool20.not = icmp eq ptr %3, null
  br i1 %tobool20.not, label %if.end.return_crit_edge, label %if.end22

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end22:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %parent24 = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, i32 1
  %4 = ptrtoint ptr %parent24 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %parent, ptr %parent24, align 8
  br label %return

return:                                           ; preds = %if.end22, %if.end.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_jack_set_key(ptr nocapture noundef %jack, i32 noundef %type, i32 noundef %keytype) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type)
  %tobool.not.i = icmp eq i32 %type, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %type, i1 true) #8, !range !102
  %sub.i.neg.op = add nsw i32 %0, -17
  %sub = select i1 %tobool.not.i, i32 15, i32 %sub.i.neg.op
  %registered = getelementptr inbounds %struct.snd_jack, ptr %jack, i32 0, i32 4
  %1 = ptrtoint ptr %registered to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %registered, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !101

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 618, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %keytype)
  %tobool21.not = icmp eq i32 %keytype, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %sub)
  %cmp = icmp ugt i32 %sub, 5
  %or.cond = select i1 %tobool21.not, i1 true, i1 %cmp
  br i1 %or.cond, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %type24 = getelementptr inbounds %struct.snd_jack, ptr %jack, i32 0, i32 5
  %3 = ptrtoint ptr %type24 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %type24, align 4
  %or = or i32 %4, %type
  store i32 %or, ptr %type24, align 4
  %arrayidx = getelementptr %struct.snd_jack, ptr %jack, i32 0, i32 7, i32 %sub
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %keytype, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @snd_jack_report(ptr noundef %jack, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %jack, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %hw_status_cache = getelementptr inbounds %struct.snd_jack, ptr %jack, i32 0, i32 8
  %0 = ptrtoint ptr %hw_status_cache to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %status, ptr %hw_status_cache, align 4
  %1 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn80 = load ptr, ptr %jack, align 4
  %cmp.not82 = icmp eq ptr %.pn80, %jack
  br i1 %cmp.not82, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %card = getelementptr inbounds %struct.snd_jack, ptr %jack, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn84 = phi ptr [ %.pn80, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %mask_bits.083 = phi i32 [ 0, %for.body.lr.ph ], [ %mask_bits.1, %for.inc.for.body_crit_edge ]
  %sw_inject_enable = getelementptr i8, ptr %.pn84, i32 16
  %2 = ptrtoint ptr %sw_inject_enable to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sw_inject_enable, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %mask_bits4 = getelementptr i8, ptr %.pn84, i32 8
  %4 = ptrtoint ptr %mask_bits4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask_bits4, align 4
  %or = or i32 %5, %mask_bits.083
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %jack_kctl.085 = getelementptr i8, ptr %.pn84, i32 -4
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %8 = ptrtoint ptr %jack_kctl.085 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %jack_kctl.085, align 4
  %mask_bits5 = getelementptr i8, ptr %.pn84, i32 8
  %10 = ptrtoint ptr %mask_bits5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask_bits5, align 4
  %and = and i32 %11, %status
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6 = icmp ne i32 %and, 0
  tail call void @snd_kctl_jack_report(ptr noundef %7, ptr noundef %9, i1 noundef zeroext %tobool6) #8
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then3
  %mask_bits.1 = phi i32 [ %or, %if.then3 ], [ %mask_bits.083, %if.else ]
  %12 = ptrtoint ptr %.pn84 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn84, align 4
  %cmp.not = icmp eq ptr %.pn, %jack
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %mask_bits.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %mask_bits.1, %for.inc.for.end_crit_edge ]
  %input_dev = getelementptr inbounds %struct.snd_jack, ptr %jack, i32 0, i32 3
  %13 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %input_dev, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %for.end.cleanup_crit_edge, label %for.cond16.preheader

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond16.preheader:                             ; preds = %for.end
  %neg = xor i32 %mask_bits.0.lcssa, -1
  %type = getelementptr inbounds %struct.snd_jack, ptr %jack, i32 0, i32 5
  %and19 = and i32 %neg, 16384
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %type, align 4
  %and20 = and i32 %16, %and19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %for.cond16.preheader.if.end25_crit_edge, label %if.then22

for.cond16.preheader.if.end25_crit_edge:          ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25

if.then22:                                        ; preds = %for.cond16.preheader
  call void @__sanitizer_cov_trace_pc() #10
  %17 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %input_dev, align 4
  %arrayidx = getelementptr %struct.snd_jack, ptr %jack, i32 0, i32 7, i32 0
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %and24 = and i32 %and19, %status
  %and24.lobit = lshr exact i32 %and24, 14
  tail call void @input_event(ptr noundef %18, i32 noundef 1, i32 noundef %20, i32 noundef %and24.lobit) #8
  br label %if.end25

if.end25:                                         ; preds = %if.then22, %for.cond16.preheader.if.end25_crit_edge
  %and19.1 = and i32 %neg, 8192
  %21 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %type, align 4
  %and20.1 = and i32 %22, %and19.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.1)
  %tobool21.not.1 = icmp eq i32 %and20.1, 0
  br i1 %tobool21.not.1, label %if.end25.if.end25.1_crit_edge, label %if.then22.1

if.end25.if.end25.1_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.1

if.then22.1:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input_dev, align 4
  %arrayidx.1 = getelementptr %struct.snd_jack, ptr %jack, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx.1, align 4
  %and24.1 = and i32 %and19.1, %status
  %and24.1.lobit = lshr exact i32 %and24.1, 13
  tail call void @input_event(ptr noundef %24, i32 noundef 1, i32 noundef %26, i32 noundef %and24.1.lobit) #8
  br label %if.end25.1

if.end25.1:                                       ; preds = %if.then22.1, %if.end25.if.end25.1_crit_edge
  %and19.2 = and i32 %neg, 4096
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  %and20.2 = and i32 %28, %and19.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.2)
  %tobool21.not.2 = icmp eq i32 %and20.2, 0
  br i1 %tobool21.not.2, label %if.end25.1.if.end25.2_crit_edge, label %if.then22.2

if.end25.1.if.end25.2_crit_edge:                  ; preds = %if.end25.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.2

if.then22.2:                                      ; preds = %if.end25.1
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input_dev, align 4
  %arrayidx.2 = getelementptr %struct.snd_jack, ptr %jack, i32 0, i32 7, i32 2
  %31 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.2, align 4
  %and24.2 = and i32 %and19.2, %status
  %and24.2.lobit = lshr exact i32 %and24.2, 12
  tail call void @input_event(ptr noundef %30, i32 noundef 1, i32 noundef %32, i32 noundef %and24.2.lobit) #8
  br label %if.end25.2

if.end25.2:                                       ; preds = %if.then22.2, %if.end25.1.if.end25.2_crit_edge
  %and19.3 = and i32 %neg, 2048
  %33 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %type, align 4
  %and20.3 = and i32 %34, %and19.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.3)
  %tobool21.not.3 = icmp eq i32 %and20.3, 0
  br i1 %tobool21.not.3, label %if.end25.2.if.end25.3_crit_edge, label %if.then22.3

if.end25.2.if.end25.3_crit_edge:                  ; preds = %if.end25.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.3

if.then22.3:                                      ; preds = %if.end25.2
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %input_dev, align 4
  %arrayidx.3 = getelementptr %struct.snd_jack, ptr %jack, i32 0, i32 7, i32 3
  %37 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.3, align 4
  %and24.3 = and i32 %and19.3, %status
  %and24.3.lobit = lshr exact i32 %and24.3, 11
  tail call void @input_event(ptr noundef %36, i32 noundef 1, i32 noundef %38, i32 noundef %and24.3.lobit) #8
  br label %if.end25.3

if.end25.3:                                       ; preds = %if.then22.3, %if.end25.2.if.end25.3_crit_edge
  %and19.4 = and i32 %neg, 1024
  %39 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type, align 4
  %and20.4 = and i32 %40, %and19.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.4)
  %tobool21.not.4 = icmp eq i32 %and20.4, 0
  br i1 %tobool21.not.4, label %if.end25.3.if.end25.4_crit_edge, label %if.then22.4

if.end25.3.if.end25.4_crit_edge:                  ; preds = %if.end25.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.4

if.then22.4:                                      ; preds = %if.end25.3
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %input_dev, align 4
  %arrayidx.4 = getelementptr %struct.snd_jack, ptr %jack, i32 0, i32 7, i32 4
  %43 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx.4, align 4
  %and24.4 = and i32 %and19.4, %status
  %and24.4.lobit = lshr exact i32 %and24.4, 10
  tail call void @input_event(ptr noundef %42, i32 noundef 1, i32 noundef %44, i32 noundef %and24.4.lobit) #8
  br label %if.end25.4

if.end25.4:                                       ; preds = %if.then22.4, %if.end25.3.if.end25.4_crit_edge
  %and19.5 = and i32 %neg, 512
  %45 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %type, align 4
  %and20.5 = and i32 %46, %and19.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20.5)
  %tobool21.not.5 = icmp eq i32 %and20.5, 0
  br i1 %tobool21.not.5, label %if.end25.4.if.end25.5_crit_edge, label %if.then22.5

if.end25.4.if.end25.5_crit_edge:                  ; preds = %if.end25.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end25.5

if.then22.5:                                      ; preds = %if.end25.4
  call void @__sanitizer_cov_trace_pc() #10
  %47 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %input_dev, align 4
  %arrayidx.5 = getelementptr %struct.snd_jack, ptr %jack, i32 0, i32 7, i32 5
  %49 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx.5, align 4
  %and24.5 = and i32 %and19.5, %status
  %and24.5.lobit = lshr exact i32 %and24.5, 9
  tail call void @input_event(ptr noundef %48, i32 noundef 1, i32 noundef %50, i32 noundef %and24.5.lobit) #8
  br label %if.end25.5

if.end25.5:                                       ; preds = %if.then22.5, %if.end25.4.if.end25.5_crit_edge
  %and33 = and i32 %neg, 1
  %51 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %type, align 4
  %and35 = and i32 %52, %and33
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end25.5.if.end41_crit_edge, label %if.then37

if.end25.5.if.end41_crit_edge:                    ; preds = %if.end25.5
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

if.then37:                                        ; preds = %if.end25.5
  call void @__sanitizer_cov_trace_pc() #10
  %53 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %input_dev, align 4
  %and40 = and i32 %and33, %status
  tail call void @input_event(ptr noundef %54, i32 noundef 5, i32 noundef 2, i32 noundef %and40) #8
  br label %if.end41

if.end41:                                         ; preds = %if.then37, %if.end25.5.if.end41_crit_edge
  %and33.1 = and i32 %neg, 2
  %55 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %type, align 4
  %and35.1 = and i32 %56, %and33.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.1)
  %tobool36.not.1 = icmp eq i32 %and35.1, 0
  br i1 %tobool36.not.1, label %if.end41.if.end41.1_crit_edge, label %if.then37.1

if.end41.if.end41.1_crit_edge:                    ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.1

if.then37.1:                                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %input_dev, align 4
  %and40.1 = and i32 %and33.1, %status
  %and40.1.lobit = lshr exact i32 %and40.1, 1
  tail call void @input_event(ptr noundef %58, i32 noundef 5, i32 noundef 4, i32 noundef %and40.1.lobit) #8
  br label %if.end41.1

if.end41.1:                                       ; preds = %if.then37.1, %if.end41.if.end41.1_crit_edge
  %and33.2 = and i32 %neg, 4
  %59 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %type, align 4
  %and35.2 = and i32 %60, %and33.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.2)
  %tobool36.not.2 = icmp eq i32 %and35.2, 0
  br i1 %tobool36.not.2, label %if.end41.1.if.end41.2_crit_edge, label %if.then37.2

if.end41.1.if.end41.2_crit_edge:                  ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.2

if.then37.2:                                      ; preds = %if.end41.1
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %input_dev, align 4
  %and40.2 = and i32 %and33.2, %status
  %and40.2.lobit = lshr exact i32 %and40.2, 2
  tail call void @input_event(ptr noundef %62, i32 noundef 5, i32 noundef 6, i32 noundef %and40.2.lobit) #8
  br label %if.end41.2

if.end41.2:                                       ; preds = %if.then37.2, %if.end41.1.if.end41.2_crit_edge
  %and33.3 = and i32 %neg, 8
  %63 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %type, align 4
  %and35.3 = and i32 %64, %and33.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.3)
  %tobool36.not.3 = icmp eq i32 %and35.3, 0
  br i1 %tobool36.not.3, label %if.end41.2.if.end41.3_crit_edge, label %if.then37.3

if.end41.2.if.end41.3_crit_edge:                  ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.3

if.then37.3:                                      ; preds = %if.end41.2
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %input_dev, align 4
  %and40.3 = and i32 %and33.3, %status
  %and40.3.lobit = lshr exact i32 %and40.3, 3
  tail call void @input_event(ptr noundef %66, i32 noundef 5, i32 noundef 7, i32 noundef %and40.3.lobit) #8
  br label %if.end41.3

if.end41.3:                                       ; preds = %if.then37.3, %if.end41.2.if.end41.3_crit_edge
  %and33.4 = and i32 %neg, 16
  %67 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %type, align 4
  %and35.4 = and i32 %68, %and33.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.4)
  %tobool36.not.4 = icmp eq i32 %and35.4, 0
  br i1 %tobool36.not.4, label %if.end41.3.if.end41.4_crit_edge, label %if.then37.4

if.end41.3.if.end41.4_crit_edge:                  ; preds = %if.end41.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.4

if.then37.4:                                      ; preds = %if.end41.3
  call void @__sanitizer_cov_trace_pc() #10
  %69 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %input_dev, align 4
  %and40.4 = and i32 %and33.4, %status
  %and40.4.lobit = lshr exact i32 %and40.4, 4
  tail call void @input_event(ptr noundef %70, i32 noundef 5, i32 noundef 8, i32 noundef %and40.4.lobit) #8
  br label %if.end41.4

if.end41.4:                                       ; preds = %if.then37.4, %if.end41.3.if.end41.4_crit_edge
  %and33.5 = and i32 %neg, 32
  %71 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %type, align 4
  %and35.5 = and i32 %72, %and33.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35.5)
  %tobool36.not.5 = icmp eq i32 %and35.5, 0
  br i1 %tobool36.not.5, label %if.end41.4.if.end41.5_crit_edge, label %if.then37.5

if.end41.4.if.end41.5_crit_edge:                  ; preds = %if.end41.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.5

if.then37.5:                                      ; preds = %if.end41.4
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %input_dev, align 4
  %and40.5 = and i32 %and33.5, %status
  %and40.5.lobit = lshr exact i32 %and40.5, 5
  tail call void @input_event(ptr noundef %74, i32 noundef 5, i32 noundef 13, i32 noundef %and40.5.lobit) #8
  br label %if.end41.5

if.end41.5:                                       ; preds = %if.then37.5, %if.end41.4.if.end41.5_crit_edge
  %75 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %input_dev, align 4
  tail call void @input_event(ptr noundef %76, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end41.5, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_kctl_jack_report(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @snd_kctl_jack_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @snd_jack_kctl_private_free(ptr nocapture noundef readonly %kctl) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.snd_kcontrol, ptr %kctl, i32 0, i32 8
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %jack_debugfs_root.i = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %jack_debugfs_root.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jack_debugfs_root.i, align 4
  tail call void @debugfs_remove(ptr noundef %3) #8
  %4 = ptrtoint ptr %jack_debugfs_root.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %jack_debugfs_root.i, align 4
  %list = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #8
  br label %if.end

if.end:                                           ; preds = %list_del.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_ctl_free_one(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @default_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sw_inject_enable_read(ptr nocapture noundef readonly %file, ptr noundef %to, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 128)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %4, i32 0, i32 1, i32 4
  %sw_inject_enable = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %sw_inject_enable to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sw_inject_enable, align 4, !range !103
  %7 = zext i8 %6 to i32
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 128, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef %name, ptr noundef nonnull @.str.11, i32 noundef %7) #8
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %to, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %buf) #8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sw_inject_enable_write(ptr nocapture noundef readonly %file, ptr noundef %from, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %enable = alloca i32, align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #8
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %enable, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 7, ptr noundef %ppos, ptr noundef %from, i32 noundef %count) #8
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %sw_inject_enable = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sw_inject_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sw_inject_enable, align 4, !range !103
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4 = icmp ne i32 %7, 0
  %8 = zext i1 %tobool4 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %8)
  %cmp = icmp eq i8 %5, %8
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %9 = ptrtoint ptr %sw_inject_enable to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %sw_inject_enable, align 4
  br i1 %tobool4, label %if.end8.cleanup_crit_edge, label %if.then17

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then17:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %jack = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jack, align 4
  %hw_status_cache = getelementptr inbounds %struct.snd_jack, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %hw_status_cache to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %hw_status_cache, align 4
  call void @snd_jack_report(ptr noundef %11, i32 noundef %13)
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %call, %if.then17 ], [ %call, %if.end8.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_open(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_read_from_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_write_to_buffer(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jackin_inject_write(ptr nocapture noundef readonly %file, ptr noundef %from, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %enable = alloca i32, align 4
  %buf = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #8
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %enable, align 4, !annotation !104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %buf) #8
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %buf, align 8
  %sw_inject_enable = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %sw_inject_enable to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sw_inject_enable, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @simple_write_to_buffer(ptr noundef nonnull %buf, i32 noundef 7, ptr noundef %ppos, ptr noundef %from, i32 noundef %count) #8
  %call.i = call i32 @_kstrtoul(ptr noundef nonnull %buf, i32 noundef 0, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %if.end5.cond.end_crit_edge, label %cond.true

if.end5.cond.end_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %mask_bits = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %mask_bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask_bits, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end5.cond.end_crit_edge
  %cond = phi i32 [ %9, %cond.true ], [ 0, %if.end5.cond.end_crit_edge ]
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %cond.end.cleanup_crit_edge, label %if.end.i

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %cond.end
  %jack1.i = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %jack1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jack1.i, align 4
  %12 = ptrtoint ptr %sw_inject_enable to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sw_inject_enable, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool2.not.i = icmp eq i8 %13, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %card.i = getelementptr inbounds %struct.snd_jack, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %card.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %mask_bits.i = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %mask_bits.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask_bits.i, align 4
  %and.i = and i32 %19, %cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.i = icmp ne i32 %and.i, 0
  call void @snd_kctl_jack_report(ptr noundef %15, ptr noundef %17, i1 noundef zeroext %tobool4.i) #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %if.end.i.if.end5.i_crit_edge
  %input_dev.i = getelementptr inbounds %struct.snd_jack, ptr %11, i32 0, i32 3
  %20 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input_dev.i, align 4
  %tobool6.not.i = icmp eq ptr %21, null
  br i1 %tobool6.not.i, label %if.end5.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end5.i
  %mask_bits9.i = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 2
  %type.i = getelementptr inbounds %struct.snd_jack, ptr %11, i32 0, i32 5
  %22 = ptrtoint ptr %mask_bits9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask_bits9.i, align 4
  %and10.i = and i32 %23, 16384
  %24 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %type.i, align 4
  %and11.i = and i32 %25, %and10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.i)
  %tobool12.not.i = icmp eq i32 %and11.i, 0
  br i1 %tobool12.not.i, label %for.cond.preheader.i.if.end16.i_crit_edge, label %if.then13.i

for.cond.preheader.i.if.end16.i_crit_edge:        ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then13.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.i = getelementptr %struct.snd_jack, ptr %11, i32 0, i32 7, i32 0
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.i, align 4
  %and15.i = and i32 %and10.i, %cond
  %and15.lobit.i = lshr exact i32 %and15.i, 14
  call void @input_event(ptr noundef nonnull %21, i32 noundef 1, i32 noundef %27, i32 noundef %and15.lobit.i) #8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then13.i, %for.cond.preheader.i.if.end16.i_crit_edge
  %28 = ptrtoint ptr %mask_bits9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask_bits9.i, align 4
  %and10.1.i = and i32 %29, 8192
  %30 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %type.i, align 4
  %and11.1.i = and i32 %31, %and10.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.1.i)
  %tobool12.not.1.i = icmp eq i32 %and11.1.i, 0
  br i1 %tobool12.not.1.i, label %if.end16.i.if.end16.1.i_crit_edge, label %if.then13.1.i

if.end16.i.if.end16.1.i_crit_edge:                ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.1.i

if.then13.1.i:                                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %input_dev.i, align 4
  %arrayidx.1.i = getelementptr %struct.snd_jack, ptr %11, i32 0, i32 7, i32 1
  %34 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.1.i, align 4
  %and15.1.i = and i32 %and10.1.i, %cond
  %and15.1.lobit.i = lshr exact i32 %and15.1.i, 13
  call void @input_event(ptr noundef %33, i32 noundef 1, i32 noundef %35, i32 noundef %and15.1.lobit.i) #8
  br label %if.end16.1.i

if.end16.1.i:                                     ; preds = %if.then13.1.i, %if.end16.i.if.end16.1.i_crit_edge
  %36 = ptrtoint ptr %mask_bits9.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %mask_bits9.i, align 4
  %and10.2.i = and i32 %37, 4096
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i, align 4
  %and11.2.i = and i32 %39, %and10.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.2.i)
  %tobool12.not.2.i = icmp eq i32 %and11.2.i, 0
  br i1 %tobool12.not.2.i, label %if.end16.1.i.if.end16.2.i_crit_edge, label %if.then13.2.i

if.end16.1.i.if.end16.2.i_crit_edge:              ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.2.i

if.then13.2.i:                                    ; preds = %if.end16.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %input_dev.i, align 4
  %arrayidx.2.i = getelementptr %struct.snd_jack, ptr %11, i32 0, i32 7, i32 2
  %42 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx.2.i, align 4
  %and15.2.i = and i32 %and10.2.i, %cond
  %and15.2.lobit.i = lshr exact i32 %and15.2.i, 12
  call void @input_event(ptr noundef %41, i32 noundef 1, i32 noundef %43, i32 noundef %and15.2.lobit.i) #8
  br label %if.end16.2.i

if.end16.2.i:                                     ; preds = %if.then13.2.i, %if.end16.1.i.if.end16.2.i_crit_edge
  %44 = ptrtoint ptr %mask_bits9.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mask_bits9.i, align 4
  %and10.3.i = and i32 %45, 2048
  %46 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %type.i, align 4
  %and11.3.i = and i32 %47, %and10.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.3.i)
  %tobool12.not.3.i = icmp eq i32 %and11.3.i, 0
  br i1 %tobool12.not.3.i, label %if.end16.2.i.if.end16.3.i_crit_edge, label %if.then13.3.i

if.end16.2.i.if.end16.3.i_crit_edge:              ; preds = %if.end16.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.3.i

if.then13.3.i:                                    ; preds = %if.end16.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input_dev.i, align 4
  %arrayidx.3.i = getelementptr %struct.snd_jack, ptr %11, i32 0, i32 7, i32 3
  %50 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.3.i, align 4
  %and15.3.i = and i32 %and10.3.i, %cond
  %and15.3.lobit.i = lshr exact i32 %and15.3.i, 11
  call void @input_event(ptr noundef %49, i32 noundef 1, i32 noundef %51, i32 noundef %and15.3.lobit.i) #8
  br label %if.end16.3.i

if.end16.3.i:                                     ; preds = %if.then13.3.i, %if.end16.2.i.if.end16.3.i_crit_edge
  %52 = ptrtoint ptr %mask_bits9.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mask_bits9.i, align 4
  %and10.4.i = and i32 %53, 1024
  %54 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %type.i, align 4
  %and11.4.i = and i32 %55, %and10.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.4.i)
  %tobool12.not.4.i = icmp eq i32 %and11.4.i, 0
  br i1 %tobool12.not.4.i, label %if.end16.3.i.if.end16.4.i_crit_edge, label %if.then13.4.i

if.end16.3.i.if.end16.4.i_crit_edge:              ; preds = %if.end16.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.4.i

if.then13.4.i:                                    ; preds = %if.end16.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %input_dev.i, align 4
  %arrayidx.4.i = getelementptr %struct.snd_jack, ptr %11, i32 0, i32 7, i32 4
  %58 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.4.i, align 4
  %and15.4.i = and i32 %and10.4.i, %cond
  %and15.4.lobit.i = lshr exact i32 %and15.4.i, 10
  call void @input_event(ptr noundef %57, i32 noundef 1, i32 noundef %59, i32 noundef %and15.4.lobit.i) #8
  br label %if.end16.4.i

if.end16.4.i:                                     ; preds = %if.then13.4.i, %if.end16.3.i.if.end16.4.i_crit_edge
  %60 = ptrtoint ptr %mask_bits9.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %mask_bits9.i, align 4
  %and10.5.i = and i32 %61, 512
  %62 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %type.i, align 4
  %and11.5.i = and i32 %63, %and10.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11.5.i)
  %tobool12.not.5.i = icmp eq i32 %and11.5.i, 0
  br i1 %tobool12.not.5.i, label %if.end16.4.i.if.end16.5.i_crit_edge, label %if.then13.5.i

if.end16.4.i.if.end16.5.i_crit_edge:              ; preds = %if.end16.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.5.i

if.then13.5.i:                                    ; preds = %if.end16.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %input_dev.i, align 4
  %arrayidx.5.i = getelementptr %struct.snd_jack, ptr %11, i32 0, i32 7, i32 5
  %66 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.5.i, align 4
  %and15.5.i = and i32 %and10.5.i, %cond
  %and15.5.lobit.i = lshr exact i32 %and15.5.i, 9
  call void @input_event(ptr noundef %65, i32 noundef 1, i32 noundef %67, i32 noundef %and15.5.lobit.i) #8
  br label %if.end16.5.i

if.end16.5.i:                                     ; preds = %if.then13.5.i, %if.end16.4.i.if.end16.5.i_crit_edge
  %68 = ptrtoint ptr %mask_bits9.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mask_bits9.i, align 4
  %and22.i = and i32 %69, 1
  %70 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type.i, align 4
  %and24.i = and i32 %71, %and22.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  br i1 %tobool25.not.i, label %if.end16.5.i.if.end30.i_crit_edge, label %if.then26.i

if.end16.5.i.if.end30.i_crit_edge:                ; preds = %if.end16.5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.i

if.then26.i:                                      ; preds = %if.end16.5.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %input_dev.i, align 4
  %and29.i = and i32 %and22.i, %cond
  call void @input_event(ptr noundef %73, i32 noundef 5, i32 noundef 2, i32 noundef %and29.i) #8
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then26.i, %if.end16.5.i.if.end30.i_crit_edge
  %74 = ptrtoint ptr %mask_bits9.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mask_bits9.i, align 4
  %and22.1.i = and i32 %75, 2
  %76 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %type.i, align 4
  %and24.1.i = and i32 %77, %and22.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.1.i)
  %tobool25.not.1.i = icmp eq i32 %and24.1.i, 0
  br i1 %tobool25.not.1.i, label %if.end30.i.if.end30.1.i_crit_edge, label %if.then26.1.i

if.end30.i.if.end30.1.i_crit_edge:                ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.1.i

if.then26.1.i:                                    ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %input_dev.i, align 4
  %and29.1.i = and i32 %and22.1.i, %cond
  %and29.1.lobit.i = lshr exact i32 %and29.1.i, 1
  call void @input_event(ptr noundef %79, i32 noundef 5, i32 noundef 4, i32 noundef %and29.1.lobit.i) #8
  br label %if.end30.1.i

if.end30.1.i:                                     ; preds = %if.then26.1.i, %if.end30.i.if.end30.1.i_crit_edge
  %80 = ptrtoint ptr %mask_bits9.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mask_bits9.i, align 4
  %and22.2.i = and i32 %81, 4
  %82 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %type.i, align 4
  %and24.2.i = and i32 %83, %and22.2.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.2.i)
  %tobool25.not.2.i = icmp eq i32 %and24.2.i, 0
  br i1 %tobool25.not.2.i, label %if.end30.1.i.if.end30.2.i_crit_edge, label %if.then26.2.i

if.end30.1.i.if.end30.2.i_crit_edge:              ; preds = %if.end30.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.2.i

if.then26.2.i:                                    ; preds = %if.end30.1.i
  call void @__sanitizer_cov_trace_pc() #10
  %84 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %input_dev.i, align 4
  %and29.2.i = and i32 %and22.2.i, %cond
  %and29.2.lobit.i = lshr exact i32 %and29.2.i, 2
  call void @input_event(ptr noundef %85, i32 noundef 5, i32 noundef 6, i32 noundef %and29.2.lobit.i) #8
  br label %if.end30.2.i

if.end30.2.i:                                     ; preds = %if.then26.2.i, %if.end30.1.i.if.end30.2.i_crit_edge
  %86 = ptrtoint ptr %mask_bits9.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mask_bits9.i, align 4
  %and22.3.i = and i32 %87, 8
  %88 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type.i, align 4
  %and24.3.i = and i32 %89, %and22.3.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.3.i)
  %tobool25.not.3.i = icmp eq i32 %and24.3.i, 0
  br i1 %tobool25.not.3.i, label %if.end30.2.i.if.end30.3.i_crit_edge, label %if.then26.3.i

if.end30.2.i.if.end30.3.i_crit_edge:              ; preds = %if.end30.2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.3.i

if.then26.3.i:                                    ; preds = %if.end30.2.i
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %input_dev.i, align 4
  %and29.3.i = and i32 %and22.3.i, %cond
  %and29.3.lobit.i = lshr exact i32 %and29.3.i, 3
  call void @input_event(ptr noundef %91, i32 noundef 5, i32 noundef 7, i32 noundef %and29.3.lobit.i) #8
  br label %if.end30.3.i

if.end30.3.i:                                     ; preds = %if.then26.3.i, %if.end30.2.i.if.end30.3.i_crit_edge
  %92 = ptrtoint ptr %mask_bits9.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %mask_bits9.i, align 4
  %and22.4.i = and i32 %93, 16
  %94 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %type.i, align 4
  %and24.4.i = and i32 %95, %and22.4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.4.i)
  %tobool25.not.4.i = icmp eq i32 %and24.4.i, 0
  br i1 %tobool25.not.4.i, label %if.end30.3.i.if.end30.4.i_crit_edge, label %if.then26.4.i

if.end30.3.i.if.end30.4.i_crit_edge:              ; preds = %if.end30.3.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.4.i

if.then26.4.i:                                    ; preds = %if.end30.3.i
  call void @__sanitizer_cov_trace_pc() #10
  %96 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %input_dev.i, align 4
  %and29.4.i = and i32 %and22.4.i, %cond
  %and29.4.lobit.i = lshr exact i32 %and29.4.i, 4
  call void @input_event(ptr noundef %97, i32 noundef 5, i32 noundef 8, i32 noundef %and29.4.lobit.i) #8
  br label %if.end30.4.i

if.end30.4.i:                                     ; preds = %if.then26.4.i, %if.end30.3.i.if.end30.4.i_crit_edge
  %98 = ptrtoint ptr %mask_bits9.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mask_bits9.i, align 4
  %and22.5.i = and i32 %99, 32
  %100 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %type.i, align 4
  %and24.5.i = and i32 %101, %and22.5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.5.i)
  %tobool25.not.5.i = icmp eq i32 %and24.5.i, 0
  br i1 %tobool25.not.5.i, label %if.end30.4.i.if.end30.5.i_crit_edge, label %if.then26.5.i

if.end30.4.i.if.end30.5.i_crit_edge:              ; preds = %if.end30.4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30.5.i

if.then26.5.i:                                    ; preds = %if.end30.4.i
  call void @__sanitizer_cov_trace_pc() #10
  %102 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %input_dev.i, align 4
  %and29.5.i = and i32 %and22.5.i, %cond
  %and29.5.lobit.i = lshr exact i32 %and29.5.i, 5
  call void @input_event(ptr noundef %103, i32 noundef 5, i32 noundef 13, i32 noundef %and29.5.lobit.i) #8
  br label %if.end30.5.i

if.end30.5.i:                                     ; preds = %if.then26.5.i, %if.end30.4.i.if.end30.5.i_crit_edge
  %104 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %input_dev.i, align 4
  call void @input_event(ptr noundef %105, i32 noundef 0, i32 noundef 0, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end30.5.i, %if.end5.i.cleanup_crit_edge, %cond.end.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call.i, %if.end.cleanup_crit_edge ], [ %call, %cond.end.cleanup_crit_edge ], [ %call, %if.end5.i.cleanup_crit_edge ], [ %call, %if.end30.5.i ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %buf) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jack_kctl_id_read(ptr nocapture noundef readonly %file, ptr noundef %to, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 64)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %name = getelementptr inbounds %struct.snd_kcontrol, ptr %4, i32 0, i32 1, i32 4
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 64, ptr noundef nonnull @.str.12, ptr noundef %name) #8
  %call3 = call i32 @simple_read_from_buffer(ptr noundef %to, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf) #8
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jack_kctl_mask_bits_read(ptr nocapture noundef readonly %file, ptr noundef %to, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %mask_bits = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %mask_bits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mask_bits, align 4
  %call = call fastcc i32 @parse_mask_bits(i32 noundef %4, ptr noundef nonnull %buf)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %to, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_mask_bits(i32 noundef %mask_bits, ptr noundef %buf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 256, ptr noundef nonnull @.str.13, i32 noundef %mask_bits) #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.01 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.01
  %and = and i32 %shl, %mask_bits
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 @strlcat(ptr noundef %buf, ptr noundef nonnull @.str.14, i32 noundef 256) #8
  %arrayidx = getelementptr [16 x ptr], ptr @jack_events_name, i32 0, i32 %i.01
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call2 = tail call i32 @strlcat(ptr noundef %buf, ptr noundef %1, i32 noundef 256) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.01, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 @strlcat(ptr noundef %buf, ptr noundef nonnull @.str.15, i32 noundef 256) #8
  %call4 = tail call i32 @strlen(ptr noundef %buf) #12
  ret i32 %call4
}

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jack_kctl_status_read(ptr nocapture noundef readonly %file, ptr noundef %to, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 16)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %private_value = getelementptr inbounds %struct.snd_kcontrol, ptr %4, i32 0, i32 7
  %5 = ptrtoint ptr %private_value to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %private_value, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %cond = select i1 %tobool.not, ptr @.str.30, ptr @.str.29
  %call = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %buf, i32 noundef 16, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond) #8
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %to, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jack_type_read(ptr nocapture noundef readonly %file, ptr noundef %to, i32 noundef %count, ptr noundef %ppos) #0 align 64 {
entry:
  %buf = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %buf) #8
  %2 = call ptr @memset(ptr %buf, i32 255, i32 256)
  %jack = getelementptr inbounds %struct.snd_jack_kctl, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %jack, align 4
  %type = getelementptr inbounds %struct.snd_jack, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %type, align 4
  %call = call fastcc i32 @parse_mask_bits(i32 noundef %6, ptr noundef nonnull %buf)
  %call2 = call i32 @simple_read_from_buffer(ptr noundef %to, i32 noundef %count, ptr noundef %ppos, ptr noundef nonnull %buf, i32 noundef %call) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %buf) #8
  ret i32 %call2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_ctl_remove(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__ksymtab_snd_jack_add_new_kctl, !1, !"__ksymtab_snd_jack_add_new_kctl", i1 false, i1 false}
!1 = !{!"../sound/core/jack.c", i32 473, i32 1}
!2 = !{ptr @snd_jack_new.ops, !3, !"ops", i1 false, i1 false}
!3 = !{!"../sound/core/jack.c", i32 496, i32 37}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/core/jack.c", i32 531, i32 27}
!6 = !{ptr @__ksymtab_snd_jack_new, !7, !"__ksymtab_snd_jack_new", i1 false, i1 false}
!7 = !{!"../sound/core/jack.c", i32 565, i32 1}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/core/jack.c", i32 580, i32 2}
!10 = !{ptr @__ksymtab_snd_jack_set_parent, !11, !"__ksymtab_snd_jack_set_parent", i1 false, i1 false}
!11 = !{!"../sound/core/jack.c", i32 586, i32 1}
!12 = !{ptr @__ksymtab_snd_jack_set_key, !13, !"__ksymtab_snd_jack_set_key", i1 false, i1 false}
!13 = !{!"../sound/core/jack.c", i32 627, i32 1}
!14 = !{ptr @__ksymtab_snd_jack_report, !15, !"__ksymtab_snd_jack_report", i1 false, i1 false}
!15 = !{!"../sound/core/jack.c", i32 680, i32 1}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/core/jack.c", i32 347, i32 39}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/core/jack.c", i32 362, i32 22}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/core/jack.c", i32 365, i32 22}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/core/jack.c", i32 368, i32 22}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/core/jack.c", i32 371, i32 22}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/core/jack.c", i32 374, i32 22}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/core/jack.c", i32 378, i32 22}
!30 = !{ptr @sw_inject_enable_fops, !31, !"sw_inject_enable_fops", i1 false, i1 false}
!31 = !{!"../sound/core/jack.c", i32 309, i32 37}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/core/jack.c", i32 171, i32 36}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/core/jack.c", i32 171, i32 58}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/core/jack.c", i32 172, i32 4}
!38 = !{ptr @jackin_inject_fops, !39, !"jackin_inject_fops", i1 false, i1 false}
!39 = !{!"../sound/core/jack.c", i32 316, i32 37}
!40 = !{ptr @jack_kctl_id_fops, !41, !"jack_kctl_id_fops", i1 false, i1 false}
!41 = !{!"../sound/core/jack.c", i32 322, i32 37}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/core/jack.c", i32 230, i32 36}
!44 = !{ptr @jack_kctl_mask_bits_fops, !45, !"jack_kctl_mask_bits_fops", i1 false, i1 false}
!45 = !{!"../sound/core/jack.c", i32 328, i32 37}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/core/jack.c", i32 249, i32 27}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/core/jack.c", i32 253, i32 17}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/core/jack.c", i32 256, i32 15}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/core/jack.c", i32 238, i32 2}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/core/jack.c", i32 238, i32 23}
!56 = !{ptr @.str.18, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/core/jack.c", i32 238, i32 45}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/core/jack.c", i32 239, i32 2}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/core/jack.c", i32 239, i32 24}
!62 = !{ptr @.str.21, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../sound/core/jack.c", i32 239, i32 44}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/core/jack.c", i32 240, i32 2}
!66 = !{ptr @.str.23, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../sound/core/jack.c", i32 240, i32 14}
!68 = !{ptr @.str.24, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../sound/core/jack.c", i32 240, i32 31}
!70 = !{ptr @.str.25, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/core/jack.c", i32 240, i32 48}
!72 = !{ptr @.str.26, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../sound/core/jack.c", i32 241, i32 2}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../sound/core/jack.c", i32 241, i32 19}
!76 = !{ptr @.str.28, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/core/jack.c", i32 241, i32 36}
!78 = !{ptr @jack_events_name, !79, !"jack_events_name", i1 false, i1 false}
!79 = !{!"../sound/core/jack.c", i32 237, i32 27}
!80 = !{ptr @jack_kctl_status_fops, !81, !"jack_kctl_status_fops", i1 false, i1 false}
!81 = !{!"../sound/core/jack.c", i32 334, i32 37}
!82 = !{ptr @.str.29, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/core/jack.c", i32 282, i32 4}
!84 = !{ptr @.str.30, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../sound/core/jack.c", i32 282, i32 16}
!86 = !{ptr @jack_type_fops, !87, !"jack_type_fops", i1 false, i1 false}
!87 = !{!"../sound/core/jack.c", i32 302, i32 37}
!88 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/core/jack.c", i32 90, i32 43}
!90 = distinct !{null, !91, !"jack_switch_types", i1 false, i1 false}
!91 = !{!"../sound/core/jack.c", i32 30, i32 18}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!101 = !{!"branch_weights", i32 2000, i32 1}
!102 = !{i32 0, i32 33}
!103 = !{i8 0, i8 2}
!104 = !{!"auto-init"}
