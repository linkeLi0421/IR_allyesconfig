; ModuleID = '/llk/IR_all_yes/drivers/input/misc/uinput.c_pt.bc'
source_filename = "../drivers/input/misc/uinput.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.miscdevice = type { i32, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i16 }
%struct.list_head = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.input_event = type { i32, i32, i16, i16, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.uinput_device = type { ptr, %struct.mutex, i32, %struct.wait_queue_head, i8, i8, i8, [16 x %struct.input_event], i32, [16 x ptr], %struct.wait_queue_head, %struct.spinlock }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.uinput_user_dev = type { [80 x i8], %struct.input_id, i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32] }
%struct.input_absinfo = type { i32, i32, i32, i32, i32, i32 }
%struct.uinput_setup = type { %struct.input_id, [80 x i8], i32 }
%struct.uinput_abs_setup = type { i16, %struct.input_absinfo }
%struct.uinput_ff_upload = type { i32, i32, %struct.ff_effect, %struct.ff_effect }
%struct.ff_effect = type { i16, i16, i16, %struct.ff_trigger, %struct.ff_replay, %union.anon.71 }
%struct.ff_trigger = type { i16, i16 }
%struct.ff_replay = type { i16, i16 }
%union.anon.71 = type { %struct.ff_periodic_effect }
%struct.ff_periodic_effect = type { i16, i16, i16, i16, i16, %struct.ff_envelope, i32, ptr }
%struct.ff_envelope = type { i16, i16, i16, i16 }
%struct.uinput_ff_erase = type { i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.ff_device = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [4 x i32], %struct.mutex, i32, ptr, [0 x ptr] }
%struct.uinput_request = type { i32, i32, i32, %struct.completion, %union.anon.72 }
%union.anon.72 = type { %struct.anon.73 }
%struct.anon.73 = type { ptr, ptr }
%struct.timespec64 = type { i64, i32 }

@__initcall__kmod_uinput__225_1095_uinput_misc_init6 = internal global ptr @uinput_misc_init, section ".initcall6.init", align 4
@uinput_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 223, ptr @.str, ptr @uinput_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_uinput_misc_exit = internal global ptr @uinput_misc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias226 = internal constant [31 x i8] c"uinput.alias=char-major-10-223\00", section ".modinfo", align 1
@__UNIQUE_ID_alias227 = internal constant [28 x i8] c"uinput.alias=devname:uinput\00", section ".modinfo", align 1
@__UNIQUE_ID_author228 = internal constant [44 x i8] c"uinput.author=Aristeu Sergio Rozanski Filho\00", section ".modinfo", align 1
@__UNIQUE_ID_description229 = internal constant [65 x i8] c"uinput.description=User level driver support for input subsystem\00", section ".modinfo", align 1
@__UNIQUE_ID_file230 = internal constant [38 x i8] c"uinput.file=drivers/input/misc/uinput\00", section ".modinfo", align 1
@__UNIQUE_ID_license231 = internal constant [19 x i8] c"uinput.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uinput\00", [25 x i8] zeroinitializer }, align 32
@uinput_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @uinput_read, ptr @uinput_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @uinput_poll, ptr @uinput_ioctl, ptr null, ptr null, i32 0, ptr @uinput_open, ptr null, ptr @uinput_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/input/misc/uinput.c\00", [36 x i8] zeroinitializer }, align 32
@uinput_validate_absinfo._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.1, i32 408, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s: invalid abs[%02x] min:%d max:%d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"uinput_validate_absinfo\00", [40 x i8] zeroinitializer }, align 32
@uinput_validate_absinfo._entry_ptr = internal global ptr @uinput_validate_absinfo._entry, section ".printk_index", align 4
@uinput_validate_absinfo._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str.1, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s: abs_flat #%02x out of range: %d (min:%d/max:%d)\0A\00", [41 x i8] zeroinitializer }, align 32
@uinput_validate_absinfo._entry_ptr.6 = internal global ptr @uinput_validate_absinfo._entry.4, section ".printk_index", align 4
@uinput_create_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.1, i32 314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017%s: write device info first\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"uinput_create_device\00", [43 x i8] zeroinitializer }, align 32
@uinput_create_device._entry_ptr = internal global ptr @uinput_create_device._entry, section ".printk_index", align 4
@uinput_create_device._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.1, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\017%s: ff_effects_max should be non-zero when FF_BIT is set\0A\00", [36 x i8] zeroinitializer }, align 32
@uinput_create_device._entry_ptr.11 = internal global ptr @uinput_create_device._entry.9, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@uinput_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&newdev->mutex\00", [17 x i8] zeroinitializer }, align 32
@uinput_open.__key.17 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&newdev->requests_lock\00", [41 x i8] zeroinitializer }, align 32
@uinput_open.__key.19 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&newdev->requests_waitq\00", [40 x i8] zeroinitializer }, align 32
@uinput_open.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&newdev->waitq\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [21 x i64] [i64 19, i64 32, i64 21761, i64 21762, i64 1074025828, i64 1074025829, i64 1074025830, i64 1074025831, i64 1074025832, i64 1074025833, i64 1074025834, i64 1074025835, i64 1074025836, i64 1074025837, i64 1074025838, i64 1074550219, i64 1079792899, i64 1080055241, i64 2147767597, i64 3222033866, i64 3227538888]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 1073763588, i64 2147505452]
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"uinput_misc\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1090, i32 26 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1093, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [12 x i8] c"uinput_fops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 1076, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 685, i32 13 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 406, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 413, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 314, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 336, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 87, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 230, i32 6 }
@___asan_gen_.76 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 214, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 156, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 385, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 386, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 387, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [31 x i8] c"../drivers/input/misc/uinput.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 388, i32 2 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_alias226, ptr @__UNIQUE_ID_alias227, ptr @__UNIQUE_ID_author228, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file230, ptr @__UNIQUE_ID_license231, ptr @__exitcall_uinput_misc_exit, ptr @__initcall__kmod_uinput__225_1095_uinput_misc_init6, ptr @uinput_create_device._entry, ptr @uinput_create_device._entry.9, ptr @uinput_create_device._entry_ptr, ptr @uinput_create_device._entry_ptr.11, ptr @uinput_misc_exit, ptr @uinput_validate_absinfo._entry, ptr @uinput_validate_absinfo._entry.4, ptr @uinput_validate_absinfo._entry_ptr, ptr @uinput_validate_absinfo._entry_ptr.6, ptr @uinput_misc, ptr @.str, ptr @uinput_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @init_completion.__key, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @uinput_open.__key, ptr @.str.16, ptr @uinput_open.__key.17, ptr @.str.18, ptr @uinput_open.__key.19, ptr @.str.20, ptr @uinput_open.__key.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uinput_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uinput_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uinput_validate_absinfo._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uinput_validate_absinfo._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uinput_create_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uinput_create_device._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uinput_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uinput_open.__key.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uinput_open.__key.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uinput_open.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @uinput_misc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @uinput_misc) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @uinput_misc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @misc_deregister(ptr noundef nonnull @uinput_misc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uinput_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %event.i = alloca %struct.input_event, align 4
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp.not = icmp eq i32 %count, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count)
  %cmp2 = icmp ult i32 %count, 16
  %or.cond = xor i1 %cmp.not, %cmp2
  br i1 %or.cond, label %entry.cleanup68_crit_edge, label %do.body.preheader

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

do.body.preheader:                                ; preds = %entry
  %mutex = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 1
  %state = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 2
  %head = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 5
  %tail = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 6
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %waitq = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 3
  br label %do.body

do.body:                                          ; preds = %do.cond64.do.body_crit_edge, %do.body.preheader
  %call3 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end5, label %do.body.cleanup68_crit_edge

do.body.cleanup68_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

if.end5:                                          ; preds = %do.body
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp6.not = icmp eq i32 %3, 2
  br i1 %cmp6.not, label %if.else, label %if.end5.cleanup68.sink.split_crit_edge

if.end5.cleanup68.sink.split_crit_edge:           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68.sink.split

if.else:                                          ; preds = %if.end5
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %head, align 1
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tail, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp9 = icmp eq i8 %5, %7
  br i1 %cmp9, label %land.lhs.true11, label %if.else.if.else14_crit_edge

if.else.if.else14_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else14

land.lhs.true11:                                  ; preds = %if.else
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %land.lhs.true11.if.else14_crit_edge, label %land.lhs.true11.cleanup68.sink.split_crit_edge

land.lhs.true11.cleanup68.sink.split_crit_edge:   ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68.sink.split

land.lhs.true11.if.else14_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else14

if.else14:                                        ; preds = %land.lhs.true11.if.else14_crit_edge, %if.else.if.else14_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %event.i) #9
  %10 = call ptr @memset(ptr %event.i, i32 255, i32 16)
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.body.i.while.cond.i_crit_edge, %if.else14
  %read.0.i = phi i32 [ 0, %if.else14 ], [ %add.i, %while.body.i.while.cond.i_crit_edge ]
  %add.i = add i32 %read.0.i, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %count)
  %cmp.not.i = icmp ugt i32 %add.i, %count
  br i1 %cmp.not.i, label %while.cond.i.if.end17_crit_edge, label %land.rhs.i

while.cond.i.if.end17_crit_edge:                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

land.rhs.i:                                       ; preds = %while.cond.i
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %event_lock.i.i = getelementptr inbounds %struct.input_dev, ptr %12, i32 0, i32 36
  call void @_raw_spin_lock_irq(ptr noundef %event_lock.i.i) #9
  %13 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %head, align 1
  %15 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %tail, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %16)
  %cmp.i.not.i = icmp eq i8 %14, %16
  br i1 %cmp.i.not.i, label %uinput_fetch_next_event.exit.i, label %while.body.i

uinput_fetch_next_event.exit.i:                   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %event_lock9.i.i = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 36
  call void @_raw_spin_unlock_irq(ptr noundef %event_lock9.i.i) #9
  br label %if.end17

while.body.i:                                     ; preds = %land.rhs.i
  %conv1.i.i = zext i8 %16 to i32
  %arrayidx.i.i = getelementptr %struct.uinput_device, ptr %1, i32 0, i32 7, i32 %conv1.i.i
  %19 = call ptr @memcpy(ptr %event.i, ptr %arrayidx.i.i, i32 16)
  %20 = add i8 %16, 1
  %21 = and i8 %20, 15
  %22 = ptrtoint ptr %tail to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %tail, align 2
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %event_lock9.i9.i = getelementptr inbounds %struct.input_dev, ptr %24, i32 0, i32 36
  call void @_raw_spin_unlock_irq(ptr noundef %event_lock9.i9.i) #9
  %add.ptr.i = getelementptr i8, ptr %buffer, i32 %read.0.i
  %call2.i = call i32 @input_event_to_user(ptr noundef %add.ptr.i, ptr noundef nonnull %event.i) #9
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %while.body.i.while.cond.i_crit_edge, label %if.end17.thread95

while.body.i.while.cond.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.i

if.end17.thread95:                                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %event.i) #9
  br label %cleanup68.sink.split

if.end17:                                         ; preds = %uinput_fetch_next_event.exit.i, %while.cond.i.if.end17_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %event.i) #9
  call void @mutex_unlock(ptr noundef %mutex) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %read.0.i)
  %tobool19.not = icmp ne i32 %read.0.i, 0
  %brmerge = or i1 %cmp.not, %tobool19.not
  br i1 %brmerge, label %if.end17.cleanup68_crit_edge, label %if.end23

if.end17.cleanup68_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

if.end23:                                         ; preds = %if.end17
  %25 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %f_flags, align 4
  %and25 = and i32 %26, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.then27, label %if.end23.do.cond64_crit_edge

if.end23.do.cond64_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond64

if.then27:                                        ; preds = %if.end23
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 687) #9
  %27 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %head, align 1
  %29 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %tail, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %28, i8 %30)
  %cmp36.not = icmp eq i8 %28, %30
  br i1 %cmp36.not, label %lor.lhs.false38, label %if.then27.do.cond64_crit_edge

if.then27.do.cond64_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond64

lor.lhs.false38:                                  ; preds = %if.then27
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %32)
  %cmp40.not = icmp eq i32 %32, 2
  br i1 %cmp40.not, label %if.then42, label %lor.lhs.false38.do.cond64_crit_edge

lor.lhs.false38.do.cond64_crit_edge:              ; preds = %lor.lhs.false38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.cond64

if.then42:                                        ; preds = %lor.lhs.false38
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %33 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call44112 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %34 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %head, align 1
  %36 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %tail, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %35, i8 %37)
  %cmp49.not113 = icmp eq i8 %35, %37
  br i1 %cmp49.not113, label %if.then42.lor.lhs.false51_crit_edge, label %if.then42.for.end_crit_edge

if.then42.for.end_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then42.lor.lhs.false51_crit_edge:              ; preds = %if.then42
  br label %lor.lhs.false51

lor.lhs.false51:                                  ; preds = %cleanup.lor.lhs.false51_crit_edge, %if.then42.lor.lhs.false51_crit_edge
  %call44114 = phi i32 [ %call44, %cleanup.lor.lhs.false51_crit_edge ], [ %call44112, %if.then42.lor.lhs.false51_crit_edge ]
  %38 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp53.not = icmp eq i32 %39, 2
  br i1 %cmp53.not, label %if.end56, label %lor.lhs.false51.for.end_crit_edge

lor.lhs.false51.for.end_crit_edge:                ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end56:                                         ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44114)
  %tobool57.not = icmp eq i32 %call44114, 0
  br i1 %tobool57.not, label %cleanup, label %if.end56.__out_crit_edge

if.end56.__out_crit_edge:                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end56
  call void @schedule() #9
  %call44 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %40 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %head, align 1
  %42 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tail, align 2
  %cmp49.not = icmp eq i8 %41, %43
  br i1 %cmp49.not, label %cleanup.lor.lhs.false51_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

cleanup.lor.lhs.false51_crit_edge:                ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false51

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false51.for.end_crit_edge, %if.then42.for.end_crit_edge
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end56.__out_crit_edge
  %__ret43.1100 = phi i32 [ 0, %for.end ], [ %call44114, %if.end56.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %do.cond64

do.cond64:                                        ; preds = %__out, %lor.lhs.false38.do.cond64_crit_edge, %if.then27.do.cond64_crit_edge, %if.end23.do.cond64_crit_edge
  %retval1.1 = phi i32 [ 0, %if.end23.do.cond64_crit_edge ], [ 0, %if.then27.do.cond64_crit_edge ], [ 0, %lor.lhs.false38.do.cond64_crit_edge ], [ %__ret43.1100, %__out ]
  %cmp65 = icmp eq i32 %retval1.1, 0
  br i1 %cmp65, label %do.cond64.do.body_crit_edge, label %do.cond64.cleanup68_crit_edge

do.cond64.cleanup68_crit_edge:                    ; preds = %do.cond64
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

do.cond64.do.body_crit_edge:                      ; preds = %do.cond64
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body

cleanup68.sink.split:                             ; preds = %if.end17.thread95, %land.lhs.true11.cleanup68.sink.split_crit_edge, %if.end5.cleanup68.sink.split_crit_edge
  %retval.0.ph = phi i32 [ -14, %if.end17.thread95 ], [ -11, %land.lhs.true11.cleanup68.sink.split_crit_edge ], [ -19, %if.end5.cleanup68.sink.split_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup68

cleanup68:                                        ; preds = %cleanup68.sink.split, %do.cond64.cleanup68_crit_edge, %if.end17.cleanup68_crit_edge, %do.body.cleanup68_crit_edge, %entry.cleanup68_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup68_crit_edge ], [ %retval.0.ph, %cleanup68.sink.split ], [ %retval1.1, %do.cond64.cleanup68_crit_edge ], [ %read.0.i, %if.end17.cleanup68_crit_edge ], [ %call3, %do.body.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uinput_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %ev.i = alloca %struct.input_event, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mutex = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 1
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %state = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp4 = icmp eq i32 %3, 2
  br i1 %cmp4, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ev.i) #9
  %4 = getelementptr inbounds %struct.input_event, ptr %ev.i, i32 0, i32 2
  %5 = getelementptr inbounds %struct.input_event, ptr %ev.i, i32 0, i32 3
  %6 = getelementptr inbounds %struct.input_event, ptr %ev.i, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %count)
  %cmp1.i = icmp ult i32 %count, 16
  %7 = call ptr @memset(ptr %ev.i, i32 255, i32 16)
  br i1 %cmp1.i, label %cond.true.uinput_inject_events.exit_crit_edge, label %cond.true.while.body.i_crit_edge

