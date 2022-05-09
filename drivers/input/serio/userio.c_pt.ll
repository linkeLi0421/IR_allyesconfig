; ModuleID = '/llk/IR_all_yes/drivers/input/serio/userio.c_pt.bc'
source_filename = "../drivers/input/serio/userio.c"
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
%struct.userio_device = type { ptr, %struct.mutex, i8, i8, i8, %struct.spinlock, [16 x i8], %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.userio_cmd = type { i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.serio = type { ptr, [32 x i8], [32 x i8], [128 x i8], i8, %struct.serio_device_id, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, i32, ptr, %struct.mutex, %struct.device, %struct.list_head, ptr }
%struct.serio_device_id = type { i8, i8, i8, i8 }
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

@__initcall__kmod_userio__229_278_userio_misc_init6 = internal global ptr @userio_misc_init, section ".initcall6.init", align 4
@userio_misc = internal global { %struct.miscdevice, [56 x i8] } { %struct.miscdevice { i32 240, ptr @.str, ptr @userio_fops, %struct.list_head zeroinitializer, ptr null, ptr null, ptr null, ptr null, i16 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_userio_misc_exit = internal global ptr @userio_misc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias230 = internal constant [31 x i8] c"userio.alias=char-major-10-240\00", section ".modinfo", align 1
@__UNIQUE_ID_alias231 = internal constant [28 x i8] c"userio.alias=devname:userio\00", section ".modinfo", align 1
@__UNIQUE_ID_author232 = internal constant [59 x i8] c"userio.author=Stephen Chandler Paul <thatslyude@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [48 x i8] c"userio.description=Virtual Serio Device Support\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [39 x i8] c"userio.file=drivers/input/serio/userio\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [19 x i8] c"userio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"userio\00", [25 x i8] zeroinitializer }, align 32
@userio_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @userio_char_read, ptr @userio_char_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @userio_char_poll, ptr null, ptr null, ptr null, i32 0, ptr @userio_char_open, ptr null, ptr @userio_char_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/input/serio/userio.c\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@userio_char_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.1, i32 187, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid payload size\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"userio_char_write\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@userio_char_write._entry_ptr = internal global ptr @userio_char_write._entry, section ".printk_index", align 4
@userio_char_write._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.1, i32 202, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"No port type given on /dev/userio\0A\00", [61 x i8] zeroinitializer }, align 32
@userio_char_write._entry_ptr.11 = internal global ptr @userio_char_write._entry.9, section ".printk_index", align 4
@userio_char_write._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.1, i32 210, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Begin command sent, but we're already running\0A\00", [49 x i8] zeroinitializer }, align 32
@userio_char_write._entry_ptr.14 = internal global ptr @userio_char_write._entry.12, section ".printk_index", align 4
@userio_char_write._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.1, i32 222, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Can't change port type on an already running userio instance\0A\00", [34 x i8] zeroinitializer }, align 32
@userio_char_write._entry_ptr.17 = internal global ptr @userio_char_write._entry.15, section ".printk_index", align 4
@userio_char_write._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.6, ptr @.str.1, i32 233, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"The device must be registered before sending interrupts\0A\00", [39 x i8] zeroinitializer }, align 32
@userio_char_write._entry_ptr.20 = internal global ptr @userio_char_write._entry.18, section ".printk_index", align 4
@userio_char_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&userio->mutex\00", [17 x i8] zeroinitializer }, align 32
@userio_char_open.__key.22 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&userio->buf_lock\00", [46 x i8] zeroinitializer }, align 32
@userio_char_open.__key.24 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&userio->waitq\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@userio_device_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.1, i32 67, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Buffer overflowed, userio client isn't keeping up\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"userio_device_write\00", [44 x i8] zeroinitializer }, align 32
@userio_device_write._entry_ptr = internal global ptr @userio_device_write._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.28 = private unnamed_addr constant [12 x i8] c"userio_misc\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 273, i32 26 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 276, i32 10 }
@___asan_gen_.34 = private unnamed_addr constant [12 x i8] c"userio_fops\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 263, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 166, i32 11 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 230, i32 6 }
@___asan_gen_.44 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 214, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 174, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 187, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 201, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 209, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 221, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 232, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 84, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 85, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 86, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.113 = private constant [32 x i8] c"../drivers/input/serio/userio.c\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 66, i32 3 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_alias231, ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_userio_misc_exit, ptr @__initcall__kmod_userio__229_278_userio_misc_init6, ptr @userio_char_write._entry, ptr @userio_char_write._entry.12, ptr @userio_char_write._entry.15, ptr @userio_char_write._entry.18, ptr @userio_char_write._entry.9, ptr @userio_char_write._entry_ptr, ptr @userio_char_write._entry_ptr.11, ptr @userio_char_write._entry_ptr.14, ptr @userio_char_write._entry_ptr.17, ptr @userio_char_write._entry_ptr.20, ptr @userio_device_write._entry, ptr @userio_device_write._entry_ptr, ptr @userio_misc_exit, ptr @userio_misc, ptr @.str, ptr @userio_fops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @userio_char_open.__key, ptr @.str.21, ptr @userio_char_open.__key.22, ptr @.str.23, ptr @userio_char_open.__key.24, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userio_misc to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userio_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userio_char_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userio_char_write._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userio_char_write._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userio_char_write._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userio_char_write._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userio_char_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userio_char_open.__key.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userio_char_open.__key.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @userio_device_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @userio_misc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @misc_register(ptr noundef nonnull @userio_misc) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @userio_misc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @misc_deregister(ptr noundef nonnull @userio_misc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @misc_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @misc_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userio_char_read(ptr nocapture noundef readonly %file, ptr noundef %user_buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %buf = alloca [16 x i8], align 1
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #8
  %buf_lock = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 5
  %tail = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 4
  %head = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 3
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp32 = icmp eq i32 %count, 0
  %waitq = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 7
  %2 = call ptr @memset(ptr %buf, i32 255, i32 16)
  br label %for.cond

for.cond:                                         ; preds = %if.end65.for.cond_crit_edge, %entry
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %buf_lock) #8
  %3 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %tail, align 2
  %conv5 = zext i8 %4 to i32
  %sub = sub nsw i32 16, %conv5
  %5 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %head, align 1
  %conv6 = zext i8 %6 to i32
  %add = add nsw i32 %sub, %conv6
  %and = and i32 %add, 15
  %7 = call i32 @llvm.smin.i32(i32 %and, i32 %sub)
  %8 = call i32 @llvm.umin.i32(i32 %7, i32 %count)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.end, label %if.end.thread