cond.true.while.body.i_crit_edge:                 ; preds = %cond.true
  br label %while.body.i

cond.true.uinput_inject_events.exit_crit_edge:    ; preds = %cond.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %uinput_inject_events.exit

while.body.i:                                     ; preds = %if.end6.i.while.body.i_crit_edge, %cond.true.while.body.i_crit_edge
  %add19.i = phi i32 [ %add.i, %if.end6.i.while.body.i_crit_edge ], [ 16, %cond.true.while.body.i_crit_edge ]
  %bytes.018.i = phi i32 [ %add19.i, %if.end6.i.while.body.i_crit_edge ], [ 0, %cond.true.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %buffer, i32 %bytes.018.i
  %call4.i = call i32 @input_event_from_user(ptr noundef %add.ptr.i, ptr noundef nonnull %ev.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end6.i, label %while.body.i.uinput_inject_events.exit_crit_edge

while.body.i.uinput_inject_events.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uinput_inject_events.exit

if.end6.i:                                        ; preds = %while.body.i
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %4, align 4
  %conv.i = zext i16 %11 to i32
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %5, align 2
  %conv7.i = zext i16 %13 to i32
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  call void @input_event(ptr noundef %9, i32 noundef %conv.i, i32 noundef %conv7.i, i32 noundef %15) #9
  call void @__might_resched(ptr noundef nonnull @.str.1, i32 noundef 593, i32 noundef 0) #9
  %call.i.i = call i32 @__cond_resched() #9
  %add.i = add i32 %add19.i, 16
  %cmp3.not.i = icmp ugt i32 %add.i, %count
  br i1 %cmp3.not.i, label %if.end6.i.uinput_inject_events.exit_crit_edge, label %if.end6.i.while.body.i_crit_edge

if.end6.i.while.body.i_crit_edge:                 ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.end6.i.uinput_inject_events.exit_crit_edge:    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uinput_inject_events.exit

uinput_inject_events.exit:                        ; preds = %if.end6.i.uinput_inject_events.exit_crit_edge, %while.body.i.uinput_inject_events.exit_crit_edge, %cond.true.uinput_inject_events.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %cond.true.uinput_inject_events.exit_crit_edge ], [ %add19.i, %if.end6.i.uinput_inject_events.exit_crit_edge ], [ -14, %while.body.i.uinput_inject_events.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ev.i) #9
  br label %cond.end

cond.false:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1116, i32 %count)
  %cmp.not.i = icmp eq i32 %count, 1116
  br i1 %cmp.not.i, label %if.end.i, label %cond.false.cond.end_crit_edge

cond.false.cond.end_crit_edge:                    ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end.i:                                         ; preds = %cond.false
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %tobool.not.i18 = icmp eq ptr %17, null
  br i1 %tobool.not.i18, label %if.then3.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then3.i:                                       ; preds = %if.end.i
  %call.i = tail call ptr @input_allocate_device() #9
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i, ptr %1, align 4
  %tobool6.not.i = icmp eq ptr %call.i, null
  br i1 %tobool6.not.i, label %if.then3.i.cond.end_crit_edge, label %if.then3.i.if.end9.i_crit_edge

if.then3.i.if.end9.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9.i

if.then3.i.cond.end_crit_edge:                    ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

if.end9.i:                                        ; preds = %if.then3.i.if.end9.i_crit_edge, %if.end.i.if.end9.i_crit_edge
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %1, align 4
  %call11.i = tail call ptr @memdup_user(ptr noundef %buffer, i32 noundef 1116) #9
  %cmp.i.i = icmp ugt ptr %call11.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then13.i, label %if.end15.i

if.then13.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %call11.i to i32
  br label %cond.end

if.end15.i:                                       ; preds = %if.end9.i
  %ff_effects_max.i = getelementptr inbounds %struct.uinput_user_dev, ptr %call11.i, i32 0, i32 2
  %22 = ptrtoint ptr %ff_effects_max.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ff_effects_max.i, align 4
  %ff_effects_max16.i = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 8
  %24 = ptrtoint ptr %ff_effects_max16.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %ff_effects_max16.i, align 4
  %25 = ptrtoint ptr %call11.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %call11.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool17.not.i = icmp eq i8 %26, 0
  br i1 %tobool17.not.i, label %if.end15.i.exit.i_crit_edge, label %if.end19.i

if.end15.i.exit.i_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

if.end19.i:                                       ; preds = %if.end15.i
  %27 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %20, align 8
  tail call void @kfree(ptr noundef %28) #9
  %call22.i = tail call ptr @kstrndup(ptr noundef %call11.i, i32 noundef 80, i32 noundef 3264) #9
  %29 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call22.i, ptr %20, align 8
  %tobool25.not.i = icmp eq ptr %call22.i, null
  br i1 %tobool25.not.i, label %if.end19.i.exit.i_crit_edge, label %if.end27.i

if.end19.i.exit.i_crit_edge:                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

if.end27.i:                                       ; preds = %if.end19.i
  %id.i = getelementptr inbounds %struct.uinput_user_dev, ptr %call11.i, i32 0, i32 1
  %30 = ptrtoint ptr %id.i to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %id.i, align 4
  %id28.i = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 3
  %32 = ptrtoint ptr %id28.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %id28.i, align 4
  %vendor.i = getelementptr inbounds %struct.uinput_user_dev, ptr %call11.i, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %vendor.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %vendor.i, align 2
  %vendor32.i = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 3, i32 1
  %35 = ptrtoint ptr %vendor32.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %vendor32.i, align 2
  %product.i = getelementptr inbounds %struct.uinput_user_dev, ptr %call11.i, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %product.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %product.i, align 4
  %product35.i = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 3, i32 2
  %38 = ptrtoint ptr %product35.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %37, ptr %product35.i, align 4
  %version.i = getelementptr inbounds %struct.uinput_user_dev, ptr %call11.i, i32 0, i32 1, i32 3
  %39 = ptrtoint ptr %version.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %version.i, align 2
  %version38.i = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 3, i32 3
  %41 = ptrtoint ptr %version38.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %version38.i, align 2
  %absinfo.i.i = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 26
  br label %for.body.i

for.body.i:                                       ; preds = %input_abs_set_flat.exit.i.for.body.i_crit_edge, %if.end27.i
  %i.0114.i = phi i32 [ 0, %if.end27.i ], [ %inc.i, %input_abs_set_flat.exit.i.for.body.i_crit_edge ]
  %arrayidx40.i = getelementptr %struct.uinput_user_dev, ptr %call11.i, i32 0, i32 3, i32 %i.0114.i
  %42 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx40.i, align 4
  tail call void @input_alloc_absinfo(ptr noundef %20) #9
  %44 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %for.body.i.input_abs_set_max.exit.i_crit_edge, label %if.then.i.i

for.body.i.input_abs_set_max.exit.i_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_max.exit.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %maximum.i.i = getelementptr %struct.input_absinfo, ptr %45, i32 %i.0114.i, i32 2
  %46 = ptrtoint ptr %maximum.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %43, ptr %maximum.i.i, align 4
  br label %input_abs_set_max.exit.i

input_abs_set_max.exit.i:                         ; preds = %if.then.i.i, %for.body.i.input_abs_set_max.exit.i_crit_edge
  %arrayidx41.i = getelementptr %struct.uinput_user_dev, ptr %call11.i, i32 0, i32 4, i32 %i.0114.i
  %47 = ptrtoint ptr %arrayidx41.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx41.i, align 4
  tail call void @input_alloc_absinfo(ptr noundef %20) #9
  %49 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i92.i = icmp eq ptr %50, null
  br i1 %tobool.not.i92.i, label %input_abs_set_max.exit.i.input_abs_set_min.exit.i_crit_edge, label %if.then.i93.i

input_abs_set_max.exit.i.input_abs_set_min.exit.i_crit_edge: ; preds = %input_abs_set_max.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_min.exit.i

if.then.i93.i:                                    ; preds = %input_abs_set_max.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %minimum.i.i = getelementptr %struct.input_absinfo, ptr %50, i32 %i.0114.i, i32 1
  %51 = ptrtoint ptr %minimum.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %48, ptr %minimum.i.i, align 4
  br label %input_abs_set_min.exit.i

input_abs_set_min.exit.i:                         ; preds = %if.then.i93.i, %input_abs_set_max.exit.i.input_abs_set_min.exit.i_crit_edge
  %arrayidx42.i = getelementptr %struct.uinput_user_dev, ptr %call11.i, i32 0, i32 5, i32 %i.0114.i
  %52 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx42.i, align 4
  tail call void @input_alloc_absinfo(ptr noundef %20) #9
  %54 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i95.i = icmp eq ptr %55, null
  br i1 %tobool.not.i95.i, label %input_abs_set_min.exit.i.input_abs_set_fuzz.exit.i_crit_edge, label %if.then.i96.i

input_abs_set_min.exit.i.input_abs_set_fuzz.exit.i_crit_edge: ; preds = %input_abs_set_min.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_fuzz.exit.i

if.then.i96.i:                                    ; preds = %input_abs_set_min.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %fuzz.i.i = getelementptr %struct.input_absinfo, ptr %55, i32 %i.0114.i, i32 3
  %56 = ptrtoint ptr %fuzz.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %53, ptr %fuzz.i.i, align 4
  br label %input_abs_set_fuzz.exit.i

input_abs_set_fuzz.exit.i:                        ; preds = %if.then.i96.i, %input_abs_set_min.exit.i.input_abs_set_fuzz.exit.i_crit_edge
  %arrayidx43.i = getelementptr %struct.uinput_user_dev, ptr %call11.i, i32 0, i32 6, i32 %i.0114.i
  %57 = ptrtoint ptr %arrayidx43.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx43.i, align 4
  tail call void @input_alloc_absinfo(ptr noundef %20) #9
  %59 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %absinfo.i.i, align 8
  %tobool.not.i98.i = icmp eq ptr %60, null
  br i1 %tobool.not.i98.i, label %input_abs_set_fuzz.exit.i.input_abs_set_flat.exit.i_crit_edge, label %if.then.i99.i

input_abs_set_fuzz.exit.i.input_abs_set_flat.exit.i_crit_edge: ; preds = %input_abs_set_fuzz.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %input_abs_set_flat.exit.i

if.then.i99.i:                                    ; preds = %input_abs_set_fuzz.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %flat.i.i = getelementptr %struct.input_absinfo, ptr %60, i32 %i.0114.i, i32 4
  %61 = ptrtoint ptr %flat.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %58, ptr %flat.i.i, align 4
  br label %input_abs_set_flat.exit.i

input_abs_set_flat.exit.i:                        ; preds = %if.then.i99.i, %input_abs_set_fuzz.exit.i.input_abs_set_flat.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.0114.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 64
  br i1 %exitcond.not.i, label %for.end.i, label %input_abs_set_flat.exit.i.for.body.i_crit_edge

input_abs_set_flat.exit.i.for.body.i_crit_edge:   ; preds = %input_abs_set_flat.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end.i:                                        ; preds = %input_abs_set_flat.exit.i
  %evbit.i.i = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 5
  %62 = ptrtoint ptr %evbit.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile i32, ptr %evbit.i.i, align 4
  %64 = and i32 %63, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i100.i = icmp eq i32 %64, 0
  br i1 %tobool.not.i100.i, label %for.end.i.if.end47.i_crit_edge, label %if.end.i.i

for.end.i.if.end47.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.end.i.i:                                       ; preds = %for.end.i
  %absbit.i.i = getelementptr inbounds %struct.input_dev, ptr %20, i32 0, i32 8
  %call2.i.i = tail call i32 @_find_next_bit_be(ptr noundef %absbit.i.i, i32 noundef 64, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call2.i.i)
  %cmp32.i.i = icmp ult i32 %call2.i.i, 64
  br i1 %cmp32.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.if.end47.i_crit_edge

if.end.i.i.if.end47.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %if.end.i.i.for.body.i.i_crit_edge
  %cnt.033.i.i = phi i32 [ %call13.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ %call2.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %65 = ptrtoint ptr %absinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %absinfo.i.i, align 8
  %tobool3.not.i.i = icmp eq ptr %66, null
  br i1 %tobool3.not.i.i, label %for.body.i.i.exit.i_crit_edge, label %if.end5.i.i

for.body.i.i.exit.i_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit.i

if.end5.i.i:                                      ; preds = %for.body.i.i
  %minimum.i.i.i = getelementptr %struct.input_absinfo, ptr %66, i32 %cnt.033.i.i, i32 1
  %67 = ptrtoint ptr %minimum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %minimum.i.i.i, align 4
  %maximum.i.i.i = getelementptr %struct.input_absinfo, ptr %66, i32 %cnt.033.i.i, i32 2
  %69 = ptrtoint ptr %maximum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %maximum.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp.not.i.i.i = icmp ne i32 %68, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp1.not.i.i.i = icmp ne i32 %70, 0
  %or.cond.i.i.i = select i1 %cmp.not.i.i.i, i1 true, i1 %cmp1.not.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %70, i32 %68)
  %cmp2.i.i.i = icmp slt i32 %70, %68
  %or.cond1.i.i.i = select i1 %or.cond.i.i.i, i1 %cmp2.i.i.i, i1 false
  br i1 %or.cond1.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef %cnt.033.i.i, i32 noundef %68, i32 noundef %70) #12
  br label %exit.i

if.end.i.i.i:                                     ; preds = %if.end5.i.i
  %71 = tail call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %70, i32 %68) #9
  %72 = extractvalue { i32, i1 } %71, 1
  br i1 %72, label %if.end.i.i.i.for.inc.i.i_crit_edge, label %land.lhs.true8.i.i.i

if.end.i.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

land.lhs.true8.i.i.i:                             ; preds = %if.end.i.i.i
  %73 = extractvalue { i32, i1 } %71, 0
  %flat.i.i.i = getelementptr %struct.input_absinfo, ptr %66, i32 %cnt.033.i.i, i32 4
  %74 = ptrtoint ptr %flat.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %flat.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %73)
  %cmp9.i.i.i = icmp sgt i32 %75, %73
  br i1 %cmp9.i.i.i, label %do.end14.i.i.i, label %land.lhs.true8.i.i.i.for.inc.i.i_crit_edge

land.lhs.true8.i.i.i.for.inc.i.i_crit_edge:       ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i.i

do.end14.i.i.i:                                   ; preds = %land.lhs.true8.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef %cnt.033.i.i, i32 noundef %75, i32 noundef %68, i32 noundef %70) #12
  br label %exit.i

for.inc.i.i:                                      ; preds = %land.lhs.true8.i.i.i.for.inc.i.i_crit_edge, %if.end.i.i.i.for.inc.i.i_crit_edge
  %add.i.i = add nuw nsw i32 %cnt.033.i.i, 1
  %call13.i.i = tail call i32 @_find_next_bit_be(ptr noundef %absbit.i.i, i32 noundef 64, i32 noundef %add.i.i) #9
  %cmp.i102.i = icmp ult i32 %call13.i.i, 64
  br i1 %cmp.i102.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end47.i_crit_edge

for.inc.i.i.if.end47.i_crit_edge:                 ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

if.end47.i:                                       ; preds = %for.inc.i.i.if.end47.i_crit_edge, %if.end.i.i.if.end47.i_crit_edge, %for.end.i.if.end47.i_crit_edge
  %76 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 1, ptr %state, align 4
  br label %exit.i

exit.i:                                           ; preds = %if.end47.i, %do.end14.i.i.i, %do.end.i.i.i, %for.body.i.i.exit.i_crit_edge, %if.end19.i.exit.i_crit_edge, %if.end15.i.exit.i_crit_edge
  %retval1.0.i = phi i32 [ 1116, %if.end47.i ], [ -22, %if.end15.i.exit.i_crit_edge ], [ -12, %if.end19.i.exit.i_crit_edge ], [ -22, %do.end.i.i.i ], [ -22, %do.end14.i.i.i ], [ -22, %for.body.i.i.exit.i_crit_edge ]
  tail call void @kfree(ptr noundef %call11.i) #9
  br label %cond.end

cond.end:                                         ; preds = %exit.i, %if.then13.i, %if.then3.i.cond.end_crit_edge, %cond.false.cond.end_crit_edge, %uinput_inject_events.exit
  %cond = phi i32 [ %retval.0.i, %uinput_inject_events.exit ], [ %21, %if.then13.i ], [ %retval1.0.i, %exit.i ], [ -22, %cond.false.cond.end_crit_edge ], [ -12, %if.then3.i.cond.end_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %cond.end ], [ 0, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uinput_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %waitq = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 3
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %waitq, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %3(ptr noundef %file, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %head = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %head, align 1
  %tail = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tail, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp.not = icmp eq i8 %5, %7
  %spec.select = select i1 %cmp.not, i32 260, i32 325
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uinput_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #2 align 64 {
entry:
  %setup.i57 = alloca %struct.uinput_setup, align 8
  %setup.i = alloca %struct.uinput_abs_setup, align 4
  %ff_up.i = alloca %struct.uinput_ff_upload, align 4
  %ff_erase.i = alloca %struct.uinput_ff_erase, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %arg to ptr
  %private_data.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %1 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %ff_up.i) #9
  %3 = call ptr @memset(ptr %ff_up.i, i32 255, i32 96)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %ff_erase.i) #9
  %4 = ptrtoint ptr %ff_erase.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %ff_erase.i, align 4, !annotation !72
  %5 = getelementptr inbounds %struct.uinput_ff_erase, ptr %ff_erase.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !72
  %7 = getelementptr inbounds %struct.uinput_ff_erase, ptr %ff_erase.i, i32 0, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !72
  %mutex.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 1
  %call.i = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.uinput_ioctl_handler.exit_crit_edge

entry.uinput_ioctl_handler.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %uinput_ioctl_handler.exit

if.end.i:                                         ; preds = %entry
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %2, align 4
  %tobool2.not.i = icmp eq ptr %10, null
  br i1 %tobool2.not.i, label %if.then3.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = tail call ptr @input_allocate_device() #9
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call4.i, ptr %2, align 4
  %tobool7.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool7.not.i, label %if.then3.i.out.i_crit_edge, label %if.then3.i.if.end10.i_crit_edge

if.then3.i.if.end10.i_crit_edge:                  ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

if.then3.i.out.i_crit_edge:                       ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end10.i:                                       ; preds = %if.then3.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %12 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %sw.epilog.i [
    i32 -2147199699, label %sw.bb.i
    i32 21761, label %sw.bb16.i
    i32 21762, label %sw.bb18.i
    i32 1079792899, label %sw.bb19.i
    i32 1074025828, label %sw.bb21.i
    i32 1074025829, label %sw.bb30.i
    i32 1074025830, label %sw.bb44.i
    i32 1074025831, label %sw.bb58.i
    i32 1074025832, label %sw.bb72.i
    i32 1074025833, label %sw.bb86.i
    i32 1074025834, label %sw.bb100.i
    i32 1074025835, label %sw.bb114.i
    i32 1074025837, label %sw.bb128.i
    i32 1074025838, label %sw.bb142.i
    i32 1074025836, label %sw.bb156.i
    i32 -1067428408, label %sw.bb170.i
    i32 -1072933430, label %if.end59.i.i.i
    i32 1080055241, label %sw.bb215.i
    i32 1074550219, label %if.end59.i.i386.i
  ]

sw.bb.i:                                          ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 865) #9
  %13 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu_domain.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i) #6, !srcloc !73
  %and.i.i = and i32 %15, -13
  %or.i.i = or i32 %and.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %16 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %0, i32 5, i32 -1226833921) #9, !srcloc !76
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool13.not.i = icmp eq i32 %16, 0
  %spec.select.i = select i1 %tobool13.not.i, i32 0, i32 -14
  br label %out.i

sw.bb16.i:                                        ; preds = %if.end10.i
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %2, align 4
  %state.i80 = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %19 = ptrtoint ptr %state.i80 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %state.i80, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %20)
  %cmp.not.i = icmp eq i32 %20, 1
  br i1 %cmp.not.i, label %if.end.i84, label %do.end.i

do.end.i:                                         ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str) #12
  br label %out.i

if.end.i84:                                       ; preds = %sw.bb16.i
  %evbit.i82 = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 5
  %21 = ptrtoint ptr %evbit.i82 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %evbit.i82, align 4
  %23 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i83 = icmp eq i32 %23, 0
  br i1 %tobool.not.i83, label %if.end.i84.if.end23.i_crit_edge, label %if.then3.i86

if.end.i84.if.end23.i_crit_edge:                  ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then3.i86:                                     ; preds = %if.end.i84
  tail call void @input_alloc_absinfo(ptr noundef %18) #9
  %absinfo.i85 = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 26
  %24 = ptrtoint ptr %absinfo.i85 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %absinfo.i85, align 8
  %tobool4.not.i = icmp eq ptr %25, null
  br i1 %tobool4.not.i, label %if.then3.i86.fail1.i_crit_edge, label %if.end6.i

if.then3.i86.fail1.i_crit_edge:                   ; preds = %if.then3.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1.i

if.end6.i:                                        ; preds = %if.then3.i86
  %arrayidx.i.i87 = getelementptr %struct.input_dev, ptr %18, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %arrayidx.i.i87 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %arrayidx.i.i87, align 4
  %28 = and i32 %27, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool9.not.i = icmp eq i32 %28, 0
  br i1 %tobool9.not.i, label %if.else.i, label %input_abs_get_max.exit.i

input_abs_get_max.exit.i:                         ; preds = %if.end6.i
  %maximum.i.i88 = getelementptr %struct.input_absinfo, ptr %25, i32 47, i32 2
  %29 = ptrtoint ptr %maximum.i.i88 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %maximum.i.i88, align 4
  %add.i89 = add i32 %30, 1
  %call12.i = tail call i32 @input_mt_init_slots(ptr noundef %18, i32 noundef %add.i89, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i90 = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i90, label %input_abs_get_max.exit.i.if.end23.i_crit_edge, label %input_abs_get_max.exit.i.fail1.i_crit_edge

input_abs_get_max.exit.i.fail1.i_crit_edge:       ; preds = %input_abs_get_max.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1.i

input_abs_get_max.exit.i.if.end23.i_crit_edge:    ; preds = %input_abs_get_max.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.else.i:                                        ; preds = %if.end6.i
  %31 = ptrtoint ptr %arrayidx.i.i87 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %arrayidx.i.i87, align 4
  %33 = and i32 %32, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool19.not.i = icmp eq i32 %33, 0
  br i1 %tobool19.not.i, label %if.else.i.if.end23.i_crit_edge, label %if.then20.i

if.else.i.if.end23.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23.i

if.then20.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %hint_events_per_packet.i.i = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 14
  %34 = ptrtoint ptr %hint_events_per_packet.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 60, ptr %hint_events_per_packet.i.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %if.then20.i, %if.else.i.if.end23.i_crit_edge, %input_abs_get_max.exit.i.if.end23.i_crit_edge, %if.end.i84.if.end23.i_crit_edge
  %35 = ptrtoint ptr %evbit.i82 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %evbit.i82, align 4
  %37 = and i32 %36, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool27.not.i = icmp eq i32 %37, 0
  br i1 %tobool27.not.i, label %if.end23.i.if.end35.i_crit_edge, label %land.lhs.true.i

if.end23.i.if.end35.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

land.lhs.true.i:                                  ; preds = %if.end23.i
  %ff_effects_max.i91 = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 8
  %38 = ptrtoint ptr %ff_effects_max.i91 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ff_effects_max.i91, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool28.not.i = icmp eq i32 %39, 0
  br i1 %tobool28.not.i, label %do.end32.i, label %land.lhs.true.i.if.end35.i_crit_edge

land.lhs.true.i.if.end35.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

do.end32.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %call34.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str) #12
  br label %fail1.i

if.end35.i:                                       ; preds = %land.lhs.true.i.if.end35.i_crit_edge, %if.end23.i.if.end35.i_crit_edge
  %ff_effects_max36.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 8
  %40 = ptrtoint ptr %ff_effects_max36.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ff_effects_max36.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool37.not.i = icmp eq i32 %41, 0
  br i1 %tobool37.not.i, label %if.end35.i.if.end48.i_crit_edge, label %if.then38.i

if.end35.i.if.end48.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48.i

if.then38.i:                                      ; preds = %if.end35.i
  %call40.i = tail call i32 @input_ff_create(ptr noundef %18, i32 noundef %41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40.i)
  %tobool41.not.i = icmp eq i32 %call40.i, 0
  br i1 %tobool41.not.i, label %if.end43.i, label %if.then38.i.fail1.i_crit_edge

if.then38.i.fail1.i_crit_edge:                    ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %fail1.i

if.end43.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  %ff.i = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 20
  %42 = ptrtoint ptr %ff.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ff.i, align 8
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @uinput_dev_upload_effect, ptr %43, align 4
  %45 = load ptr, ptr %ff.i, align 8
  %erase.i = getelementptr inbounds %struct.ff_device, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %erase.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @uinput_dev_erase_effect, ptr %erase.i, align 4
  %47 = load ptr, ptr %ff.i, align 8
  %playback.i = getelementptr inbounds %struct.ff_device, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %playback.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @uinput_dev_playback, ptr %playback.i, align 4
  %49 = load ptr, ptr %ff.i, align 8
  %set_gain.i = getelementptr inbounds %struct.ff_device, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %set_gain.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @uinput_dev_set_gain, ptr %set_gain.i, align 4
  %51 = load ptr, ptr %ff.i, align 8
  %set_autocenter.i = getelementptr inbounds %struct.ff_device, ptr %51, i32 0, i32 4
  %52 = ptrtoint ptr %set_autocenter.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @uinput_dev_set_autocenter, ptr %set_autocenter.i, align 4
  %flush.i = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 33
  %53 = ptrtoint ptr %flush.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @uinput_dev_flush, ptr %flush.i, align 8
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end43.i, %if.end35.i.if.end48.i_crit_edge
  %event.i = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 34
  %54 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @uinput_dev_event, ptr %event.i, align 4
  %55 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %2, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %56, i32 0, i32 40, i32 8
  %57 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %2, ptr %driver_data.i.i.i, align 4
  %58 = load ptr, ptr %2, align 4
  %call51.i = tail call i32 @input_register_device(ptr noundef %58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  br i1 %tobool52.not.i, label %if.end54.i, label %fail2.i

if.end54.i:                                       ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %state.i80 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 2, ptr %state.i80, align 4
  br label %out.i

fail2.i:                                          ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_ff_destroy(ptr noundef %18) #9
  br label %fail1.i

fail1.i:                                          ; preds = %fail2.i, %if.then38.i.fail1.i_crit_edge, %do.end32.i, %input_abs_get_max.exit.i.fail1.i_crit_edge, %if.then3.i86.fail1.i_crit_edge
  %error.0.i = phi i32 [ %call12.i, %input_abs_get_max.exit.i.fail1.i_crit_edge ], [ %call40.i, %if.then38.i.fail1.i_crit_edge ], [ %call51.i, %fail2.i ], [ -22, %do.end32.i ], [ -22, %if.then3.i86.fail1.i_crit_edge ]
  tail call fastcc void @uinput_destroy_device(ptr noundef %2) #9
  br label %out.i

sw.bb18.i:                                        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @uinput_destroy_device(ptr noundef %2) #9
  br label %out.i

sw.bb19.i:                                        ; preds = %if.end10.i
  call void @llvm.lifetime.start.p0(i64 92, ptr nonnull %setup.i57) #9
  %60 = call ptr @memset(ptr %setup.i57, i32 255, i32 92)
  %state.i58 = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %61 = ptrtoint ptr %state.i58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %state.i58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %62)
  %cmp.i59 = icmp eq i32 %62, 2
  br i1 %cmp.i59, label %sw.bb19.i.uinput_dev_setup.exit_crit_edge, label %if.end59.i.i.i61

sw.bb19.i.uinput_dev_setup.exit_crit_edge:        ; preds = %sw.bb19.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uinput_dev_setup.exit

if.end59.i.i.i61:                                 ; preds = %sw.bb19.i
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i.i60 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i60, label %if.end59.i.i.i61.if.then11.i.i.i75_crit_edge, label %land.lhs.true.i.i.i64

if.end59.i.i.i61.if.then11.i.i.i75_crit_edge:     ; preds = %if.end59.i.i.i61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i75

land.lhs.true.i.i.i64:                            ; preds = %if.end59.i.i.i61
  %63 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 92, i32 -1226833920) #13, !srcloc !77
  %asmresult.i.i.i62 = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i62)
  %cmp.i6.i.i63 = icmp eq i32 %asmresult.i.i.i62, 0
  br i1 %cmp.i6.i.i63, label %if.end.i.i.i72, label %land.lhs.true.i.i.i64.if.then11.i.i.i75_crit_edge, !prof !78

land.lhs.true.i.i.i64.if.then11.i.i.i75_crit_edge: ; preds = %land.lhs.true.i.i.i64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i75

if.end.i.i.i72:                                   ; preds = %land.lhs.true.i.i.i64
  %call.i.i.i.i65 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %setup.i57, i32 noundef 92) #9
  %64 = call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i.i.i.i66 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i.i.i.i.i.i.i66 to ptr
  %cpu_domain.i.i.i.i.i.i67 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 4
  %66 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i67) #6, !srcloc !73
  %and.i.i.i.i.i68 = and i32 %66, -13
  %or.i.i.i.i.i69 = or i32 %and.i.i.i.i.i68, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i69) #9, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %call1.i.i.i.i70 = call i32 @arm_copy_from_user(ptr noundef nonnull %setup.i57, ptr noundef %0, i32 noundef 92) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %66) #9, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i70)
  %tobool4.not.i.i.i71 = icmp eq i32 %call1.i.i.i.i70, 0
  br i1 %tobool4.not.i.i.i71, label %if.end2.i76, label %if.end.i.i.i72.if.then11.i.i.i75_crit_edge, !prof !78

if.end.i.i.i72.if.then11.i.i.i75_crit_edge:       ; preds = %if.end.i.i.i72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i75