if.end:                                           ; preds = %for.cond
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buf_lock, i32 noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool25.not = icmp eq i32 %7, 0
  br i1 %tobool25.not, label %if.end.if.end27_crit_edge, label %if.end.if.end78_crit_edge

if.end.if.end78_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end.thread:                                    ; preds = %for.cond
  %arrayidx = getelementptr %struct.userio_device, ptr %1, i32 0, i32 6, i32 %conv5
  %9 = call ptr @memcpy(ptr %buf, ptr %arrayidx, i32 %8)
  %10 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tail, align 2
  %12 = trunc i32 %8 to i8
  %13 = add i8 %11, %12
  %conv22 = and i8 %13, 15
  store i8 %conv22, ptr %tail, align 2
  call void @_raw_spin_unlock_irqrestore(ptr noundef %buf_lock, i32 noundef %call2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool25.not120 = icmp eq i32 %7, 0
  br i1 %tobool25.not120, label %if.end.thread.if.end27_crit_edge, label %if.then72

if.end.thread.if.end27_crit_edge:                 ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.end27:                                         ; preds = %if.end.thread.if.end27_crit_edge, %if.end.if.end27_crit_edge
  %14 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %f_flags, align 4
  %and28 = and i32 %15, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp ne i32 %and28, 0
  %brmerge = or i1 %tobool29.not, %cmp32
  br i1 %brmerge, label %cleanup79.loopexit.split.loop.exit, label %if.end35

if.end35:                                         ; preds = %if.end27
  call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 167) #8
  %16 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %head, align 1
  %18 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tail, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp46.not = icmp eq i8 %17, %19
  br i1 %cmp46.not, label %if.then48, label %if.end35.if.end65_crit_edge

if.end35.if.end65_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then48:                                        ; preds = %if.end35
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #8
  %20 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #8
  %call51127 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %21 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %head, align 1
  %23 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %tail, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %22, i8 %24)
  %cmp56.not128 = icmp eq i8 %22, %24
  br i1 %cmp56.not128, label %if.then48.if.end59_crit_edge, label %if.then48.for.end_crit_edge

if.then48.for.end_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then48.if.end59_crit_edge:                     ; preds = %if.then48
  br label %if.end59

if.end59:                                         ; preds = %cleanup.if.end59_crit_edge, %if.then48.if.end59_crit_edge
  %call51129 = phi i32 [ %call51, %cleanup.if.end59_crit_edge ], [ %call51127, %if.then48.if.end59_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51129)
  %tobool60.not = icmp eq i32 %call51129, 0
  br i1 %tobool60.not, label %cleanup, label %if.end59.__out_crit_edge

if.end59.__out_crit_edge:                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %__out

cleanup:                                          ; preds = %if.end59
  call void @schedule() #8
  %call51 = call i32 @prepare_to_wait_event(ptr noundef %waitq, ptr noundef nonnull %__wq_entry, i32 noundef 1) #8
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %head, align 1
  %27 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %tail, align 2
  %cmp56.not = icmp eq i8 %26, %28
  br i1 %cmp56.not, label %cleanup.if.end59_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.if.end59_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then48.for.end_crit_edge
  call void @finish_wait(ptr noundef %waitq, ptr noundef nonnull %__wq_entry) #8
  br label %__out

__out:                                            ; preds = %for.end, %if.end59.__out_crit_edge
  %__ret49.1115 = phi i32 [ 0, %for.end ], [ %call51129, %if.end59.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #8
  br label %if.end65

if.end65:                                         ; preds = %__out, %if.end35.if.end65_crit_edge
  %__ret.0 = phi i32 [ 0, %if.end35.if.end65_crit_edge ], [ %__ret49.1115, %__out ]
  %tobool67.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool67.not, label %if.end65.for.cond_crit_edge, label %if.end65.cleanup79_crit_edge

if.end65.cleanup79_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup79

if.end65.for.cond_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.then72:                                        ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %8)
  %cmp1.i.i = icmp ugt i32 %8, 16
  br i1 %cmp1.i.i, label %if.then3.i.i, label %if.then.i.i.i, !prof !76

if.then3.i.i:                                     ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 214, i32 noundef 9, ptr noundef nonnull @.str.3, i32 noundef 16, i32 noundef %8) #8
  br label %cleanup79

if.then.i.i.i:                                    ; preds = %if.then72
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %8, i1 noundef zeroext true) #8
  call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 174) #8
  %call.i.i = call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.i.i.cleanup79_crit_edge, label %if.end.i.i

if.then.i.i.i.cleanup79_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup79

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %29 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %user_buffer, i32 %8, i32 -1226833920) #11, !srcloc !77
  %asmresult.i.i = extractvalue { i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup79_crit_edge

if.end.i.i.cleanup79_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup79

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buf, i32 noundef %8) #8
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %user_buffer, ptr noundef nonnull %buf, i32 noundef %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool75.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool75.not, label %copy_to_user.exit.if.end78_crit_edge, label %copy_to_user.exit.cleanup79_crit_edge

copy_to_user.exit.cleanup79_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup79

copy_to_user.exit.if.end78_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.end78:                                         ; preds = %copy_to_user.exit.if.end78_crit_edge, %if.end.if.end78_crit_edge
  br label %cleanup79

cleanup79.loopexit.split.loop.exit:               ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %.mux.le = select i1 %tobool29.not, i32 -11, i32 0
  br label %cleanup79