if.then11.i.i.i75:                                ; preds = %if.end.i.i.i72.if.then11.i.i.i75_crit_edge, %land.lhs.true.i.i.i64.if.then11.i.i.i75_crit_edge, %if.end59.i.i.i61.if.then11.i.i.i75_crit_edge
  %res.0.i.i27.i = phi i32 [ %call1.i.i.i.i70, %if.end.i.i.i72.if.then11.i.i.i75_crit_edge ], [ 92, %if.end59.i.i.i61.if.then11.i.i.i75_crit_edge ], [ 92, %land.lhs.true.i.i.i64.if.then11.i.i.i75_crit_edge ]
  %sub.i.i.i73 = sub i32 92, %res.0.i.i27.i
  %add.ptr.i.i.i74 = getelementptr i8, ptr %setup.i57, i32 %sub.i.i.i73
  %67 = call ptr @memset(ptr %add.ptr.i.i.i74, i32 0, i32 %res.0.i.i27.i)
  br label %uinput_dev_setup.exit

if.end2.i76:                                      ; preds = %if.end.i.i.i72
  %name.i = getelementptr inbounds %struct.uinput_setup, ptr %setup.i57, i32 0, i32 1
  %68 = ptrtoint ptr %name.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %name.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool3.not.i = icmp eq i8 %69, 0
  br i1 %tobool3.not.i, label %if.end2.i76.uinput_dev_setup.exit_crit_edge, label %if.end5.i77

if.end2.i76.uinput_dev_setup.exit_crit_edge:      ; preds = %if.end2.i76
  call void @__sanitizer_cov_trace_pc() #11
  br label %uinput_dev_setup.exit

if.end5.i77:                                      ; preds = %if.end2.i76
  %70 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %2, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %71, i32 0, i32 3
  %72 = ptrtoint ptr %setup.i57 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %setup.i57, align 8
  %74 = ptrtoint ptr %id.i to i32
  call void @__asan_storeN_noabort(i32 %74, i32 8)
  store i64 %73, ptr %id.i, align 4
  %ff_effects_max.i = getelementptr inbounds %struct.uinput_setup, ptr %setup.i57, i32 0, i32 2
  %75 = ptrtoint ptr %ff_effects_max.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %ff_effects_max.i, align 8
  %ff_effects_max8.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 8
  %77 = ptrtoint ptr %ff_effects_max8.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %ff_effects_max8.i, align 4
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %71, align 8
  call void @kfree(ptr noundef %79) #9
  %call11.i = call ptr @kstrndup(ptr noundef %name.i, i32 noundef 80, i32 noundef 3264) #9
  %80 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call11.i, ptr %71, align 8
  %tobool14.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool14.not.i, label %if.end5.i77.uinput_dev_setup.exit_crit_edge, label %if.end16.i78

if.end5.i77.uinput_dev_setup.exit_crit_edge:      ; preds = %if.end5.i77
  call void @__sanitizer_cov_trace_pc() #11
  br label %uinput_dev_setup.exit

if.end16.i78:                                     ; preds = %if.end5.i77
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %state.i58 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 1, ptr %state.i58, align 4
  br label %uinput_dev_setup.exit

uinput_dev_setup.exit:                            ; preds = %if.end16.i78, %if.end5.i77.uinput_dev_setup.exit_crit_edge, %if.end2.i76.uinput_dev_setup.exit_crit_edge, %if.then11.i.i.i75, %sw.bb19.i.uinput_dev_setup.exit_crit_edge
  %retval.0.i79 = phi i32 [ 0, %if.end16.i78 ], [ -22, %sw.bb19.i.uinput_dev_setup.exit_crit_edge ], [ -22, %if.end2.i76.uinput_dev_setup.exit_crit_edge ], [ -12, %if.end5.i77.uinput_dev_setup.exit_crit_edge ], [ -14, %if.then11.i.i.i75 ]
  call void @llvm.lifetime.end.p0(i64 92, ptr nonnull %setup.i57) #9
  br label %out.i

sw.bb21.i:                                        ; preds = %if.end10.i
  %state.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %82 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %83)
  %cmp.i = icmp eq i32 %83, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %arg)
  %cmp23.i = icmp ugt i32 %arg, 31
  %or.cond.i = or i1 %cmp23.i, %cmp.i
  br i1 %or.cond.i, label %sw.bb21.i.out.i_crit_edge, label %if.else25.i

sw.bb21.i.out.i_crit_edge:                        ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else25.i:                                      ; preds = %sw.bb21.i
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %2, align 4
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %85, i32 0, i32 5
  tail call void @_set_bit(i32 noundef %arg, ptr noundef %evbit.i) #9
  br label %out.i

sw.bb30.i:                                        ; preds = %if.end10.i
  %state32.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %86 = ptrtoint ptr %state32.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %state32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %87)
  %cmp33.i = icmp eq i32 %87, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 767, i32 %arg)
  %cmp36.i = icmp ugt i32 %arg, 767
  %or.cond364.i = or i1 %cmp36.i, %cmp33.i
  br i1 %or.cond364.i, label %sw.bb30.i.out.i_crit_edge, label %if.else38.i

sw.bb30.i.out.i_crit_edge:                        ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else38.i:                                      ; preds = %sw.bb30.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %2, align 4
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %89, i32 0, i32 6
  tail call void @_set_bit(i32 noundef %arg, ptr noundef %keybit.i) #9
  br label %out.i

sw.bb44.i:                                        ; preds = %if.end10.i
  %state46.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %90 = ptrtoint ptr %state46.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %state46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %91)
  %cmp47.i = icmp eq i32 %91, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %arg)
  %cmp50.i = icmp ugt i32 %arg, 15
  %or.cond365.i = or i1 %cmp50.i, %cmp47.i
  br i1 %or.cond365.i, label %sw.bb44.i.out.i_crit_edge, label %if.else52.i

sw.bb44.i.out.i_crit_edge:                        ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else52.i:                                      ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %2, align 4
  %relbit.i = getelementptr inbounds %struct.input_dev, ptr %93, i32 0, i32 7
  tail call void @_set_bit(i32 noundef %arg, ptr noundef %relbit.i) #9
  br label %out.i

sw.bb58.i:                                        ; preds = %if.end10.i
  %state60.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %94 = ptrtoint ptr %state60.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %state60.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %95)
  %cmp61.i = icmp eq i32 %95, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %arg)
  %cmp64.i = icmp ugt i32 %arg, 63
  %or.cond366.i = or i1 %cmp64.i, %cmp61.i
  br i1 %or.cond366.i, label %sw.bb58.i.out.i_crit_edge, label %if.else66.i

sw.bb58.i.out.i_crit_edge:                        ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else66.i:                                      ; preds = %sw.bb58.i
  call void @__sanitizer_cov_trace_pc() #11
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %2, align 4
  %absbit.i = getelementptr inbounds %struct.input_dev, ptr %97, i32 0, i32 8
  tail call void @_set_bit(i32 noundef %arg, ptr noundef %absbit.i) #9
  br label %out.i

sw.bb72.i:                                        ; preds = %if.end10.i
  %state74.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %98 = ptrtoint ptr %state74.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %state74.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %99)
  %cmp75.i = icmp eq i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %arg)
  %cmp78.i = icmp ugt i32 %arg, 7
  %or.cond367.i = or i1 %cmp78.i, %cmp75.i
  br i1 %or.cond367.i, label %sw.bb72.i.out.i_crit_edge, label %if.else80.i

sw.bb72.i.out.i_crit_edge:                        ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else80.i:                                      ; preds = %sw.bb72.i
  call void @__sanitizer_cov_trace_pc() #11
  %100 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %2, align 4
  %mscbit.i = getelementptr inbounds %struct.input_dev, ptr %101, i32 0, i32 9
  tail call void @_set_bit(i32 noundef %arg, ptr noundef %mscbit.i) #9
  br label %out.i

sw.bb86.i:                                        ; preds = %if.end10.i
  %state88.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %102 = ptrtoint ptr %state88.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %state88.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %103)
  %cmp89.i = icmp eq i32 %103, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %arg)
  %cmp92.i = icmp ugt i32 %arg, 15
  %or.cond368.i = or i1 %cmp92.i, %cmp89.i
  br i1 %or.cond368.i, label %sw.bb86.i.out.i_crit_edge, label %if.else94.i

sw.bb86.i.out.i_crit_edge:                        ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else94.i:                                      ; preds = %sw.bb86.i
  call void @__sanitizer_cov_trace_pc() #11
  %104 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %2, align 4
  %ledbit.i = getelementptr inbounds %struct.input_dev, ptr %105, i32 0, i32 10
  tail call void @_set_bit(i32 noundef %arg, ptr noundef %ledbit.i) #9
  br label %out.i

sw.bb100.i:                                       ; preds = %if.end10.i
  %state102.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %106 = ptrtoint ptr %state102.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %state102.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %107)
  %cmp103.i = icmp eq i32 %107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %arg)
  %cmp106.i = icmp ugt i32 %arg, 7
  %or.cond369.i = or i1 %cmp106.i, %cmp103.i
  br i1 %or.cond369.i, label %sw.bb100.i.out.i_crit_edge, label %if.else108.i

sw.bb100.i.out.i_crit_edge:                       ; preds = %sw.bb100.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else108.i:                                     ; preds = %sw.bb100.i
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %2, align 4
  %sndbit.i = getelementptr inbounds %struct.input_dev, ptr %109, i32 0, i32 11
  tail call void @_set_bit(i32 noundef %arg, ptr noundef %sndbit.i) #9
  br label %out.i

sw.bb114.i:                                       ; preds = %if.end10.i
  %state116.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %110 = ptrtoint ptr %state116.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %state116.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %111)
  %cmp117.i = icmp eq i32 %111, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %arg)
  %cmp120.i = icmp ugt i32 %arg, 127
  %or.cond370.i = or i1 %cmp120.i, %cmp117.i
  br i1 %or.cond370.i, label %sw.bb114.i.out.i_crit_edge, label %if.else122.i

sw.bb114.i.out.i_crit_edge:                       ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else122.i:                                     ; preds = %sw.bb114.i
  call void @__sanitizer_cov_trace_pc() #11
  %112 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %2, align 4
  %ffbit.i = getelementptr inbounds %struct.input_dev, ptr %113, i32 0, i32 12
  tail call void @_set_bit(i32 noundef %arg, ptr noundef %ffbit.i) #9
  br label %out.i

sw.bb128.i:                                       ; preds = %if.end10.i
  %state130.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %114 = ptrtoint ptr %state130.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %state130.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %115)
  %cmp131.i = icmp eq i32 %115, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %arg)
  %cmp134.i = icmp ugt i32 %arg, 16
  %or.cond371.i = or i1 %cmp134.i, %cmp131.i
  br i1 %or.cond371.i, label %sw.bb128.i.out.i_crit_edge, label %if.else136.i

sw.bb128.i.out.i_crit_edge:                       ; preds = %sw.bb128.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else136.i:                                     ; preds = %sw.bb128.i
  call void @__sanitizer_cov_trace_pc() #11
  %116 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %2, align 4
  %swbit.i = getelementptr inbounds %struct.input_dev, ptr %117, i32 0, i32 13
  tail call void @_set_bit(i32 noundef %arg, ptr noundef %swbit.i) #9
  br label %out.i

sw.bb142.i:                                       ; preds = %if.end10.i
  %state144.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %118 = ptrtoint ptr %state144.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %state144.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %119)
  %cmp145.i = icmp eq i32 %119, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %arg)
  %cmp148.i = icmp ugt i32 %arg, 31
  %or.cond372.i = or i1 %cmp148.i, %cmp145.i
  br i1 %or.cond372.i, label %sw.bb142.i.out.i_crit_edge, label %if.else150.i

sw.bb142.i.out.i_crit_edge:                       ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.else150.i:                                     ; preds = %sw.bb142.i
  call void @__sanitizer_cov_trace_pc() #11
  %120 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %2, align 4
  %propbit.i = getelementptr inbounds %struct.input_dev, ptr %121, i32 0, i32 4
  tail call void @_set_bit(i32 noundef %arg, ptr noundef %propbit.i) #9
  br label %out.i

sw.bb156.i:                                       ; preds = %if.end10.i
  %state157.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %122 = ptrtoint ptr %state157.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %state157.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %123)
  %cmp158.i = icmp eq i32 %123, 2
  br i1 %cmp158.i, label %sw.bb156.i.out.i_crit_edge, label %if.end160.i

sw.bb156.i.out.i_crit_edge:                       ; preds = %sw.bb156.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end160.i:                                      ; preds = %sw.bb156.i
  %call161.i = tail call ptr @strndup_user(ptr noundef %0, i32 noundef 1024) #9
  %cmp.i.i = icmp ugt ptr %call161.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then163.i, label %if.end165.i

if.then163.i:                                     ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #11
  %124 = ptrtoint ptr %call161.i to i32
  br label %out.i

if.end165.i:                                      ; preds = %if.end160.i
  call void @__sanitizer_cov_trace_pc() #11
  %125 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %2, align 4
  %phys167.i = getelementptr inbounds %struct.input_dev, ptr %126, i32 0, i32 1
  %127 = ptrtoint ptr %phys167.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %phys167.i, align 4
  tail call void @kfree(ptr noundef %128) #9
  %129 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %2, align 4
  %phys169.i = getelementptr inbounds %struct.input_dev, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %phys169.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %call161.i, ptr %phys169.i, align 4
  br label %out.i

sw.bb170.i:                                       ; preds = %if.end10.i
  %call171.i = call fastcc i32 @uinput_ff_upload_from_user(ptr noundef %0, ptr noundef nonnull %ff_up.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call171.i)
  %tobool172.not.i = icmp eq i32 %call171.i, 0
  br i1 %tobool172.not.i, label %if.end174.i, label %sw.bb170.i.out.i_crit_edge

sw.bb170.i.out.i_crit_edge:                       ; preds = %sw.bb170.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end174.i:                                      ; preds = %sw.bb170.i
  %132 = ptrtoint ptr %ff_up.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %ff_up.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %133)
  %cmp.i406.i = icmp ugt i32 %133, 15
  br i1 %cmp.i406.i, label %if.end174.i.out.i_crit_edge, label %uinput_request_find.exit.i

if.end174.i.out.i_crit_edge:                      ; preds = %if.end174.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

uinput_request_find.exit.i:                       ; preds = %if.end174.i
  %arrayidx.i.i = getelementptr %struct.uinput_device, ptr %2, i32 0, i32 9, i32 %133
  %134 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool176.not.i = icmp eq ptr %135, null
  br i1 %tobool176.not.i, label %uinput_request_find.exit.i.out.i_crit_edge, label %lor.lhs.false.i

uinput_request_find.exit.i.out.i_crit_edge:       ; preds = %uinput_request_find.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

lor.lhs.false.i:                                  ; preds = %uinput_request_find.exit.i
  %code.i = getelementptr inbounds %struct.uinput_request, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %code.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %137)
  %cmp177.not.i = icmp eq i32 %137, 1
  br i1 %cmp177.not.i, label %lor.lhs.false178.i, label %lor.lhs.false.i.out.i_crit_edge

lor.lhs.false.i.out.i_crit_edge:                  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

lor.lhs.false178.i:                               ; preds = %lor.lhs.false.i
  %u.i = getelementptr inbounds %struct.uinput_request, ptr %135, i32 0, i32 4
  %138 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %u.i, align 4
  %tobool179.not.i = icmp eq ptr %139, null
  br i1 %tobool179.not.i, label %lor.lhs.false178.i.out.i_crit_edge, label %if.end181.i

lor.lhs.false178.i.out.i_crit_edge:               ; preds = %lor.lhs.false178.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end181.i:                                      ; preds = %lor.lhs.false178.i
  %retval182.i = getelementptr inbounds %struct.uinput_ff_upload, ptr %ff_up.i, i32 0, i32 1
  %140 = ptrtoint ptr %retval182.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %retval182.i, align 4
  %effect183.i = getelementptr inbounds %struct.uinput_ff_upload, ptr %ff_up.i, i32 0, i32 2
  %141 = call ptr @memcpy(ptr %effect183.i, ptr %139, i32 44)
  %old.i = getelementptr inbounds %struct.uinput_request, ptr %135, i32 0, i32 4, i32 0, i32 1
  %142 = ptrtoint ptr %old.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %old.i, align 4
  %tobool187.not.i = icmp eq ptr %143, null
  %old193.i = getelementptr inbounds %struct.uinput_ff_upload, ptr %ff_up.i, i32 0, i32 3
  br i1 %tobool187.not.i, label %if.else192.i, label %if.then188.i