cleanup79:                                        ; preds = %cleanup79.loopexit.split.loop.exit, %if.end78, %copy_to_user.exit.cleanup79_crit_edge, %if.end.i.i.cleanup79_crit_edge, %if.then.i.i.i.cleanup79_crit_edge, %if.then3.i.i, %if.end65.cleanup79_crit_edge
  %retval.0 = phi i32 [ %8, %if.end78 ], [ -14, %copy_to_user.exit.cleanup79_crit_edge ], [ -14, %if.then.i.i.i.cleanup79_crit_edge ], [ -14, %if.end.i.i.cleanup79_crit_edge ], [ -14, %if.then3.i.i ], [ %.mux.le, %cleanup79.loopexit.split.loop.exit ], [ %__ret.0, %if.end65.cleanup79_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userio_char_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %cmd = alloca %struct.userio_cmd, align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %cmd) #8
  %2 = ptrtoint ptr %cmd to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %cmd, align 1, !annotation !78
  %3 = getelementptr inbounds %struct.userio_cmd, ptr %cmd, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !78
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %count)
  %cmp.not = icmp eq i32 %count, 2
  br i1 %cmp.not, label %if.then.i, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @userio_misc, i32 0, i32 5), align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.then.i:                                        ; preds = %entry
  tail call void @__might_fault(ptr noundef nonnull @.str.4, i32 noundef 156) #8
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #8
  br i1 %call.i.i, label %if.then.i.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.if.then11.i.i_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i
  %6 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 2, i32 -1226833920) #11, !srcloc !79
  %asmresult.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i1.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i1.i, label %if.end.i.i, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !80

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.end.i.i:                                       ; preds = %land.lhs.true.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %cmd, i32 noundef 2) #8
  %7 = call i32 @llvm.read_register.i32(metadata !66) #8
  %and.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !81
  %and.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #8, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %cmd, ptr noundef %buffer, i32 noundef 2) #8
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #8, !srcloc !82
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end2, label %if.end.i.i.if.then11.i.i_crit_edge, !prof !80

if.end.i.i.if.then11.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.then.i.if.then11.i.i_crit_edge
  %res.03.i.i = phi i32 [ %call1.i.i.i, %if.end.i.i.if.then11.i.i_crit_edge ], [ 2, %if.then.i.if.then11.i.i_crit_edge ], [ 2, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 2, %res.03.i.i
  %add.ptr.i.i = getelementptr i8, ptr %cmd, i32 %sub.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.03.i.i)
  br label %cleanup

if.end2:                                          ; preds = %if.end.i.i
  %mutex = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 1
  %call3 = call i32 @mutex_lock_interruptible_nested(ptr noundef %mutex, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end2
  %11 = ptrtoint ptr %cmd to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cmd, align 1
  %13 = zext i8 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i8 %12, label %if.end6.out.thread_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb22
    i8 2, label %sw.bb33
  ]

if.end6.out.thread_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread

sw.bb:                                            ; preds = %if.end6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %id = getelementptr inbounds %struct.serio, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %id to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool8.not = icmp eq i8 %17, 0
  br i1 %tobool8.not, label %sw.bb.out.thread.sink.split_crit_edge, label %if.end13

sw.bb.out.thread.sink.split_crit_edge:            ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread.sink.split

if.end13:                                         ; preds = %sw.bb
  %running = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %running, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool14.not = icmp eq i8 %19, 0
  br i1 %tobool14.not, label %if.end19, label %if.end13.out.thread.sink.split_crit_edge

if.end13.out.thread.sink.split_crit_edge:         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread.sink.split

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 1, ptr %running, align 4
  call void @__serio_register_port(ptr noundef %15, ptr noundef null) #8
  br label %35

sw.bb22:                                          ; preds = %if.end6
  %running23 = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %running23 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %running23, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool24.not = icmp eq i8 %22, 0
  br i1 %tobool24.not, label %if.end29, label %sw.bb22.out.thread.sink.split_crit_edge

sw.bb22.out.thread.sink.split_crit_edge:          ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread.sink.split

if.end29:                                         ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %3, align 1
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %id31 = getelementptr inbounds %struct.serio, ptr %26, i32 0, i32 5
  %27 = ptrtoint ptr %id31 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %id31, align 1
  br label %35

sw.bb33:                                          ; preds = %if.end6
  %running34 = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %running34 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %running34, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool35.not = icmp eq i8 %29, 0
  br i1 %tobool35.not, label %sw.bb33.out.thread.sink.split_crit_edge, label %if.end40

sw.bb33.out.thread.sink.split_crit_edge:          ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  br label %out.thread.sink.split

if.end40:                                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %32 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %3, align 1
  %call43 = call i32 @serio_interrupt(ptr noundef %31, i8 noundef zeroext %33, i32 noundef 0) #8
  br label %35