if.then188.i:                                     ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #11
  %144 = call ptr @memcpy(ptr %old193.i, ptr %143, i32 44)
  br label %if.end59.i.i.i48

if.else192.i:                                     ; preds = %if.end181.i
  call void @__sanitizer_cov_trace_pc() #11
  %145 = call ptr @memset(ptr %old193.i, i32 0, i32 44)
  br label %if.end59.i.i.i48

if.end59.i.i.i48:                                 ; preds = %if.else192.i, %if.then188.i
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #9
  %call.i.i.i47 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i47, label %if.end59.i.i.i48.out.i_crit_edge, label %if.end.i.i.i51

if.end59.i.i.i48.out.i_crit_edge:                 ; preds = %if.end59.i.i.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end.i.i.i51:                                   ; preds = %if.end59.i.i.i48
  %146 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 96, i32 -1226833920) #13, !srcloc !79
  %asmresult.i.i.i49 = extractvalue { i32, i32 } %146, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i49)
  %cmp.i6.i.i50 = icmp eq i32 %asmresult.i.i.i49, 0
  br i1 %cmp.i6.i.i50, label %copy_to_user.exit.i56, label %if.end.i.i.i51.out.i_crit_edge

if.end.i.i.i51.out.i_crit_edge:                   ; preds = %if.end.i.i.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

copy_to_user.exit.i56:                            ; preds = %if.end.i.i.i51
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i52 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ff_up.i, i32 noundef 96) #9
  %call.i12.i.i.i53 = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %ff_up.i, i32 noundef 96) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i53)
  %tobool.not.i54 = icmp eq i32 %call.i12.i.i.i53, 0
  %spec.select.i55 = select i1 %tobool.not.i54, i32 0, i32 -14
  br label %out.i

if.end59.i.i.i:                                   ; preds = %if.end10.i
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i, label %if.end59.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.end59.i.i.i.if.then11.i.i.i_crit_edge:         ; preds = %if.end59.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.end59.i.i.i
  %147 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 12, i32 -1226833920) #13
  %asmresult.i.i.i = extractvalue { i32, i32 } %147, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !78

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ff_erase.i, i32 noundef 12) #9
  %148 = call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i.i.i.i = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 4
  %150 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !73
  %and.i.i.i.i.i = and i32 %150, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #9, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ff_erase.i, ptr noundef %0, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %150) #9, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end200.i, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !78

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.end59.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i428.i = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %if.end59.i.i.i.if.then11.i.i.i_crit_edge ], [ 12, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 12, %res.0.i.i428.i
  %add.ptr.i.i.i = getelementptr i8, ptr %ff_erase.i, i32 %sub.i.i.i
  %151 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i428.i)
  br label %out.i

if.end200.i:                                      ; preds = %if.end.i.i.i
  %152 = ptrtoint ptr %ff_erase.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %ff_erase.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %153)
  %cmp.i407.i = icmp ugt i32 %153, 15
  br i1 %cmp.i407.i, label %if.end200.i.out.i_crit_edge, label %uinput_request_find.exit411.i

if.end200.i.out.i_crit_edge:                      ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

uinput_request_find.exit411.i:                    ; preds = %if.end200.i
  %arrayidx.i408.i = getelementptr %struct.uinput_device, ptr %2, i32 0, i32 9, i32 %153
  %154 = ptrtoint ptr %arrayidx.i408.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i408.i, align 4
  %tobool203.not.i = icmp eq ptr %155, null
  br i1 %tobool203.not.i, label %uinput_request_find.exit411.i.out.i_crit_edge, label %lor.lhs.false204.i

uinput_request_find.exit411.i.out.i_crit_edge:    ; preds = %uinput_request_find.exit411.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

lor.lhs.false204.i:                               ; preds = %uinput_request_find.exit411.i
  %code205.i = getelementptr inbounds %struct.uinput_request, ptr %155, i32 0, i32 1
  %156 = ptrtoint ptr %code205.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %code205.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %157)
  %cmp206.not.i = icmp eq i32 %157, 2
  br i1 %cmp206.not.i, label %if.end59.i.i376.i, label %lor.lhs.false204.i.out.i_crit_edge

lor.lhs.false204.i.out.i_crit_edge:               ; preds = %lor.lhs.false204.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end59.i.i376.i:                                ; preds = %lor.lhs.false204.i
  %158 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %5, align 4
  %u210.i = getelementptr inbounds %struct.uinput_request, ptr %155, i32 0, i32 4
  %159 = ptrtoint ptr %u210.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %u210.i, align 4
  %161 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %160, ptr %7, align 4
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #9
  %call.i.i377.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i377.i, label %if.end59.i.i376.i.out.i_crit_edge, label %copy_to_user.exit.i

if.end59.i.i376.i.out.i_crit_edge:                ; preds = %if.end59.i.i376.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

copy_to_user.exit.i:                              ; preds = %if.end59.i.i376.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i381.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %ff_erase.i, i32 noundef 12) #9
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %ff_erase.i, i32 noundef 12) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i.i)
  %tobool212.not.i = icmp eq i32 %call.i12.i.i.i, 0
  %spec.select444.i = select i1 %tobool212.not.i, i32 0, i32 -14
  br label %out.i

sw.bb215.i:                                       ; preds = %if.end10.i
  %call216.i = call fastcc i32 @uinput_ff_upload_from_user(ptr noundef %0, ptr noundef nonnull %ff_up.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call216.i)
  %tobool217.not.i = icmp eq i32 %call216.i, 0
  br i1 %tobool217.not.i, label %if.end219.i, label %sw.bb215.i.out.i_crit_edge

sw.bb215.i.out.i_crit_edge:                       ; preds = %sw.bb215.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end219.i:                                      ; preds = %sw.bb215.i
  %162 = ptrtoint ptr %ff_up.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %ff_up.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %163)
  %cmp.i412.i = icmp ugt i32 %163, 15
  br i1 %cmp.i412.i, label %if.end219.i.out.i_crit_edge, label %uinput_request_find.exit416.i

if.end219.i.out.i_crit_edge:                      ; preds = %if.end219.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

uinput_request_find.exit416.i:                    ; preds = %if.end219.i
  %arrayidx.i413.i = getelementptr %struct.uinput_device, ptr %2, i32 0, i32 9, i32 %163
  %164 = ptrtoint ptr %arrayidx.i413.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i413.i, align 4
  %tobool222.not.i = icmp eq ptr %165, null
  br i1 %tobool222.not.i, label %uinput_request_find.exit416.i.out.i_crit_edge, label %lor.lhs.false223.i

uinput_request_find.exit416.i.out.i_crit_edge:    ; preds = %uinput_request_find.exit416.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

lor.lhs.false223.i:                               ; preds = %uinput_request_find.exit416.i
  %code224.i = getelementptr inbounds %struct.uinput_request, ptr %165, i32 0, i32 1
  %166 = ptrtoint ptr %code224.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %code224.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %167)
  %cmp225.not.i = icmp eq i32 %167, 1
  br i1 %cmp225.not.i, label %lor.lhs.false226.i, label %lor.lhs.false223.i.out.i_crit_edge

lor.lhs.false223.i.out.i_crit_edge:               ; preds = %lor.lhs.false223.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

lor.lhs.false226.i:                               ; preds = %lor.lhs.false223.i
  %u227.i = getelementptr inbounds %struct.uinput_request, ptr %165, i32 0, i32 4
  %168 = ptrtoint ptr %u227.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %u227.i, align 4
  %tobool229.not.i = icmp eq ptr %169, null
  br i1 %tobool229.not.i, label %lor.lhs.false226.i.out.i_crit_edge, label %if.end231.i

lor.lhs.false226.i.out.i_crit_edge:               ; preds = %lor.lhs.false226.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end231.i:                                      ; preds = %lor.lhs.false226.i
  call void @__sanitizer_cov_trace_pc() #11
  %retval232.i = getelementptr inbounds %struct.uinput_ff_upload, ptr %ff_up.i, i32 0, i32 1
  %170 = ptrtoint ptr %retval232.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %retval232.i, align 4
  %retval233.i = getelementptr inbounds %struct.uinput_request, ptr %165, i32 0, i32 2
  %172 = ptrtoint ptr %retval233.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 %171, ptr %retval233.i, align 4
  %done.i = getelementptr inbounds %struct.uinput_request, ptr %165, i32 0, i32 3
  call void @complete(ptr noundef %done.i) #9
  br label %out.i

if.end59.i.i386.i:                                ; preds = %if.end10.i
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i387.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i387.i, label %if.end59.i.i386.i.if.then11.i.i403.i_crit_edge, label %land.lhs.true.i.i390.i

if.end59.i.i386.i.if.then11.i.i403.i_crit_edge:   ; preds = %if.end59.i.i386.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i403.i

land.lhs.true.i.i390.i:                           ; preds = %if.end59.i.i386.i
  %173 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 12, i32 -1226833920) #13, !srcloc !77
  %asmresult.i.i388.i = extractvalue { i32, i32 } %173, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i388.i)
  %cmp.i6.i389.i = icmp eq i32 %asmresult.i.i388.i, 0
  br i1 %cmp.i6.i389.i, label %if.end.i.i400.i, label %land.lhs.true.i.i390.i.if.then11.i.i403.i_crit_edge, !prof !78

land.lhs.true.i.i390.i.if.then11.i.i403.i_crit_edge: ; preds = %land.lhs.true.i.i390.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i403.i

if.end.i.i400.i:                                  ; preds = %land.lhs.true.i.i390.i
  %call.i.i.i391.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %ff_erase.i, i32 noundef 12) #9
  %174 = call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i.i.i392.i = and i32 %174, -16384
  %175 = inttoptr i32 %and.i.i.i.i.i.i392.i to ptr
  %cpu_domain.i.i.i.i.i393.i = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 4
  %176 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i393.i) #6, !srcloc !73
  %and.i.i.i.i394.i = and i32 %176, -13
  %or.i.i.i.i395.i = or i32 %and.i.i.i.i394.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i395.i) #9, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %call1.i.i.i396.i = call i32 @arm_copy_from_user(ptr noundef nonnull %ff_erase.i, ptr noundef %0, i32 noundef 12) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %176) #9, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i396.i)
  %tobool4.not.i.i399.i = icmp eq i32 %call1.i.i.i396.i, 0
  br i1 %tobool4.not.i.i399.i, label %if.end238.i, label %if.end.i.i400.i.if.then11.i.i403.i_crit_edge, !prof !78

if.end.i.i400.i.if.then11.i.i403.i_crit_edge:     ; preds = %if.end.i.i400.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i403.i

if.then11.i.i403.i:                               ; preds = %if.end.i.i400.i.if.then11.i.i403.i_crit_edge, %land.lhs.true.i.i390.i.if.then11.i.i403.i_crit_edge, %if.end59.i.i386.i.if.then11.i.i403.i_crit_edge
  %res.0.i.i398439.i = phi i32 [ %call1.i.i.i396.i, %if.end.i.i400.i.if.then11.i.i403.i_crit_edge ], [ 12, %if.end59.i.i386.i.if.then11.i.i403.i_crit_edge ], [ 12, %land.lhs.true.i.i390.i.if.then11.i.i403.i_crit_edge ]
  %sub.i.i401.i = sub i32 12, %res.0.i.i398439.i
  %add.ptr.i.i402.i = getelementptr i8, ptr %ff_erase.i, i32 %sub.i.i401.i
  %177 = call ptr @memset(ptr %add.ptr.i.i402.i, i32 0, i32 %res.0.i.i398439.i)
  br label %out.i

if.end238.i:                                      ; preds = %if.end.i.i400.i
  %178 = ptrtoint ptr %ff_erase.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %ff_erase.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %179)
  %cmp.i417.i = icmp ugt i32 %179, 15
  br i1 %cmp.i417.i, label %if.end238.i.out.i_crit_edge, label %uinput_request_find.exit421.i

if.end238.i.out.i_crit_edge:                      ; preds = %if.end238.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

uinput_request_find.exit421.i:                    ; preds = %if.end238.i
  %arrayidx.i418.i = getelementptr %struct.uinput_device, ptr %2, i32 0, i32 9, i32 %179
  %180 = ptrtoint ptr %arrayidx.i418.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx.i418.i, align 4
  %tobool241.not.i = icmp eq ptr %181, null
  br i1 %tobool241.not.i, label %uinput_request_find.exit421.i.out.i_crit_edge, label %lor.lhs.false242.i

uinput_request_find.exit421.i.out.i_crit_edge:    ; preds = %uinput_request_find.exit421.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

lor.lhs.false242.i:                               ; preds = %uinput_request_find.exit421.i
  %code243.i = getelementptr inbounds %struct.uinput_request, ptr %181, i32 0, i32 1
  %182 = ptrtoint ptr %code243.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %code243.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %183)
  %cmp244.not.i = icmp eq i32 %183, 2
  br i1 %cmp244.not.i, label %if.end246.i, label %lor.lhs.false242.i.out.i_crit_edge

lor.lhs.false242.i.out.i_crit_edge:               ; preds = %lor.lhs.false242.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end246.i:                                      ; preds = %lor.lhs.false242.i
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %5, align 4
  %retval248.i = getelementptr inbounds %struct.uinput_request, ptr %181, i32 0, i32 2
  %186 = ptrtoint ptr %retval248.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 %185, ptr %retval248.i, align 4
  %done249.i = getelementptr inbounds %struct.uinput_request, ptr %181, i32 0, i32 3
  call void @complete(ptr noundef %done249.i) #9
  br label %out.i

sw.epilog.i:                                      ; preds = %if.end10.i
  %shr.i = lshr i32 %cmd, 16
  %and.i = and i32 %shr.i, 16383
  %and250.i = and i32 %cmd, -1073676289
  %187 = zext i32 %and250.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %187, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %and250.i, label %sw.epilog.i.out.i_crit_edge [
    i32 -2147461844, label %sw.bb251.i
    i32 1073763588, label %sw.bb260.i
  ]

sw.epilog.i.out.i_crit_edge:                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

sw.bb251.i:                                       ; preds = %sw.epilog.i
  %state252.i = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %188 = ptrtoint ptr %state252.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %state252.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %189)
  %cmp253.not.i = icmp eq i32 %189, 2
  br i1 %cmp253.not.i, label %if.end255.i, label %sw.bb251.i.out.i_crit_edge

sw.bb251.i.out.i_crit_edge:                       ; preds = %sw.bb251.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end255.i:                                      ; preds = %sw.bb251.i
  %190 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %2, align 4
  %init_name.i.i = getelementptr inbounds %struct.input_dev, ptr %191, i32 0, i32 40, i32 3
  %192 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %193, null
  br i1 %tobool.not.i.i, label %dev_name.exit.i, label %if.end255.i.if.end.i25_crit_edge

if.end255.i.if.end.i25_crit_edge:                 ; preds = %if.end255.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i25

dev_name.exit.i:                                  ; preds = %if.end255.i
  %dev257.i = getelementptr inbounds %struct.input_dev, ptr %191, i32 0, i32 40
  %194 = ptrtoint ptr %dev257.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %dev257.i, align 4
  %tobool.not.i23 = icmp eq ptr %195, null
  br i1 %tobool.not.i23, label %dev_name.exit.i.out.i_crit_edge, label %dev_name.exit.i.if.end.i25_crit_edge

dev_name.exit.i.if.end.i25_crit_edge:             ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i25

dev_name.exit.i.out.i_crit_edge:                  ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end.i25:                                       ; preds = %dev_name.exit.i.if.end.i25_crit_edge, %if.end255.i.if.end.i25_crit_edge
  %retval.0.i423.i95 = phi ptr [ %195, %dev_name.exit.i.if.end.i25_crit_edge ], [ %193, %if.end255.i.if.end.i25_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i24 = icmp eq i32 %and.i, 0
  br i1 %cmp.i24, label %if.end.i25.out.i_crit_edge, label %if.end2.i

if.end.i25.out.i_crit_edge:                       ; preds = %if.end.i25
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end2.i:                                        ; preds = %if.end.i25
  %call.i26 = tail call i32 @strlen(ptr noundef nonnull %retval.0.i423.i95) #14
  %add.i = add i32 %call.i26, 1
  %196 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %and.i) #9
  tail call void @__check_object_size(ptr noundef nonnull %retval.0.i423.i95, i32 noundef %196, i1 noundef zeroext true) #9
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 174) #9
  %call.i.i.i29 = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i29, label %if.end2.i.copy_to_user.exit.i37_crit_edge, label %if.end.i.i.i33

if.end2.i.copy_to_user.exit.i37_crit_edge:        ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i37

if.end.i.i.i33:                                   ; preds = %if.end2.i
  %197 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %196, i32 -1226833920) #13, !srcloc !79
  %asmresult.i.i.i31 = extractvalue { i32, i32 } %197, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i31)
  %cmp.i6.i.i32 = icmp eq i32 %asmresult.i.i.i31, 0
  br i1 %cmp.i6.i.i32, label %if.then2.i.i.i, label %if.end.i.i.i33.copy_to_user.exit.i37_crit_edge

if.end.i.i.i33.copy_to_user.exit.i37_crit_edge:   ; preds = %if.end.i.i.i33
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit.i37

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i33
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i34 = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %retval.0.i423.i95, i32 noundef %196) #9
  %call.i12.i.i.i35 = tail call i32 @arm_copy_to_user(ptr noundef %0, ptr noundef nonnull %retval.0.i423.i95, i32 noundef %196) #9
  br label %copy_to_user.exit.i37

copy_to_user.exit.i37:                            ; preds = %if.then2.i.i.i, %if.end.i.i.i33.copy_to_user.exit.i37_crit_edge, %if.end2.i.copy_to_user.exit.i37_crit_edge
  %n.addr.0.i.i = phi i32 [ %196, %if.end2.i.copy_to_user.exit.i37_crit_edge ], [ %call.i12.i.i.i35, %if.then2.i.i.i ], [ %196, %if.end.i.i.i33.copy_to_user.exit.i37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool7.not.i36 = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool7.not.i36, label %if.end9.i43, label %copy_to_user.exit.i37.out.i_crit_edge

copy_to_user.exit.i37.out.i_crit_edge:            ; preds = %copy_to_user.exit.i37
  call void @__sanitizer_cov_trace_pc() #11
  br label %out.i

if.end9.i43:                                      ; preds = %copy_to_user.exit.i37
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %0, i32 %196
  %add.ptr10.i = getelementptr i8, ptr %add.ptr.i, i32 -1
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 835) #9
  %198 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i38 = and i32 %198, -16384
  %199 = inttoptr i32 %and.i.i.i.i38 to ptr
  %cpu_domain.i.i.i39 = getelementptr inbounds %struct.thread_info, ptr %199, i32 0, i32 4
  %200 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i39) #6, !srcloc !73
  %and.i.i40 = and i32 %200, -13
  %or.i.i41 = or i32 %and.i.i40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i41) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %201 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_1", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %add.ptr10.i, i8 0, i32 -1226833921) #9, !srcloc !80
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %200) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool13.not.i42 = icmp eq i32 %201, 0
  %spec.select25.i = select i1 %tobool13.not.i42, i32 %196, i32 -14
  br label %out.i

sw.bb260.i:                                       ; preds = %sw.epilog.i
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %setup.i) #9
  %202 = call ptr @memset(ptr %setup.i, i32 0, i32 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %and.i)
  %cmp.i2 = icmp ugt i32 %and.i, 28
  br i1 %cmp.i2, label %sw.bb260.i.uinput_abs_setup.exit_crit_edge, label %if.end.i4

sw.bb260.i.uinput_abs_setup.exit_crit_edge:       ; preds = %sw.bb260.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uinput_abs_setup.exit

if.end.i4:                                        ; preds = %sw.bb260.i
  %state.i3 = getelementptr inbounds %struct.uinput_device, ptr %2, i32 0, i32 2
  %203 = ptrtoint ptr %state.i3 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %state.i3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %204)
  %cmp1.i = icmp eq i32 %204, 2
  br i1 %cmp1.i, label %if.end.i4.uinput_abs_setup.exit_crit_edge, label %if.then.i.i.i.i

if.end.i4.uinput_abs_setup.exit_crit_edge:        ; preds = %if.end.i4
  call void @__sanitizer_cov_trace_pc() #11
  br label %uinput_abs_setup.exit

if.then.i.i.i.i:                                  ; preds = %if.end.i4
  call void @__check_object_size(ptr noundef nonnull %setup.i, i32 noundef %and.i, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i.i6 = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i.i6, label %if.then.i.i.i.i.if.end.i.i.i17_crit_edge, label %land.lhs.true.i.i.i9

if.then.i.i.i.i.if.end.i.i.i17_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i17

land.lhs.true.i.i.i9:                             ; preds = %if.then.i.i.i.i
  %205 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %0, i32 %and.i, i32 -1226833920) #13, !srcloc !77
  %asmresult.i.i.i7 = extractvalue { i32, i32 } %205, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i7)
  %cmp.i6.i.i8 = icmp eq i32 %asmresult.i.i.i7, 0
  br i1 %cmp.i6.i.i8, label %if.then.i7.i.i, label %land.lhs.true.i.i.i9.if.end.i.i.i17_crit_edge, !prof !78

land.lhs.true.i.i.i9.if.end.i.i.i17_crit_edge:    ; preds = %land.lhs.true.i.i.i9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i.i17

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i9
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i.i10 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %setup.i, i32 noundef %and.i) #9
  %206 = call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i.i.i.i11 = and i32 %206, -16384
  %207 = inttoptr i32 %and.i.i.i.i.i.i.i11 to ptr
  %cpu_domain.i.i.i.i.i.i12 = getelementptr inbounds %struct.thread_info, ptr %207, i32 0, i32 4
  %208 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i12) #6, !srcloc !73
  %and.i.i.i.i.i13 = and i32 %208, -13
  %or.i.i.i.i.i14 = or i32 %and.i.i.i.i.i13, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i14) #9, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %call1.i.i.i.i15 = call i32 @arm_copy_from_user(ptr noundef nonnull %setup.i, ptr noundef %0, i32 noundef %and.i) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %208) #9, !srcloc !74
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  br label %if.end.i.i.i17

if.end.i.i.i17:                                   ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i9.if.end.i.i.i17_crit_edge, %if.then.i.i.i.i.if.end.i.i.i17_crit_edge
  %res.0.i.i.i = phi i32 [ %and.i, %if.then.i.i.i.i.if.end.i.i.i17_crit_edge ], [ %call1.i.i.i.i15, %if.then.i7.i.i ], [ %and.i, %land.lhs.true.i.i.i9.if.end.i.i.i17_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i16 = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i16, label %if.end5.i, label %if.then11.i.i.i20, !prof !78

if.then11.i.i.i20:                                ; preds = %if.end.i.i.i17
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i.i18 = sub i32 %and.i, %res.0.i.i.i
  %add.ptr.i.i.i19 = getelementptr i8, ptr %setup.i, i32 %sub.i.i.i18
  %209 = call ptr @memset(ptr %add.ptr.i.i.i19, i32 0, i32 %res.0.i.i.i)
  br label %uinput_abs_setup.exit

if.end5.i:                                        ; preds = %if.end.i.i.i17
  %210 = ptrtoint ptr %setup.i to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %setup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %211)
  %cmp6.i = icmp ugt i16 %211, 63
  br i1 %cmp6.i, label %if.end5.i.uinput_abs_setup.exit_crit_edge, label %if.end9.i

if.end5.i.uinput_abs_setup.exit_crit_edge:        ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uinput_abs_setup.exit

if.end9.i:                                        ; preds = %if.end5.i
  %conv.i = zext i16 %211 to i32
  %212 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %2, align 4
  %absinfo.i = getelementptr inbounds %struct.uinput_abs_setup, ptr %setup.i, i32 0, i32 1
  %minimum.i.i = getelementptr inbounds %struct.uinput_abs_setup, ptr %setup.i, i32 0, i32 1, i32 1
  %214 = ptrtoint ptr %minimum.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %minimum.i.i, align 4
  %maximum.i.i = getelementptr inbounds %struct.uinput_abs_setup, ptr %setup.i, i32 0, i32 1, i32 2
  %216 = ptrtoint ptr %maximum.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %maximum.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %215)
  %cmp.not.i.i = icmp ne i32 %215, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %cmp1.not.i.i = icmp ne i32 %217, 0
  %or.cond.i.i = select i1 %cmp.not.i.i, i1 true, i1 %cmp1.not.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %217, i32 %215)
  %cmp2.i.i = icmp slt i32 %217, %215
  %or.cond1.i.i = select i1 %or.cond.i.i, i1 %cmp2.i.i, i1 false
  br i1 %or.cond1.i.i, label %do.end.i.i, label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str, i32 noundef %conv.i, i32 noundef %215, i32 noundef %217) #12
  br label %uinput_abs_setup.exit

if.end.i.i:                                       ; preds = %if.end9.i
  %218 = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %217, i32 %215) #9
  %219 = extractvalue { i32, i1 } %218, 1
  br i1 %219, label %if.end.i.i.if.end16.i_crit_edge, label %land.lhs.true8.i.i

if.end.i.i.if.end16.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

land.lhs.true8.i.i:                               ; preds = %if.end.i.i
  %220 = extractvalue { i32, i1 } %218, 0
  %flat.i.i = getelementptr inbounds %struct.uinput_abs_setup, ptr %setup.i, i32 0, i32 1, i32 4
  %221 = ptrtoint ptr %flat.i.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %flat.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %222, i32 %220)
  %cmp9.i.i = icmp sgt i32 %222, %220
  br i1 %cmp9.i.i, label %do.end14.i.i, label %land.lhs.true8.i.i.if.end16.i_crit_edge

land.lhs.true8.i.i.if.end16.i_crit_edge:          ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

do.end14.i.i:                                     ; preds = %land.lhs.true8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str, i32 noundef %conv.i, i32 noundef %222, i32 noundef %215, i32 noundef %217) #12
  br label %uinput_abs_setup.exit

if.end16.i:                                       ; preds = %land.lhs.true8.i.i.if.end16.i_crit_edge, %if.end.i.i.if.end16.i_crit_edge
  call void @input_alloc_absinfo(ptr noundef %213) #9
  %absinfo17.i = getelementptr inbounds %struct.input_dev, ptr %213, i32 0, i32 26
  %223 = ptrtoint ptr %absinfo17.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %absinfo17.i, align 8
  %tobool18.not.i = icmp eq ptr %224, null
  br i1 %tobool18.not.i, label %if.end16.i.uinput_abs_setup.exit_crit_edge, label %if.end20.i

if.end16.i.uinput_abs_setup.exit_crit_edge:       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uinput_abs_setup.exit

if.end20.i:                                       ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #11
  %225 = ptrtoint ptr %setup.i to i32
  call void @__asan_load2_noabort(i32 %225)
  %226 = load i16, ptr %setup.i, align 4
  %conv22.i = zext i16 %226 to i32
  %absbit.i21 = getelementptr inbounds %struct.input_dev, ptr %213, i32 0, i32 8
  call void @_set_bit(i32 noundef %conv22.i, ptr noundef %absbit.i21) #9
  %227 = ptrtoint ptr %absinfo17.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %absinfo17.i, align 8
  %229 = ptrtoint ptr %setup.i to i32
  call void @__asan_load2_noabort(i32 %229)
  %230 = load i16, ptr %setup.i, align 4
  %idxprom.i = zext i16 %230 to i32
  %arrayidx.i = getelementptr %struct.input_absinfo, ptr %228, i32 %idxprom.i
  %231 = call ptr @memcpy(ptr %arrayidx.i, ptr %absinfo.i, i32 24)
  br label %uinput_abs_setup.exit

uinput_abs_setup.exit:                            ; preds = %if.end20.i, %if.end16.i.uinput_abs_setup.exit_crit_edge, %do.end14.i.i, %do.end.i.i, %if.end5.i.uinput_abs_setup.exit_crit_edge, %if.then11.i.i.i20, %if.end.i4.uinput_abs_setup.exit_crit_edge, %sw.bb260.i.uinput_abs_setup.exit_crit_edge
  %retval.0.i22 = phi i32 [ 0, %if.end20.i ], [ -7, %sw.bb260.i.uinput_abs_setup.exit_crit_edge ], [ -22, %if.end.i4.uinput_abs_setup.exit_crit_edge ], [ -34, %if.end5.i.uinput_abs_setup.exit_crit_edge ], [ -12, %if.end16.i.uinput_abs_setup.exit_crit_edge ], [ -22, %do.end.i.i ], [ -22, %do.end14.i.i ], [ -14, %if.then11.i.i.i20 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %setup.i) #9
  br label %out.i