out.thread.sink.split:                            ; preds = %sw.bb33.out.thread.sink.split_crit_edge, %sw.bb22.out.thread.sink.split_crit_edge, %if.end13.out.thread.sink.split_crit_edge, %sw.bb.out.thread.sink.split_crit_edge
  %.str.19.sink = phi ptr [ @.str.10, %sw.bb.out.thread.sink.split_crit_edge ], [ @.str.13, %if.end13.out.thread.sink.split_crit_edge ], [ @.str.16, %sw.bb22.out.thread.sink.split_crit_edge ], [ @.str.19, %sw.bb33.out.thread.sink.split_crit_edge ]
  %error.0.ph.ph = phi i32 [ -22, %sw.bb.out.thread.sink.split_crit_edge ], [ -16, %if.end13.out.thread.sink.split_crit_edge ], [ -16, %sw.bb22.out.thread.sink.split_crit_edge ], [ -19, %sw.bb33.out.thread.sink.split_crit_edge ]
  %34 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @userio_misc, i32 0, i32 5), align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull %.str.19.sink) #12
  br label %out.thread

out.thread:                                       ; preds = %out.thread.sink.split, %if.end6.out.thread_crit_edge
  %error.0.ph = phi i32 [ -95, %if.end6.out.thread_crit_edge ], [ %error.0.ph.ph, %out.thread.sink.split ]
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

35:                                               ; preds = %if.end40, %if.end29, %if.end19
  call void @mutex_unlock(ptr noundef %mutex) #8
  br label %cleanup

cleanup:                                          ; preds = %35, %out.thread, %if.end2.cleanup_crit_edge, %if.then11.i.i, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call3, %if.end2.cleanup_crit_edge ], [ 2, %35 ], [ %error.0.ph, %out.thread ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %cmd) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userio_char_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %waitq = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %3(ptr noundef %file, ptr noundef nonnull %waitq, ptr noundef nonnull %wait) #8
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %head = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %head, align 1
  %tail = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tail, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp.not = icmp eq i8 %5, %7
  %. = select i1 %cmp.not, i32 0, i32 65
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userio_char_open(ptr nocapture noundef readnone %inode, ptr nocapture noundef writeonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 212) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  %mutex = getelementptr inbounds %struct.userio_device, ptr %call7.i.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.21, ptr noundef nonnull @userio_char_open.__key) #8
  %buf_lock = getelementptr inbounds %struct.userio_device, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %buf_lock, ptr noundef nonnull @.str.23, ptr noundef nonnull @userio_char_open.__key.22, i16 noundef signext 3) #8
  %waitq = getelementptr inbounds %struct.userio_device, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %waitq, ptr noundef nonnull @.str.25, ptr noundef nonnull @userio_char_open.__key.24) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i25 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 1336) #13
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i25, ptr %call7.i.i, align 8
  %tobool10.not = icmp eq ptr %call7.i.i25, null
  br i1 %tobool10.not, label %if.then11, label %if.end12

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

if.end12:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %write = getelementptr inbounds %struct.serio, ptr %call7.i.i25, i32 0, i32 7
  %3 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @userio_device_write, ptr %write, align 8
  %4 = ptrtoint ptr %call7.i.i25 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i, ptr %call7.i.i25, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -12, %if.then11 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userio_char_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %running = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %running, align 4, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @serio_unregister_port(ptr noundef %5) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kfree(ptr noundef %5) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call void @kfree(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__serio_register_port(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @serio_interrupt(ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @userio_device_write(ptr nocapture noundef readonly %id, i8 noundef zeroext %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id, align 8
  %buf_lock = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %buf_lock) #8
  %head = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %head, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr %struct.userio_device, ptr %1, i32 0, i32 6, i32 %idxprom
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %val, ptr %arrayidx, align 1
  %5 = add i8 %3, 1
  %6 = and i8 %5, 15
  store i8 %6, ptr %head, align 1
  %tail = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 4
  %7 = ptrtoint ptr %tail to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tail, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp12 = icmp eq i8 %6, %8
  br i1 %cmp12, label %do.end16, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load ptr, ptr getelementptr inbounds (%struct.miscdevice, ptr @userio_misc, i32 0, i32 5), align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str.26) #12
  br label %if.end

if.end:                                           ; preds = %do.end16, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %buf_lock, i32 noundef %call2) #8
  %waitq = getelementptr inbounds %struct.userio_device, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %waitq, i32 noundef 1, i32 noundef 1, ptr noundef null) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @serio_unregister_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind readnone }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !65}