out.i:                                            ; preds = %uinput_abs_setup.exit, %if.end9.i43, %copy_to_user.exit.i37.out.i_crit_edge, %if.end.i25.out.i_crit_edge, %dev_name.exit.i.out.i_crit_edge, %sw.bb251.i.out.i_crit_edge, %sw.epilog.i.out.i_crit_edge, %if.end246.i, %lor.lhs.false242.i.out.i_crit_edge, %uinput_request_find.exit421.i.out.i_crit_edge, %if.end238.i.out.i_crit_edge, %if.then11.i.i403.i, %if.end231.i, %lor.lhs.false226.i.out.i_crit_edge, %lor.lhs.false223.i.out.i_crit_edge, %uinput_request_find.exit416.i.out.i_crit_edge, %if.end219.i.out.i_crit_edge, %sw.bb215.i.out.i_crit_edge, %copy_to_user.exit.i, %if.end59.i.i376.i.out.i_crit_edge, %lor.lhs.false204.i.out.i_crit_edge, %uinput_request_find.exit411.i.out.i_crit_edge, %if.end200.i.out.i_crit_edge, %if.then11.i.i.i, %copy_to_user.exit.i56, %if.end.i.i.i51.out.i_crit_edge, %if.end59.i.i.i48.out.i_crit_edge, %lor.lhs.false178.i.out.i_crit_edge, %lor.lhs.false.i.out.i_crit_edge, %uinput_request_find.exit.i.out.i_crit_edge, %if.end174.i.out.i_crit_edge, %sw.bb170.i.out.i_crit_edge, %if.end165.i, %if.then163.i, %sw.bb156.i.out.i_crit_edge, %if.else150.i, %sw.bb142.i.out.i_crit_edge, %if.else136.i, %sw.bb128.i.out.i_crit_edge, %if.else122.i, %sw.bb114.i.out.i_crit_edge, %if.else108.i, %sw.bb100.i.out.i_crit_edge, %if.else94.i, %sw.bb86.i.out.i_crit_edge, %if.else80.i, %sw.bb72.i.out.i_crit_edge, %if.else66.i, %sw.bb58.i.out.i_crit_edge, %if.else52.i, %sw.bb44.i.out.i_crit_edge, %if.else38.i, %sw.bb30.i.out.i_crit_edge, %if.else25.i, %sw.bb21.i.out.i_crit_edge, %uinput_dev_setup.exit, %sw.bb18.i, %fail1.i, %if.end54.i, %do.end.i, %sw.bb.i, %if.then3.i.out.i_crit_edge
  %retval1.0.i = phi i32 [ %retval.0.i22, %uinput_abs_setup.exit ], [ 0, %if.end246.i ], [ %call216.i, %sw.bb215.i.out.i_crit_edge ], [ 0, %if.end231.i ], [ %call171.i, %sw.bb170.i.out.i_crit_edge ], [ %124, %if.then163.i ], [ 0, %if.end165.i ], [ %retval.0.i79, %uinput_dev_setup.exit ], [ 0, %sw.bb18.i ], [ -12, %if.then3.i.out.i_crit_edge ], [ %spec.select.i, %sw.bb.i ], [ 0, %if.else25.i ], [ -22, %sw.bb21.i.out.i_crit_edge ], [ 0, %if.else38.i ], [ -22, %sw.bb30.i.out.i_crit_edge ], [ 0, %if.else52.i ], [ -22, %sw.bb44.i.out.i_crit_edge ], [ 0, %if.else66.i ], [ -22, %sw.bb58.i.out.i_crit_edge ], [ 0, %if.else80.i ], [ -22, %sw.bb72.i.out.i_crit_edge ], [ 0, %if.else94.i ], [ -22, %sw.bb86.i.out.i_crit_edge ], [ 0, %if.else108.i ], [ -22, %sw.bb100.i.out.i_crit_edge ], [ 0, %if.else122.i ], [ -22, %sw.bb114.i.out.i_crit_edge ], [ 0, %if.else136.i ], [ -22, %sw.bb128.i.out.i_crit_edge ], [ 0, %if.else150.i ], [ -22, %sw.bb142.i.out.i_crit_edge ], [ -22, %sw.bb156.i.out.i_crit_edge ], [ -22, %lor.lhs.false178.i.out.i_crit_edge ], [ -22, %lor.lhs.false.i.out.i_crit_edge ], [ -22, %uinput_request_find.exit.i.out.i_crit_edge ], [ -22, %lor.lhs.false204.i.out.i_crit_edge ], [ -22, %uinput_request_find.exit411.i.out.i_crit_edge ], [ -22, %lor.lhs.false226.i.out.i_crit_edge ], [ -22, %lor.lhs.false223.i.out.i_crit_edge ], [ -22, %uinput_request_find.exit416.i.out.i_crit_edge ], [ -22, %lor.lhs.false242.i.out.i_crit_edge ], [ -22, %uinput_request_find.exit421.i.out.i_crit_edge ], [ -2, %sw.bb251.i.out.i_crit_edge ], [ -22, %sw.epilog.i.out.i_crit_edge ], [ -22, %if.end174.i.out.i_crit_edge ], [ -14, %if.then11.i.i.i ], [ -22, %if.end200.i.out.i_crit_edge ], [ -14, %if.end59.i.i376.i.out.i_crit_edge ], [ -22, %if.end219.i.out.i_crit_edge ], [ -14, %if.then11.i.i403.i ], [ -22, %if.end238.i.out.i_crit_edge ], [ %spec.select444.i, %copy_to_user.exit.i ], [ -22, %do.end.i ], [ %error.0.i, %fail1.i ], [ 0, %if.end54.i ], [ -14, %if.end59.i.i.i48.out.i_crit_edge ], [ -14, %if.end.i.i.i51.out.i_crit_edge ], [ %spec.select.i55, %copy_to_user.exit.i56 ], [ %spec.select25.i, %if.end9.i43 ], [ -2, %dev_name.exit.i.out.i_crit_edge ], [ -22, %if.end.i25.out.i_crit_edge ], [ -14, %copy_to_user.exit.i37.out.i_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %uinput_ioctl_handler.exit

uinput_ioctl_handler.exit:                        ; preds = %out.i, %entry.uinput_ioctl_handler.exit_crit_edge
  %retval.0.i = phi i32 [ %retval1.0.i, %out.i ], [ %call.i, %entry.uinput_ioctl_handler.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %ff_erase.i) #9
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %ff_up.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uinput_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 576) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mutex = getelementptr inbounds %struct.uinput_device, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.16, ptr noundef nonnull @uinput_open.__key) #9
  %requests_lock = getelementptr inbounds %struct.uinput_device, ptr %call7.i.i, i32 0, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %requests_lock, ptr noundef nonnull @.str.18, ptr noundef nonnull @uinput_open.__key.17, i16 noundef signext 3) #9
  %requests_waitq = getelementptr inbounds %struct.uinput_device, ptr %call7.i.i, i32 0, i32 10
  tail call void @__init_waitqueue_head(ptr noundef %requests_waitq, ptr noundef nonnull @.str.20, ptr noundef nonnull @uinput_open.__key.19) #9
  %waitq = getelementptr inbounds %struct.uinput_device, ptr %call7.i.i, i32 0, i32 3
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.22, ptr noundef nonnull @uinput_open.__key.21) #9
  %state = getelementptr inbounds %struct.uinput_device, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %state, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %private_data, align 4
  %call11 = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #9
  br label %cleanup

cleanup:                                          ; preds = %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uinput_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call fastcc void @uinput_destroy_device(ptr noundef %1)
  tail call void @kfree(ptr noundef %1) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_event_to_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_event_from_user(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memdup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_alloc_absinfo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @uinput_destroy_device(ptr noundef %udev) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %udev, align 4
  %state = getelementptr inbounds %struct.uinput_device, ptr %udev, i32 0, i32 2
  %2 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state, align 4
  store i32 0, ptr %state, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 8
  %phys4 = getelementptr inbounds %struct.input_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %phys4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phys4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %requests_lock.i = getelementptr inbounds %struct.uinput_device, ptr %udev, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %requests_lock.i) #9
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then5
  %i.08.i = phi i32 [ 0, %if.then5 ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 %i.08.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %retval.i = getelementptr inbounds %struct.uinput_request, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %retval.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -19, ptr %retval.i, align 4
  %done.i = getelementptr inbounds %struct.uinput_request, ptr %9, i32 0, i32 3
  tail call void @complete(ptr noundef %done.i) #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %uinput_flush_requests.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

uinput_flush_requests.exit:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock(ptr noundef %requests_lock.i) #9
  tail call void @input_unregister_device(ptr noundef nonnull %1) #9
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @input_free_device(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.else, %uinput_flush_requests.exit
  tail call void @kfree(ptr noundef %5) #9
  tail call void @kfree(ptr noundef %7) #9
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %udev, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %entry.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @strndup_user(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uinput_ff_upload_from_user(ptr noundef %buffer, ptr noundef %ff_up) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_fault(ptr noundef nonnull @.str.15, i32 noundef 156) #9
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %entry.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

entry.if.then11.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %entry
  %0 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 96, i32 -1226833920) #13, !srcloc !77
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !78

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %ff_up, i32 noundef 96) #9
  %1 = tail call i32 @llvm.read_register.i32(metadata !62) #9
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 4
  %3 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !73
  %and.i.i.i.i = and i32 %3, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %ff_up, ptr noundef %buffer, i32 noundef 96) #9
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %3) #9, !srcloc !74
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.copy_from_user.exit_crit_edge, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !78

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then11.i.i

if.end.i.i.copy_from_user.exit_crit_edge:         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_from_user.exit

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %entry.if.then11.i.i_crit_edge
  %res.0.i.i3 = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 96, %entry.if.then11.i.i_crit_edge ], [ 96, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 96, %res.0.i.i3
  %add.ptr.i.i = getelementptr i8, ptr %ff_up, i32 %sub.i.i
  %4 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i3)
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %if.then11.i.i, %if.end.i.i.copy_from_user.exit_crit_edge
  %5 = phi i32 [ 0, %if.end.i.i.copy_from_user.exit_crit_edge ], [ -14, %if.then11.i.i ]
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_mt_init_slots(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uinput_dev_upload_effect(ptr nocapture noundef readonly %dev, ptr noundef %effect, ptr noundef %old) #2 align 64 {
entry:
  %request = alloca %struct.uinput_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %request) #9
  %2 = call ptr @memset(ptr %request, i32 255, i32 68)
  %3 = ptrtoint ptr %effect to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %effect, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 81, i16 %4)
  %cmp = icmp eq i16 %4, 81
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %u = getelementptr inbounds %struct.ff_effect, ptr %effect, i32 0, i32 5
  %5 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %u, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 93, i16 %6)
  %cmp3 = icmp eq i16 %6, 93
  br i1 %cmp3, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %code = getelementptr inbounds %struct.uinput_request, ptr %request, i32 0, i32 1
  %7 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %code, align 4
  %u5 = getelementptr inbounds %struct.uinput_request, ptr %request, i32 0, i32 4
  %8 = ptrtoint ptr %u5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %effect, ptr %u5, align 4
  %old8 = getelementptr inbounds %struct.uinput_request, ptr %request, i32 0, i32 4, i32 0, i32 1
  %9 = ptrtoint ptr %old8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %old, ptr %old8, align 4
  %call9 = call fastcc i32 @uinput_request_submit(ptr noundef %1, ptr noundef nonnull %request)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %request) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uinput_dev_erase_effect(ptr noundef %dev, i32 noundef %effect_id) #2 align 64 {