!llvm.named.register.sp = !{!66}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_userio__229_278_userio_misc_init6, !1, !"__initcall__kmod_userio__229_278_userio_misc_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/serio/userio.c", i32 278, i32 1}
!2 = !{ptr @__exitcall_userio_misc_exit, !1, !"__exitcall_userio_misc_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias230, !4, !"__UNIQUE_ID_alias230", i1 false, i1 false}
!4 = !{!"../drivers/input/serio/userio.c", i32 280, i32 1}
!5 = !{ptr @__UNIQUE_ID_alias231, !6, !"__UNIQUE_ID_alias231", i1 false, i1 false}
!6 = !{!"../drivers/input/serio/userio.c", i32 281, i32 1}
!7 = !{ptr @__UNIQUE_ID_author232, !8, !"__UNIQUE_ID_author232", i1 false, i1 false}
!8 = !{!"../drivers/input/serio/userio.c", i32 283, i32 1}
!9 = !{ptr @__UNIQUE_ID_description233, !10, !"__UNIQUE_ID_description233", i1 false, i1 false}
!10 = !{!"../drivers/input/serio/userio.c", i32 284, i32 1}
!11 = !{ptr @__UNIQUE_ID_file234, !12, !"__UNIQUE_ID_file234", i1 false, i1 false}
!12 = !{!"../drivers/input/serio/userio.c", i32 285, i32 1}
!13 = !{ptr @__UNIQUE_ID_license235, !12, !"__UNIQUE_ID_license235", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/input/serio/userio.c", i32 276, i32 10}
!16 = !{ptr @userio_misc, !17, !"userio_misc", i1 false, i1 false}
!17 = !{!"../drivers/input/serio/userio.c", i32 273, i32 26}
!18 = !{ptr @userio_fops, !19, !"userio_fops", i1 false, i1 false}
!19 = !{!"../drivers/input/serio/userio.c", i32 263, i32 37}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/input/serio/userio.c", i32 166, i32 11}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!24 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/input/serio/userio.c", i32 187, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @userio_char_write._entry, !30, !"_entry", i1 false, i1 false}
!35 = !{ptr @userio_char_write._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/input/serio/userio.c", i32 201, i32 4}
!38 = !{ptr @userio_char_write._entry.9, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @userio_char_write._entry_ptr.11, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/input/serio/userio.c", i32 209, i32 4}
!42 = !{ptr @userio_char_write._entry.12, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @userio_char_write._entry_ptr.14, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/serio/userio.c", i32 221, i32 4}
!46 = !{ptr @userio_char_write._entry.15, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @userio_char_write._entry_ptr.17, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.19, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/serio/userio.c", i32 232, i32 4}
!50 = !{ptr @userio_char_write._entry.18, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @userio_char_write._entry_ptr.20, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @userio_char_open.__key, !53, !"__key", i1 false, i1 false}
!53 = !{!"../drivers/input/serio/userio.c", i32 84, i32 2}
!54 = !{ptr @.str.21, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @userio_char_open.__key.22, !56, !"__key", i1 false, i1 false}
!56 = !{!"../drivers/input/serio/userio.c", i32 85, i32 2}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @userio_char_open.__key.24, !59, !"__key", i1 false, i1 false}
!59 = !{!"../drivers/input/serio/userio.c", i32 86, i32 2}
!60 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/serio/userio.c", i32 66, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @userio_device_write._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @userio_device_write._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{!"sp"}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{!"branch_weights", i32 1, i32 2000}
!77 = !{i64 2153401656, i64 2153401681}
!78 = !{!"auto-init"}
!79 = !{i64 2153400975, i64 2153401000}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 5896530}
!82 = !{i64 5896727}
!83 = !{i64 2153381960}
!84 = !{i8 0, i8 2}