entry:
  %request = alloca %struct.uinput_request, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %request) #9
  %2 = call ptr @memset(ptr %request, i32 255, i32 76)
  %evbit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 5
  %3 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %evbit, align 4
  %5 = and i32 %4, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %code = getelementptr inbounds %struct.uinput_request, ptr %request, i32 0, i32 1
  %6 = ptrtoint ptr %code to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %code, align 4
  %u = getelementptr inbounds %struct.uinput_request, ptr %request, i32 0, i32 4
  %7 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %effect_id, ptr %u, align 4
  %call2 = call fastcc i32 @uinput_request_submit(ptr noundef %1, ptr noundef nonnull %request)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -38, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %request) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uinput_dev_playback(ptr nocapture noundef readonly %dev, i32 noundef %effect_id, i32 noundef %value) #2 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #9
  %2 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #9
  %head.i = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %head.i, align 1
  %idxprom.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr %struct.uinput_device, ptr %1, i32 0, i32 7, i32 %idxprom.i
  %5 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ts.i, align 8
  %conv.i = trunc i64 %6 to i32
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %7 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %8, 1000
  %conv4.i = trunc i32 %effect_id to i16
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %arrayidx.i, align 4
  %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %10 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div.i, ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %11 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 21, ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 10
  %12 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv4.i, ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i, align 2
  %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %13 = ptrtoint ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %value, ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i, align 4
  %14 = add i8 %4, 1
  %15 = and i8 %14, 15
  store i8 %15, ptr %head.i, align 1
  %waitq.i = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 3
  call void @__wake_up(ptr noundef %waitq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uinput_dev_set_gain(ptr nocapture noundef readonly %dev, i16 noundef zeroext %gain) #2 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %gain to i32
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #9
  %2 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #9
  %head.i = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %head.i, align 1
  %idxprom.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr %struct.uinput_device, ptr %1, i32 0, i32 7, i32 %idxprom.i
  %5 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ts.i, align 8
  %conv.i = trunc i64 %6 to i32
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %7 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %8, 1000
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %arrayidx.i, align 4
  %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %10 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div.i, ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %11 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 21, ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 10
  %12 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 96, ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i, align 2
  %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %13 = ptrtoint ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i, align 4
  %14 = add i8 %4, 1
  %15 = and i8 %14, 15
  store i8 %15, ptr %head.i, align 1
  %waitq.i = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 3
  call void @__wake_up(ptr noundef %waitq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @uinput_dev_set_autocenter(ptr nocapture noundef readonly %dev, i16 noundef zeroext %magnitude) #2 align 64 {
entry:
  %ts.i = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i16 %magnitude to i32
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i) #9
  %2 = call ptr @memset(ptr %ts.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i) #9
  %head.i = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %head.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %head.i, align 1
  %idxprom.i = zext i8 %4 to i32
  %arrayidx.i = getelementptr %struct.uinput_device, ptr %1, i32 0, i32 7, i32 %idxprom.i
  %5 = ptrtoint ptr %ts.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ts.i, align 8
  %conv.i = trunc i64 %6 to i32
  %tv_nsec.i = getelementptr inbounds %struct.timespec64, ptr %ts.i, i32 0, i32 1
  %7 = ptrtoint ptr %tv_nsec.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec.i, align 8
  %div.i = sdiv i32 %8, 1000
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv.i, ptr %arrayidx.i, align 4
  %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %10 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div.i, ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i, align 4
  %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 8
  %11 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 21, ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i, align 4
  %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 10
  %12 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 97, ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i, align 2
  %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i = getelementptr inbounds i8, ptr %arrayidx.i, i32 12
  %13 = ptrtoint ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i, align 4
  %14 = add i8 %4, 1
  %15 = and i8 %14, 15
  store i8 %15, ptr %head.i, align 1
  %waitq.i = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 3
  call void @__wake_up(ptr noundef %waitq.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uinput_dev_flush(ptr noundef %dev, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %file, null
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @input_ff_flush(ptr noundef %dev, ptr noundef nonnull %file) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uinput_dev_event(ptr nocapture noundef readonly %dev, i32 noundef %type, i32 noundef %code, i32 noundef %value) #2 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #9
  %2 = call ptr @memset(ptr %ts, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts) #9
  %head = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %head, align 1
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr %struct.uinput_device, ptr %1, i32 0, i32 7, i32 %idxprom
  %5 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %ts, align 8
  %conv = trunc i64 %6 to i32
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %7 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %8, 1000
  %conv2 = trunc i32 %type to i16
  %conv4 = trunc i32 %code to i16
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv, ptr %arrayidx, align 4
  %.compoundliteral.sroa.2.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %10 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx, align 4
  %.compoundliteral.sroa.3.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %11 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv2, ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx, align 4
  %.compoundliteral.sroa.4.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 10
  %12 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv4, ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx, align 2
  %.compoundliteral.sroa.5.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %13 = ptrtoint ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %value, ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx, align 4
  %14 = add i8 %4, 1
  %15 = and i8 %14, 15
  store i8 %15, ptr %head, align 1
  %waitq = getelementptr inbounds %struct.uinput_device, ptr %1, i32 0, i32 3
  call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_ff_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @uinput_request_submit(ptr noundef %udev, ptr noundef %request) unnamed_addr #2 align 64 {
entry:
  %ts.i.i = alloca %struct.timespec64, align 8
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 131) #9
  %call.i = tail call fastcc zeroext i1 @uinput_request_alloc_id(ptr noundef %udev, ptr noundef %request) #9
  br i1 %call.i, label %entry.if.end_crit_edge, label %if.then.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  %0 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #9
  %requests_waitq.i = getelementptr inbounds %struct.uinput_device, ptr %udev, i32 0, i32 10
  %call527.i = call i32 @prepare_to_wait_event(ptr noundef %requests_waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #9
  %call628.i = call fastcc zeroext i1 @uinput_request_alloc_id(ptr noundef %udev, ptr noundef %request) #9
  br i1 %call628.i, label %if.then.i.uinput_request_reserve_slot.exit.thread27_crit_edge, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  br label %if.end.i

if.then.i.uinput_request_reserve_slot.exit.thread27_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uinput_request_reserve_slot.exit.thread27

if.end.i:                                         ; preds = %cleanup.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge
  %call529.i = phi i32 [ %call5.i, %cleanup.i.if.end.i_crit_edge ], [ %call527.i, %if.then.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call529.i)
  %tobool.not.i = icmp eq i32 %call529.i, 0
  br i1 %tobool.not.i, label %cleanup.i, label %uinput_request_reserve_slot.exit

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #9
  %call5.i = call i32 @prepare_to_wait_event(ptr noundef %requests_waitq.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #9
  %call6.i = call fastcc zeroext i1 @uinput_request_alloc_id(ptr noundef %udev, ptr noundef %request) #9
  br i1 %call6.i, label %cleanup.i.uinput_request_reserve_slot.exit.thread27_crit_edge, label %cleanup.i.if.end.i_crit_edge

cleanup.i.if.end.i_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

cleanup.i.uinput_request_reserve_slot.exit.thread27_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %uinput_request_reserve_slot.exit.thread27

uinput_request_reserve_slot.exit.thread27:        ; preds = %cleanup.i.uinput_request_reserve_slot.exit.thread27_crit_edge, %if.then.i.uinput_request_reserve_slot.exit.thread27_crit_edge
  call void @finish_wait(ptr noundef %requests_waitq.i, ptr noundef nonnull %__wq_entry.i) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %if.end

uinput_request_reserve_slot.exit:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #9
  br label %cleanup

if.end:                                           ; preds = %uinput_request_reserve_slot.exit.thread27, %entry.if.end_crit_edge
  %mutex.i = getelementptr inbounds %struct.uinput_device, ptr %udev, i32 0, i32 1
  %call.i20 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex.i, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20)
  %tobool.not.i21 = icmp eq i32 %call.i20, 0
  br i1 %tobool.not.i21, label %if.end.i22, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end.i22:                                       ; preds = %if.end
  %state.i = getelementptr inbounds %struct.uinput_device, ptr %udev, i32 0, i32 2
  %1 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %state.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %cmp.not.i = icmp eq i32 %2, 2
  br i1 %cmp.not.i, label %if.end5, label %uinput_request_send.exit

uinput_request_send.exit:                         ; preds = %if.end.i22
  call void @__sanitizer_cov_trace_pc() #11
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  br label %out

if.end5:                                          ; preds = %if.end.i22
  %done.i = getelementptr inbounds %struct.uinput_request, ptr %request, i32 0, i32 3
  %3 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %done.i, align 4
  %wait.i.i = getelementptr inbounds %struct.uinput_request, ptr %request, i32 0, i32 3, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @init_completion.__key) #9
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %code.i = getelementptr inbounds %struct.uinput_request, ptr %request, i32 0, i32 1
  %6 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %code.i, align 4
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %request, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.input_dev, ptr %5, i32 0, i32 40, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts.i.i) #9
  %12 = call ptr @memset(ptr %ts.i.i, i32 255, i32 16)
  call void @ktime_get_ts64(ptr noundef nonnull %ts.i.i) #9
  %head.i.i = getelementptr inbounds %struct.uinput_device, ptr %11, i32 0, i32 5
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %head.i.i, align 1
  %idxprom.i.i = zext i8 %14 to i32
  %arrayidx.i.i = getelementptr %struct.uinput_device, ptr %11, i32 0, i32 7, i32 %idxprom.i.i
  %15 = ptrtoint ptr %ts.i.i to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %ts.i.i, align 8
  %conv.i.i = trunc i64 %16 to i32
  %tv_nsec.i.i = getelementptr inbounds %struct.timespec64, ptr %ts.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %tv_nsec.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tv_nsec.i.i, align 8
  %div.i.i = sdiv i32 %18, 1000
  %conv4.i.i = trunc i32 %7 to i16
  %19 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv.i.i, ptr %arrayidx.i.i, align 4
  %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 4
  %20 = ptrtoint ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %div.i.i, ptr %.compoundliteral.sroa.2.0.arrayidx.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 8
  %21 = ptrtoint ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 257, ptr %.compoundliteral.sroa.3.0.arrayidx.sroa_idx.i.i, align 4
  %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 10
  %22 = ptrtoint ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv4.i.i, ptr %.compoundliteral.sroa.4.0.arrayidx.sroa_idx.i.i, align 2
  %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i.i = getelementptr inbounds i8, ptr %arrayidx.i.i, i32 12
  %23 = ptrtoint ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %9, ptr %.compoundliteral.sroa.5.0.arrayidx.sroa_idx.i.i, align 4
  %24 = add i8 %14, 1
  %25 = and i8 %24, 15
  store i8 %25, ptr %head.i.i, align 1
  %waitq.i.i = getelementptr inbounds %struct.uinput_device, ptr %11, i32 0, i32 3
  call void @__wake_up(ptr noundef %waitq.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts.i.i) #9
  call void @mutex_unlock(ptr noundef %mutex.i) #9
  %call6 = call i32 @wait_for_completion_timeout(ptr noundef %done.i, i32 noundef 3000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end5.out_crit_edge, label %if.end9

if.end5.out_crit_edge:                            ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  %retval10 = getelementptr inbounds %struct.uinput_request, ptr %request, i32 0, i32 2
  %26 = ptrtoint ptr %retval10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %retval10, align 4
  br label %out

out:                                              ; preds = %if.end9, %if.end5.out_crit_edge, %uinput_request_send.exit, %if.end.out_crit_edge
  %retval1.0 = phi i32 [ -19, %uinput_request_send.exit ], [ %27, %if.end9 ], [ -110, %if.end5.out_crit_edge ], [ %call.i20, %if.end.out_crit_edge ]
  %28 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %request, align 4
  %requests_lock.i = getelementptr inbounds %struct.uinput_device, ptr %udev, i32 0, i32 11
  call void @_raw_spin_lock(ptr noundef %requests_lock.i) #9
  %arrayidx.i = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 %29
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx.i, align 4
  call void @_raw_spin_unlock(ptr noundef %requests_lock.i) #9
  %requests_waitq.i24 = getelementptr inbounds %struct.uinput_device, ptr %udev, i32 0, i32 10
  call void @__wake_up(ptr noundef %requests_waitq.i24, i32 noundef 3, i32 noundef 1, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %out, %uinput_request_reserve_slot.exit
  %retval.0 = phi i32 [ %retval1.0, %out ], [ %call529.i, %uinput_request_reserve_slot.exit ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @uinput_request_alloc_id(ptr noundef %udev, ptr noundef %request) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %requests_lock = getelementptr inbounds %struct.uinput_device, ptr %udev, i32 0, i32 11
  tail call void @_raw_spin_lock(ptr noundef %requests_lock) #9
  %arrayidx = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %for.inc

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %for.inc.14.if.then_crit_edge, %for.inc.13.if.then_crit_edge, %for.inc.12.if.then_crit_edge, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %entry.if.then_crit_edge
  %id.017.lcssa = phi i32 [ 0, %entry.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ], [ 10, %for.inc.9.if.then_crit_edge ], [ 11, %for.inc.10.if.then_crit_edge ], [ 12, %for.inc.11.if.then_crit_edge ], [ 13, %for.inc.12.if.then_crit_edge ], [ 14, %for.inc.13.if.then_crit_edge ], [ 15, %for.inc.14.if.then_crit_edge ]
  %arrayidx.lcssa = phi ptr [ %arrayidx, %entry.if.then_crit_edge ], [ %arrayidx.1, %for.inc.if.then_crit_edge ], [ %arrayidx.2, %for.inc.1.if.then_crit_edge ], [ %arrayidx.3, %for.inc.2.if.then_crit_edge ], [ %arrayidx.4, %for.inc.3.if.then_crit_edge ], [ %arrayidx.5, %for.inc.4.if.then_crit_edge ], [ %arrayidx.6, %for.inc.5.if.then_crit_edge ], [ %arrayidx.7, %for.inc.6.if.then_crit_edge ], [ %arrayidx.8, %for.inc.7.if.then_crit_edge ], [ %arrayidx.9, %for.inc.8.if.then_crit_edge ], [ %arrayidx.10, %for.inc.9.if.then_crit_edge ], [ %arrayidx.11, %for.inc.10.if.then_crit_edge ], [ %arrayidx.12, %for.inc.11.if.then_crit_edge ], [ %arrayidx.13, %for.inc.12.if.then_crit_edge ], [ %arrayidx.14, %for.inc.13.if.then_crit_edge ], [ %arrayidx.15, %for.inc.14.if.then_crit_edge ]
  %2 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %id.017.lcssa, ptr %request, align 4
  %3 = ptrtoint ptr %arrayidx.lcssa to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %request, ptr %arrayidx.lcssa, align 4
  br label %for.end

for.inc:                                          ; preds = %entry
  %arrayidx.1 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %for.inc.if.then_crit_edge, label %for.inc.1

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  %arrayidx.2 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %for.inc.1.if.then_crit_edge, label %for.inc.2

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  %arrayidx.3 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 3
  %8 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %for.inc.2.if.then_crit_edge, label %for.inc.3

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  %arrayidx.4 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 4
  %10 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %11, null
  br i1 %tobool.not.4, label %for.inc.3.if.then_crit_edge, label %for.inc.4

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  %arrayidx.5 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 5
  %12 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %13, null
  br i1 %tobool.not.5, label %for.inc.4.if.then_crit_edge, label %for.inc.5

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  %arrayidx.6 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 6
  %14 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %15, null
  br i1 %tobool.not.6, label %for.inc.5.if.then_crit_edge, label %for.inc.6

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  %arrayidx.7 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 7
  %16 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.7, align 4
  %tobool.not.7 = icmp eq ptr %17, null
  br i1 %tobool.not.7, label %for.inc.6.if.then_crit_edge, label %for.inc.7

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  %arrayidx.8 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 8
  %18 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.8, align 4
  %tobool.not.8 = icmp eq ptr %19, null
  br i1 %tobool.not.8, label %for.inc.7.if.then_crit_edge, label %for.inc.8

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  %arrayidx.9 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 9
  %20 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.9, align 4
  %tobool.not.9 = icmp eq ptr %21, null
  br i1 %tobool.not.9, label %for.inc.8.if.then_crit_edge, label %for.inc.9

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  %arrayidx.10 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 10
  %22 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.10, align 4
  %tobool.not.10 = icmp eq ptr %23, null
  br i1 %tobool.not.10, label %for.inc.9.if.then_crit_edge, label %for.inc.10

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  %arrayidx.11 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 11
  %24 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.11, align 4
  %tobool.not.11 = icmp eq ptr %25, null
  br i1 %tobool.not.11, label %for.inc.10.if.then_crit_edge, label %for.inc.11

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  %arrayidx.12 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 12
  %26 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx.12, align 4
  %tobool.not.12 = icmp eq ptr %27, null
  br i1 %tobool.not.12, label %for.inc.11.if.then_crit_edge, label %for.inc.12

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  %arrayidx.13 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 13
  %28 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.13, align 4
  %tobool.not.13 = icmp eq ptr %29, null
  br i1 %tobool.not.13, label %for.inc.12.if.then_crit_edge, label %for.inc.13

for.inc.12.if.then_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.13:                                       ; preds = %for.inc.12
  %arrayidx.14 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 14
  %30 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.14, align 4
  %tobool.not.14 = icmp eq ptr %31, null
  br i1 %tobool.not.14, label %for.inc.13.if.then_crit_edge, label %for.inc.14

for.inc.13.if.then_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.inc.14:                                       ; preds = %for.inc.13
  %arrayidx.15 = getelementptr %struct.uinput_device, ptr %udev, i32 0, i32 9, i32 15
  %32 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.15, align 4
  %tobool.not.15 = icmp eq ptr %33, null
  br i1 %tobool.not.15, label %for.inc.14.if.then_crit_edge, label %for.inc.14.for.end_crit_edge

for.inc.14.for.end_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.14.if.then_crit_edge:                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

for.end:                                          ; preds = %for.inc.14.for.end_crit_edge, %if.then
  %cmp15 = phi i1 [ true, %if.then ], [ false, %for.inc.14.for.end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %requests_lock) #9
  ret i1 %cmp15
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_ff_flush(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nobuiltin nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !50, !52, !53, !55, !56, !58, !59, !61}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_uinput__225_1095_uinput_misc_init6, !1, !"__initcall__kmod_uinput__225_1095_uinput_misc_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/misc/uinput.c", i32 1095, i32 1}
!2 = !{ptr @__exitcall_uinput_misc_exit, !1, !"__exitcall_uinput_misc_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias226, !4, !"__UNIQUE_ID_alias226", i1 false, i1 false}
!4 = !{!"../drivers/input/misc/uinput.c", i32 1097, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias227, !6, !"__UNIQUE_ID_alias227", i1 false, i1 false}
!6 = !{!"../drivers/input/misc/uinput.c", i32 1098, i32 1}
!7 = !{ptr @__UNIQUE_ID_author228, !8, !"__UNIQUE_ID_author228", i1 false, i1 false}
!8 = !{!"../drivers/input/misc/uinput.c", i32 1100, i32 1}
!9 = !{ptr @__UNIQUE_ID_description229, !10, !"__UNIQUE_ID_description229", i1 false, i1 false}
!10 = !{!"../drivers/input/misc/uinput.c", i32 1101, i32 1}
!11 = !{ptr @__UNIQUE_ID_file230, !12, !"__UNIQUE_ID_file230", i1 false, i1 false}
!12 = !{!"../drivers/input/misc/uinput.c", i32 1102, i32 1}
!13 = !{ptr @__UNIQUE_ID_license231, !12, !"__UNIQUE_ID_license231", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/misc/uinput.c", i32 1093, i32 11}
!16 = !{ptr @uinput_misc, !17, !"uinput_misc", i1 false, i1 false}
!17 = !{!"../drivers/input/misc/uinput.c", i32 1090, i32 26}
!18 = !{ptr @uinput_fops, !19, !"uinput_fops", i1 false, i1 false}
!19 = !{!"../drivers/input/misc/uinput.c", i32 1076, i32 37}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/misc/uinput.c", i32 685, i32 13}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/input/misc/uinput.c", i32 406, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @uinput_validate_absinfo._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @uinput_validate_absinfo._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/input/misc/uinput.c", i32 413, i32 3}
!29 = !{ptr @uinput_validate_absinfo._entry.4, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @uinput_validate_absinfo._entry_ptr.6, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/input/misc/uinput.c", i32 314, i32 3}
!33 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @uinput_create_device._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @uinput_create_device._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/misc/uinput.c", i32 336, i32 3}
!38 = !{ptr @uinput_create_device._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @uinput_create_device._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @init_completion.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../include/linux/completion.h", i32 87, i32 2}
!42 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!43 = distinct !{null, !44, !"__already_done", i1 false, i1 false}
!44 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!48 = !{ptr @.str.15, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!50 = !{ptr @uinput_open.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../drivers/input/misc/uinput.c", i32 385, i32 2}
!52 = !{ptr @.str.16, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @uinput_open.__key.17, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/input/misc/uinput.c", i32 386, i32 2}
!55 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @uinput_open.__key.19, !57, !"__key", i1 false, i1 false}
!57 = !{!"../drivers/input/misc/uinput.c", i32 387, i32 2}
!58 = !{ptr @.str.20, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @uinput_open.__key.21, !60, !"__key", i1 false, i1 false}
!60 = !{!"../drivers/input/misc/uinput.c", i32 388, i32 2}
!61 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"auto-init"}
!73 = !{i64 5236349}
!74 = !{i64 5236546}
!75 = !{i64 2152721779}
!76 = !{i64 2153678069, i64 2153678349, i64 2153678683, i64 2153679017}
!77 = !{i64 2152740794, i64 2152740819}
!78 = !{!"branch_weights", i32 2000, i32 1}
!79 = !{i64 2152741475, i64 2152741500}
!80 = !{i64 2153664404, i64 2153664684, i64 2153665018, i64 2153665352}
