; ModuleID = '/llk/IR_all_yes/drivers/pps/pps.c_pt.bc'
source_filename = "../drivers/pps/pps.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+pps_lookup_dev\22, \22a\22\09"
module asm "\09.weak\09__crc_pps_lookup_dev\09\09\09\09"
module asm "\09.long\09__crc_pps_lookup_dev\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pps_lookup_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22pps_lookup_dev\22\09\09\09\09\09"
module asm "__kstrtabns_pps_lookup_dev:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pps_device = type { %struct.pps_source_info, %struct.pps_kparams, i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32, i32, %struct.wait_queue_head, i32, ptr, %struct.cdev, ptr, ptr, %struct.spinlock }
%struct.pps_source_info = type { [32 x i8], [32 x i8], i32, ptr, ptr, ptr }
%struct.pps_kparams = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime }
%struct.pps_ktime = type { i64, i32, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.class = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.pps_fdata = type { %struct.pps_kinfo, %struct.pps_ktime }
%struct.pps_kinfo = type { i32, i32, %struct.pps_ktime, %struct.pps_ktime, i32 }
%struct.pps_bind_args = type { i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@pps_idr_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pps_idr_lock, i64 52), ptr getelementptr (i8, ptr @pps_idr_lock, i64 52) }, ptr @pps_idr_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.14, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@pps_idr = internal global { %struct.idr, [36 x i8] } { %struct.idr { %struct.xarray { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.15, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i32 67108868, ptr null }, i32 0, i32 0 }, [36 x i8] zeroinitializer }, align 32
@pps_register_cdev._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013pps_core: %s: too many PPS sources in the system\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pps_register_cdev\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"drivers/pps/pps.c\00", [46 x i8] zeroinitializer }, align 32
@pps_register_cdev._entry_ptr = internal global ptr @pps_register_cdev._entry, section ".printk_index", align 4
@pps_devt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pps_cdev_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pps_cdev_poll, ptr @pps_cdev_ioctl, ptr null, ptr null, i32 0, ptr @pps_cdev_open, ptr null, ptr @pps_cdev_release, ptr null, ptr @pps_cdev_fasync, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@pps_register_cdev._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 377, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013pps_core: %s: failed to add char device %d:%d\0A\00", [47 x i8] zeroinitializer }, align 32
@pps_register_cdev._entry_ptr.5 = internal global ptr @pps_register_cdev._entry.3, section ".printk_index", align 4
@pps_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pps%d\00", [26 x i8] zeroinitializer }, align 32
@pps_register_cdev.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pps_core\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"source %s got cdev (%d:%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"pps_core: source %s got cdev (%d:%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@pps_unregister_cdev.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pps_unregister_cdev\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unregistering pps%d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pps_core: unregistering pps%d\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_pps_lookup_dev = external dso_local constant [0 x i8], align 1
@__kstrtabns_pps_lookup_dev = external dso_local constant [0 x i8], align 1
@__ksymtab_pps_lookup_dev = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pps_lookup_dev to i32), ptr @__kstrtab_pps_lookup_dev, ptr @__kstrtabns_pps_lookup_dev }, section "___ksymtab+pps_lookup_dev", align 4
@__initcall__kmod_pps_core__236_484_pps_init4 = internal global ptr @pps_init, section ".initcall4.init", align 4
@__exitcall_pps_exit = internal global ptr @pps_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [53 x i8] c"pps_core.author=Rodolfo Giometti <giometti@linux.it>\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [62 x i8] c"pps_core.description=LinuxPPS support (RFC 2783) - ver. 5.3.6\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [35 x i8] c"pps_core.file=drivers/pps/pps_core\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [21 x i8] c"pps_core.license=GPL\00", section ".modinfo", align 1
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pps_idr_lock.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pps_idr_lock\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pps_idr.xa_lock\00", [16 x i8] zeroinitializer }, align 32
@pps_cdev_ioctl.__UNIQUE_ID_ddebug225 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 0, i8 25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pps_cdev_ioctl\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PPS_GETPARAMS\0A\00", [17 x i8] zeroinitializer }, align 32
@pps_cdev_ioctl.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.2, ptr @.str.18, i8 0, i8 29, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PPS_SETPARAMS\0A\00", [17 x i8] zeroinitializer }, align 32
@pps_cdev_ioctl.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.2, ptr @.str.19, i8 0, i8 32, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"capture mode unspecified (%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@pps_cdev_ioctl.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.2, ptr @.str.20, i8 0, i8 33, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unsupported capabilities (%x)\0A\00", [33 x i8] zeroinitializer }, align 32
@pps_cdev_ioctl.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.2, ptr @.str.21, i8 0, i8 37, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"time format unspecified (%x)\0A\00", [34 x i8] zeroinitializer }, align 32
@pps_cdev_ioctl.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.2, ptr @.str.22, i8 0, i8 42, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"PPS_GETCAP\0A\00", [20 x i8] zeroinitializer }, align 32
@pps_cdev_ioctl.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.2, ptr @.str.23, i8 0, i8 44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"PPS_FETCH\0A\00", [21 x i8] zeroinitializer }, align 32
@pps_cdev_ioctl.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.16, ptr @.str.2, ptr @.str.24, i8 0, i8 52, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PPS_KC_BIND\0A\00", [19 x i8] zeroinitializer }, align 32
@pps_cdev_ioctl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.2, i32 222, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pps_cdev_ioctl._entry_ptr = internal global ptr @pps_cdev_ioctl._entry, section ".printk_index", align 4
@pps_cdev_ioctl._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.16, ptr @.str.2, i32 231, ptr @.str.25, ptr @.str.26 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"invalid kernel consumer bind parameters (%x)\0A\00", [50 x i8] zeroinitializer }, align 32
@pps_cdev_ioctl._entry_ptr.29 = internal global ptr @pps_cdev_ioctl._entry.27, section ".printk_index", align 4
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@pps_cdev_pps_fetch.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 16, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pps_cdev_pps_fetch\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"timeout %lld.%09d\0A\00", [45 x i8] zeroinitializer }, align 32
@pps_cdev_pps_fetch.__UNIQUE_ID_ddebug224 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.33, ptr @.str.2, ptr @.str.35, i8 0, i8 20, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pending signal caught\0A\00", [41 x i8] zeroinitializer }, align 32
@pps_device_destruct.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.36, ptr @.str.2, ptr @.str.37, i8 0, i8 84, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pps_device_destruct\00", [44 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"deallocating pps%d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pps_core: deallocating pps%d\0A\00", [34 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.41 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@pps_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.42 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pps\00", [28 x i8] zeroinitializer }, align 32
@pps_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.2, i32 461, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013pps_core: failed to allocate class\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pps_init\00", [23 x i8] zeroinitializer }, align 32
@pps_init._entry_ptr = internal global ptr @pps_init._entry, section ".printk_index", align 4
@pps_groups = external dso_local global [0 x ptr], align 4
@pps_init._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.44, ptr @.str.2, i32 468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013pps_core: failed to allocate char device region\0A\00", [45 x i8] zeroinitializer }, align 32
@pps_init._entry_ptr.47 = internal global ptr @pps_init._entry.45, section ".printk_index", align 4
@pps_init._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.44, ptr @.str.2, i32 472, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016pps_core: LinuxPPS API ver. %d registered\0A\00", [51 x i8] zeroinitializer }, align 32
@pps_init._entry_ptr.50 = internal global ptr @pps_init._entry.48, section ".printk_index", align 4
@pps_init._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.44, ptr @.str.2, i32 474, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [89 x i8], [39 x i8] } { [89 x i8] c"\016pps_core: Software ver. %s - Copyright 2005-2007 Rodolfo Giometti <giometti@linux.it>\0A\00", [39 x i8] zeroinitializer }, align 32
@pps_init._entry_ptr.53 = internal global ptr @pps_init._entry.51, section ".printk_index", align 4
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"5.3.6\00", [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1074032802, i64 1074032805, i64 2147774625, i64 2147774627, i64 3221516452]
@___asan_gen_.55 = private unnamed_addr constant [13 x i8] c"pps_idr_lock\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [8 x i8] c"pps_idr\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 360, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [9 x i8] c"pps_devt\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 28, i32 14 }
@___asan_gen_.76 = private unnamed_addr constant [14 x i8] c"pps_cdev_fops\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 320, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 376, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [10 x i8] c"pps_class\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 29, i32 22 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 381, i32 8 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 390, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 408, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 31, i32 8 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 32, i32 8 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 101, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 117, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 127, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 134, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 147, i32 4 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 168, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 179, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 209, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 221, i32 4 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 230, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.161, i32 174, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 65, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 83, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 338, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 695, i32 2 }
@___asan_gen_.188 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 723, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 459, i32 14 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 461, i32 3 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 468, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 472, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.224 = private constant [21 x i8] c"../drivers/pps/pps.c\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.224, i32 473, i32 2 }
@llvm.compiler.used = appending global [73 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_pps_exit, ptr @__initcall__kmod_pps_core__236_484_pps_init4, ptr @__ksymtab_pps_lookup_dev, ptr @pps_cdev_ioctl._entry, ptr @pps_cdev_ioctl._entry.27, ptr @pps_cdev_ioctl._entry_ptr, ptr @pps_cdev_ioctl._entry_ptr.29, ptr @pps_exit, ptr @pps_init._entry, ptr @pps_init._entry.45, ptr @pps_init._entry.48, ptr @pps_init._entry.51, ptr @pps_init._entry_ptr, ptr @pps_init._entry_ptr.47, ptr @pps_init._entry_ptr.50, ptr @pps_init._entry_ptr.53, ptr @pps_register_cdev._entry, ptr @pps_register_cdev._entry.3, ptr @pps_register_cdev._entry_ptr, ptr @pps_register_cdev._entry_ptr.5, ptr @pps_idr_lock, ptr @pps_idr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @pps_devt, ptr @pps_cdev_fops, ptr @.str.4, ptr @pps_class, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @pps_init.__key, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.54], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_idr_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_idr to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_register_cdev._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_devt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_cdev_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_register_cdev._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_cdev_ioctl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_cdev_ioctl._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_init._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_init._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pps_init._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 89, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pps_register_cdev(ptr noundef %pps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pps_idr_lock, i32 noundef 0) #7
  %call = tail call i32 @idr_alloc(ptr noundef nonnull @pps_idr, ptr noundef %pps, i32 noundef 0, i32 noundef 16, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -28, i32 %call)
  %cmp1 = icmp eq i32 %call, -28
  br i1 %cmp1, label %do.end, label %if.then.out_unlock_crit_edge

if.then.out_unlock_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_unlock

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %pps) #10
  br label %out_unlock

if.end4:                                          ; preds = %entry
  %id = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 9
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %id, align 4
  tail call void @mutex_unlock(ptr noundef nonnull @pps_idr_lock) #7
  %1 = load i32, ptr @pps_devt, align 4
  %shr = and i32 %1, -1048576
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %or = or i32 %shr, %3
  %cdev = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 11
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @pps_cdev_fops) #7
  %owner = getelementptr inbounds %struct.pps_source_info, ptr %pps, i32 0, i32 4
  %4 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %owner, align 8
  %owner8 = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %owner8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %owner8, align 4
  %call10 = tail call i32 @cdev_add(ptr noundef %cdev, i32 noundef %or, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end22, label %do.end14

do.end14:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %7 = load i32, ptr @pps_devt, align 4
  %shr19 = lshr i32 %7, 20
  %8 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %id, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %pps, i32 noundef %shr19, i32 noundef %9) #10
  br label %free_idr

if.end22:                                         ; preds = %if.end4
  %10 = load ptr, ptr @pps_class, align 4
  %dev = getelementptr inbounds %struct.pps_source_info, ptr %pps, i32 0, i32 5
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %call25 = tail call ptr (ptr, ptr, i32, ptr, ptr, ...) @device_create(ptr noundef %10, ptr noundef %12, i32 noundef %or, ptr noundef %pps, ptr noundef nonnull @.str.6, i32 noundef %14) #7
  %dev26 = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 12
  %15 = ptrtoint ptr %dev26 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %dev26, align 4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %call25 to i32
  tail call void @cdev_del(ptr noundef %cdev) #7
  br label %free_idr

if.end32:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %release = getelementptr inbounds %struct.device, ptr %call25, i32 0, i32 35
  %17 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @pps_device_destruct, ptr %release, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_register_cdev.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_register_cdev, %cleanup)) #7
          to label %if.then41 [label %cleanup], !srcloc !139

if.then41:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %18 = load i32, ptr @pps_devt, align 4
  %shr45 = lshr i32 %18, 20
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pps_register_cdev.__UNIQUE_ID_ddebug234, ptr noundef nonnull @.str.9, ptr noundef %pps, i32 noundef %shr45, i32 noundef %20) #7
  br label %cleanup

free_idr:                                         ; preds = %if.then29, %do.end14
  %err.0 = phi i32 [ %call10, %do.end14 ], [ %16, %if.then29 ]
  tail call void @mutex_lock_nested(ptr noundef nonnull @pps_idr_lock, i32 noundef 0) #7
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id, align 4
  %call52 = tail call ptr @idr_remove(ptr noundef nonnull @pps_idr, i32 noundef %22) #7
  br label %out_unlock

out_unlock:                                       ; preds = %free_idr, %do.end, %if.then.out_unlock_crit_edge
  %err.1 = phi i32 [ -16, %do.end ], [ %call, %if.then.out_unlock_crit_edge ], [ %err.0, %free_idr ]
  tail call void @mutex_unlock(ptr noundef nonnull @pps_idr_lock) #7
  br label %cleanup

cleanup:                                          ; preds = %out_unlock, %if.then41, %if.end32
  %retval.0 = phi i32 [ %err.1, %out_unlock ], [ 0, %if.then41 ], [ 0, %if.end32 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_create(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pps_device_destruct(ptr noundef %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %cdev = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 11
  tail call void @cdev_del(ptr noundef %cdev) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_device_destruct.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_device_destruct, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pps_device_destruct.__UNIQUE_ID_ddebug233, ptr noundef nonnull @.str.38, i32 noundef %3) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @pps_idr_lock, i32 noundef 0) #7
  %id5 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %id5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id5, align 4
  %call6 = tail call ptr @idr_remove(ptr noundef nonnull @pps_idr, i32 noundef %5) #7
  tail call void @mutex_unlock(ptr noundef nonnull @pps_idr_lock) #7
  tail call void @kfree(ptr noundef %dev) #7
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @pps_unregister_cdev(ptr nocapture noundef %pps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_unregister_cdev.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_unregister_cdev, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %id = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 9
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @pps_unregister_cdev.__UNIQUE_ID_ddebug235, ptr noundef nonnull @.str.12, i32 noundef %1) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lookup_cookie = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 10
  %2 = ptrtoint ptr %lookup_cookie to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %lookup_cookie, align 8
  %3 = load ptr, ptr @pps_class, align 4
  %dev = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 12
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %devt = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 29
  %6 = ptrtoint ptr %devt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devt, align 8
  tail call void @device_destroy(ptr noundef %3, i32 noundef %7) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pps_lookup_dev(ptr noundef readnone %cookie) #0 align 64 {
entry:
  %id = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %0 = tail call i32 @llvm.read_register.i32(metadata !129) #7
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !140
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #7
  %call.i = tail call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 696, ptr noundef nonnull @.str.40) #7
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %id, align 4
  %call12 = call ptr @idr_get_next(ptr noundef nonnull @pps_idr, ptr noundef nonnull %id) #7
  %cmp.not13 = icmp eq ptr %call12, null
  br i1 %cmp.not13, label %rcu_read_lock.exit.for.end_crit_edge, label %rcu_read_lock.exit.for.body_crit_edge

rcu_read_lock.exit.for.body_crit_edge:            ; preds = %rcu_read_lock.exit
  br label %for.body

rcu_read_lock.exit.for.end_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %rcu_read_lock.exit.for.body_crit_edge
  %call14 = phi ptr [ %call, %for.inc.for.body_crit_edge ], [ %call12, %rcu_read_lock.exit.for.body_crit_edge ]
  %lookup_cookie = getelementptr inbounds %struct.pps_device, ptr %call14, i32 0, i32 10
  %5 = ptrtoint ptr %lookup_cookie to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %lookup_cookie, align 8
  %cmp1 = icmp eq ptr %6, %cookie
  br i1 %cmp1, label %for.body.for.end_crit_edge, label %for.inc

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc:                                          ; preds = %for.body
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %add = add i32 %8, 1
  store i32 %add, ptr %id, align 4
  %call = call ptr @idr_get_next(ptr noundef nonnull @pps_idr, ptr noundef nonnull %id) #7
  %cmp.not = icmp eq ptr %call, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %rcu_read_lock.exit.for.end_crit_edge
  %call.lcssa = phi ptr [ null, %rcu_read_lock.exit.for.end_crit_edge ], [ %call14, %for.body.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  %call.i3 = call zeroext i1 @rcu_is_watching() #7
  br i1 %call.i3, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i6

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true.i6:                                 ; preds = %for.end
  %call1.i4 = call i32 @debug_lockdep_rcu_enabled() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4)
  %tobool.not.i5 = icmp eq i32 %call1.i4, 0
  br i1 %tobool.not.i5, label %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i8

land.lhs.true.i6.rcu_read_unlock.exit_crit_edge:  ; preds = %land.lhs.true.i6
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

land.lhs.true2.i8:                                ; preds = %land.lhs.true.i6
  %.b4.i7 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7, label %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, label %if.then.i9

land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %rcu_read_unlock.exit

if.then.i9:                                       ; preds = %land.lhs.true2.i8
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.39, i32 noundef 724, ptr noundef nonnull @.str.41) #7
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i9, %land.lhs.true2.i8.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i6.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #7, !srcloc !141
  %9 = call i32 @llvm.read_register.i32(metadata !129) #7
  %and.i.i.i.i.i10 = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i10 to ptr
  %preempt_count.i.i.i.i11 = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i11, align 4
  %sub.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i11, align 4
  call void @rcu_read_unlock_strict() #7
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret ptr %call.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_get_next(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pps_exit() #4 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @pps_class, align 4
  tail call void @class_destroy(ptr noundef %0) #7
  %1 = load i32, ptr @pps_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %1, i32 noundef 16) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pps_init() #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @pps_init.__key) #7
  store ptr %call, ptr @pps_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #10
  %0 = load ptr, ptr @pps_class, align 4
  %1 = ptrtoint ptr %0 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev_groups = getelementptr inbounds %struct.class, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %dev_groups to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @pps_groups, ptr %dev_groups, align 4
  %call5 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @pps_devt, i32 noundef 0, i32 noundef 16, ptr noundef nonnull @.str.42) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %do.end15

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46) #10
  %3 = load ptr, ptr @pps_class, align 4
  tail call void @class_destroy(ptr noundef %3) #7
  br label %cleanup

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef 1) #10
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.54) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end15, %do.end9, %do.end
  %retval.0 = phi i32 [ %1, %do.end ], [ %call5, %do.end9 ], [ 0, %do.end15 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pps_cdev_poll(ptr noundef %file, ptr noundef %wait) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %queue = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 8
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %queue, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %3(ptr noundef %file, ptr noundef nonnull %queue, ptr noundef nonnull %wait) #7
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  ret i32 65
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pps_cdev_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %params = alloca %struct.pps_kparams, align 8
  %fdata = alloca %struct.pps_fdata, align 8
  %bind_args = alloca %struct.pps_bind_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %params) #7
  %2 = call ptr @memset(ptr %params, i32 255, i32 40)
  %3 = inttoptr i32 %arg to ptr
  %4 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %cmd, label %entry.cleanup261_crit_edge [
    i32 -2147192671, label %do.body
    i32 1074032802, label %do.body11
    i32 -2147192669, label %do.body129
    i32 -1073450844, label %sw.bb159
    i32 1074032805, label %sw.bb203
  ]

entry.cleanup261_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup261

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug225, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_cdev_ioctl, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !139

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pps_cdev_ioctl.__UNIQUE_ID_ddebug225, ptr noundef %6, ptr noundef nonnull @.str.17) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %lock = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 14
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %params4 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 1
  %7 = call ptr @memcpy(ptr %params, ptr %params4, i32 40)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #7
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i, label %do.end.cleanup261_crit_edge, label %if.end.i.i

do.end.cleanup261_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup261

if.end.i.i:                                       ; preds = %do.end
  %8 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 40, i32 -1226833920) #11, !srcloc !142
  %asmresult.i.i = extractvalue { i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %copy_to_user.exit, label %if.end.i.i.cleanup261_crit_edge

if.end.i.i.cleanup261_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup261

copy_to_user.exit:                                ; preds = %if.end.i.i
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %params, i32 noundef 40) #7
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %params, i32 noundef 40) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool7.not = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool7.not, label %copy_to_user.exit.sw.epilog_crit_edge, label %copy_to_user.exit.cleanup261_crit_edge

copy_to_user.exit.cleanup261_crit_edge:           ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup261

copy_to_user.exit.sw.epilog_crit_edge:            ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body11:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_cdev_ioctl, %do.end29)) #7
          to label %if.then25 [label %do.end29], !srcloc !139

if.then25:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %dev26 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 12
  %9 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev26, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pps_cdev_ioctl.__UNIQUE_ID_ddebug226, ptr noundef %10, ptr noundef nonnull @.str.18) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body11
  %call30 = tail call zeroext i1 @capable(i32 noundef 25) #7
  br i1 %call30, label %if.end59.i.i321, label %do.end29.cleanup261_crit_edge

do.end29.cleanup261_crit_edge:                    ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup261

if.end59.i.i321:                                  ; preds = %do.end29
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #7
  %call.i.i322 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i322, label %if.end59.i.i321.if.then11.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i321.if.then11.i.i_crit_edge:          ; preds = %if.end59.i.i321
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i321
  %11 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 40, i32 -1226833920) #11, !srcloc !143
  %asmresult.i.i323 = extractvalue { i32, i32 } %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i323)
  %cmp.i6.i324 = icmp eq i32 %asmresult.i.i323, 0
  br i1 %cmp.i6.i324, label %if.end.i.i326, label %land.lhs.true.i.i.if.then11.i.i_crit_edge, !prof !144

land.lhs.true.i.i.if.then11.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.end.i.i326:                                    ; preds = %land.lhs.true.i.i
  %call.i.i.i325 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %params, i32 noundef 40) #7
  %12 = call i32 @llvm.read_register.i32(metadata !129) #7
  %and.i.i.i.i.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 4
  %14 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #5, !srcloc !145
  %and.i.i.i.i = and i32 %14, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #7, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %params, ptr noundef %3, i32 noundef 40) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %14) #7, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool4.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end36, label %if.end.i.i326.if.then11.i.i_crit_edge, !prof !144

if.end.i.i326.if.then11.i.i_crit_edge:            ; preds = %if.end.i.i326
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i

if.then11.i.i:                                    ; preds = %if.end.i.i326.if.then11.i.i_crit_edge, %land.lhs.true.i.i.if.then11.i.i_crit_edge, %if.end59.i.i321.if.then11.i.i_crit_edge
  %res.0.i.i411 = phi i32 [ %call1.i.i.i, %if.end.i.i326.if.then11.i.i_crit_edge ], [ 40, %if.end59.i.i321.if.then11.i.i_crit_edge ], [ 40, %land.lhs.true.i.i.if.then11.i.i_crit_edge ]
  %sub.i.i = sub i32 40, %res.0.i.i411
  %add.ptr.i.i = getelementptr i8, ptr %params, i32 %sub.i.i
  %15 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i411)
  br label %cleanup261

if.end36:                                         ; preds = %if.end.i.i326
  %mode = getelementptr inbounds %struct.pps_kparams, ptr %params, i32 0, i32 1
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  %and = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool37.not = icmp eq i32 %and, 0
  br i1 %tobool37.not, label %do.body39, label %if.end59

do.body39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_cdev_ioctl, %cleanup261)) #7
          to label %if.then53 [label %cleanup261], !srcloc !139

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #9
  %dev54 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 12
  %18 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev54, align 4
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pps_cdev_ioctl.__UNIQUE_ID_ddebug227, ptr noundef %19, ptr noundef nonnull @.str.19, i32 noundef %21) #7
  br label %cleanup261

if.end59:                                         ; preds = %if.end36
  %mode61 = getelementptr inbounds %struct.pps_source_info, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %mode61 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mode61, align 8
  %neg = xor i32 %23, -1
  %and62 = and i32 %17, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %cmp.not = icmp eq i32 %and62, 0
  br i1 %cmp.not, label %if.end84, label %do.body64

do.body64:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_cdev_ioctl, %cleanup261)) #7
          to label %if.then78 [label %cleanup261], !srcloc !139

if.then78:                                        ; preds = %do.body64
  call void @__sanitizer_cov_trace_pc() #9
  %dev79 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 12
  %24 = ptrtoint ptr %dev79 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev79, align 4
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pps_cdev_ioctl.__UNIQUE_ID_ddebug228, ptr noundef %25, ptr noundef nonnull @.str.20, i32 noundef %27) #7
  br label %cleanup261

if.end84:                                         ; preds = %if.end59
  %lock85 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 14
  call void @_raw_spin_lock_irq(ptr noundef %lock85) #7
  %params86 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 1
  %28 = call ptr @memcpy(ptr %params86, ptr %params, i32 40)
  %29 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mode, align 4
  %and88 = and i32 %30, 12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88)
  %cmp89 = icmp eq i32 %and88, 0
  br i1 %cmp89, label %do.body91, label %if.end84.if.end113_crit_edge

if.end84.if.end113_crit_edge:                     ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

do.body91:                                        ; preds = %if.end84
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_cdev_ioctl, %do.end110)) #7
          to label %if.then105 [label %do.end110], !srcloc !139

if.then105:                                       ; preds = %do.body91
  call void @__sanitizer_cov_trace_pc() #9
  %dev106 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 12
  %31 = ptrtoint ptr %dev106 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev106, align 4
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mode, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pps_cdev_ioctl.__UNIQUE_ID_ddebug229, ptr noundef %32, ptr noundef nonnull @.str.21, i32 noundef %34) #7
  br label %do.end110

do.end110:                                        ; preds = %if.then105, %do.body91
  %mode112 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 1, i32 1
  %35 = ptrtoint ptr %mode112 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mode112, align 4
  %or = or i32 %36, 4096
  store i32 %or, ptr %mode112, align 4
  br label %if.end113

if.end113:                                        ; preds = %do.end110, %if.end84.if.end113_crit_edge
  %37 = ptrtoint ptr %mode61 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mode61, align 8
  %and116 = and i32 %38, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.end113.if.end122_crit_edge, label %if.then118

if.end113.if.end122_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then118:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %mode120 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %mode120 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mode120, align 4
  %or121 = or i32 %40, 256
  store i32 %or121, ptr %mode120, align 4
  br label %if.end122

if.end122:                                        ; preds = %if.then118, %if.end113.if.end122_crit_edge
  %41 = ptrtoint ptr %params86 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %params86, align 8
  %flags = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 1, i32 2, i32 2
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %flags, align 4
  %flags126 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 1, i32 3, i32 2
  %43 = ptrtoint ptr %flags126 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %flags126, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock85) #7
  br label %sw.epilog

do.body129:                                       ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_cdev_ioctl, %do.end147)) #7
          to label %if.then143 [label %do.end147], !srcloc !139

if.then143:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #9
  %dev144 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 12
  %44 = ptrtoint ptr %dev144 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev144, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pps_cdev_ioctl.__UNIQUE_ID_ddebug230, ptr noundef %45, ptr noundef nonnull @.str.22) #7
  br label %do.end147

do.end147:                                        ; preds = %if.then143, %do.body129
  %mode150 = getelementptr inbounds %struct.pps_source_info, ptr %1, i32 0, i32 2
  %46 = ptrtoint ptr %mode150 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mode150, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.2, i32 noundef 170) #7
  %48 = tail call i32 @llvm.read_register.i32(metadata !129) #7
  %and.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 4
  %50 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #5, !srcloc !145
  %and.i = and i32 %50, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #7, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  %51 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %3, i32 %47, i32 -1226833921) #7, !srcloc !148
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %50) #7, !srcloc !146
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool156.not = icmp eq i32 %51, 0
  br i1 %tobool156.not, label %do.end147.sw.epilog_crit_edge, label %do.end147.cleanup261_crit_edge

do.end147.cleanup261_crit_edge:                   ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup261

do.end147.sw.epilog_crit_edge:                    ; preds = %do.end147
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb159:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %fdata) #7
  %52 = call ptr @memset(ptr %fdata, i32 255, i32 64)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_cdev_ioctl, %if.end59.i.i346)) #7
          to label %if.then174 [label %if.end59.i.i346], !srcloc !139

if.then174:                                       ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #9
  %dev175 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 12
  %53 = ptrtoint ptr %dev175 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev175, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pps_cdev_ioctl.__UNIQUE_ID_ddebug231, ptr noundef %54, ptr noundef nonnull @.str.23) #7
  br label %if.end59.i.i346

if.end59.i.i346:                                  ; preds = %if.then174, %sw.bb159
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #7
  %call.i.i347 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i347, label %if.end59.i.i346.if.then11.i.i363_crit_edge, label %land.lhs.true.i.i350

if.end59.i.i346.if.then11.i.i363_crit_edge:       ; preds = %if.end59.i.i346
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i363

land.lhs.true.i.i350:                             ; preds = %if.end59.i.i346
  %55 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 64, i32 -1226833920) #11
  %asmresult.i.i348 = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i348)
  %cmp.i6.i349 = icmp eq i32 %asmresult.i.i348, 0
  br i1 %cmp.i6.i349, label %if.end.i.i360, label %land.lhs.true.i.i350.if.then11.i.i363_crit_edge, !prof !144

land.lhs.true.i.i350.if.then11.i.i363_crit_edge:  ; preds = %land.lhs.true.i.i350
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i363

if.end.i.i360:                                    ; preds = %land.lhs.true.i.i350
  %call.i.i.i351 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %fdata, i32 noundef 64) #7
  %56 = call i32 @llvm.read_register.i32(metadata !129) #7
  %and.i.i.i.i.i.i352 = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i352 to ptr
  %cpu_domain.i.i.i.i.i353 = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i353) #5, !srcloc !145
  %and.i.i.i.i354 = and i32 %58, -13
  %or.i.i.i.i355 = or i32 %and.i.i.i.i354, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i355) #7, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  %call1.i.i.i356 = call i32 @arm_copy_from_user(ptr noundef nonnull %fdata, ptr noundef %3, i32 noundef 64) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #7, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i356)
  %tobool4.not.i.i359 = icmp eq i32 %call1.i.i.i356, 0
  br i1 %tobool4.not.i.i359, label %if.end182, label %if.end.i.i360.if.then11.i.i363_crit_edge, !prof !144

if.end.i.i360.if.then11.i.i363_crit_edge:         ; preds = %if.end.i.i360
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i363

if.then11.i.i363:                                 ; preds = %if.end.i.i360.if.then11.i.i363_crit_edge, %land.lhs.true.i.i350.if.then11.i.i363_crit_edge, %if.end59.i.i346.if.then11.i.i363_crit_edge
  %res.0.i.i358421 = phi i32 [ %call1.i.i.i356, %if.end.i.i360.if.then11.i.i363_crit_edge ], [ 64, %if.end59.i.i346.if.then11.i.i363_crit_edge ], [ 64, %land.lhs.true.i.i350.if.then11.i.i363_crit_edge ]
  %sub.i.i361 = sub i32 64, %res.0.i.i358421
  %add.ptr.i.i362 = getelementptr i8, ptr %fdata, i32 %sub.i.i361
  %59 = call ptr @memset(ptr %add.ptr.i.i362, i32 0, i32 %res.0.i.i358421)
  br label %cleanup.thread

if.end182:                                        ; preds = %if.end.i.i360
  %call183 = call fastcc i32 @pps_cdev_pps_fetch(ptr noundef %1, ptr noundef nonnull %fdata)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %if.end59.i.i369, label %if.end182.cleanup.thread_crit_edge

if.end182.cleanup.thread_crit_edge:               ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end59.i.i369:                                  ; preds = %if.end182
  %lock187 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 14
  call void @_raw_spin_lock_irq(ptr noundef %lock187) #7
  %assert_sequence = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 2
  %60 = ptrtoint ptr %assert_sequence to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %assert_sequence, align 8
  %62 = ptrtoint ptr %fdata to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %fdata, align 8
  %clear_sequence = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 3
  %63 = ptrtoint ptr %clear_sequence to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %clear_sequence, align 4
  %clear_sequence191 = getelementptr inbounds %struct.pps_kinfo, ptr %fdata, i32 0, i32 1
  %65 = ptrtoint ptr %clear_sequence191 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %clear_sequence191, align 4
  %assert_tu = getelementptr inbounds %struct.pps_kinfo, ptr %fdata, i32 0, i32 2
  %assert_tu193 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 4
  %66 = call ptr @memcpy(ptr %assert_tu, ptr %assert_tu193, i32 16)
  %clear_tu = getelementptr inbounds %struct.pps_kinfo, ptr %fdata, i32 0, i32 3
  %clear_tu195 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 5
  %67 = call ptr @memcpy(ptr %clear_tu, ptr %clear_tu195, i32 16)
  %current_mode = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 6
  %68 = ptrtoint ptr %current_mode to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %current_mode, align 8
  %current_mode197 = getelementptr inbounds %struct.pps_kinfo, ptr %fdata, i32 0, i32 4
  %70 = ptrtoint ptr %current_mode197 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %current_mode197, align 8
  call void @_raw_spin_unlock_irq(ptr noundef %lock187) #7
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #7
  %call.i.i370 = call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i370, label %cleanup.thread427, label %cleanup

cleanup.thread:                                   ; preds = %if.end182.cleanup.thread_crit_edge, %if.then11.i.i363
  %retval.0.ph = phi i32 [ %call183, %if.end182.cleanup.thread_crit_edge ], [ -14, %if.then11.i.i363 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fdata) #7
  br label %cleanup261

cleanup.thread427:                                ; preds = %if.end59.i.i369
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fdata) #7
  br label %cleanup261

cleanup:                                          ; preds = %if.end59.i.i369
  %call.i.i.i374 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %fdata, i32 noundef 64) #7
  %call.i12.i.i375 = call i32 @arm_copy_to_user(ptr noundef %3, ptr noundef nonnull %fdata, i32 noundef 64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i375)
  %tobool200.not = icmp eq i32 %call.i12.i.i375, 0
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %fdata) #7
  br i1 %tobool200.not, label %cleanup.sw.epilog_crit_edge, label %cleanup.cleanup261_crit_edge

cleanup.cleanup261_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup261

cleanup.sw.epilog_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb203:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %bind_args) #7
  %71 = ptrtoint ptr %bind_args to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 -1, ptr %bind_args, align 4, !annotation !149
  %72 = getelementptr inbounds %struct.pps_bind_args, ptr %bind_args, i32 0, i32 1
  %73 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 -1, ptr %72, align 4, !annotation !149
  %74 = getelementptr inbounds %struct.pps_bind_args, ptr %bind_args, i32 0, i32 2
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %74, align 4, !annotation !149
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_cdev_ioctl, %do.end222)) #7
          to label %if.then218 [label %do.end222], !srcloc !139

if.then218:                                       ; preds = %sw.bb203
  call void @__sanitizer_cov_trace_pc() #9
  %dev219 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 12
  %76 = ptrtoint ptr %dev219 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev219, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pps_cdev_ioctl.__UNIQUE_ID_ddebug232, ptr noundef %77, ptr noundef nonnull @.str.24) #7
  br label %do.end222

do.end222:                                        ; preds = %if.then218, %sw.bb203
  %call223 = tail call zeroext i1 @capable(i32 noundef 25) #7
  br i1 %call223, label %if.end59.i.i385, label %do.end222.cleanup259_crit_edge

do.end222.cleanup259_crit_edge:                   ; preds = %do.end222
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup259

if.end59.i.i385:                                  ; preds = %do.end222
  tail call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #7
  %call.i.i386 = tail call zeroext i1 @should_fail_usercopy() #7
  br i1 %call.i.i386, label %if.end59.i.i385.if.then11.i.i402_crit_edge, label %land.lhs.true.i.i389

if.end59.i.i385.if.then11.i.i402_crit_edge:       ; preds = %if.end59.i.i385
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i402

land.lhs.true.i.i389:                             ; preds = %if.end59.i.i385
  %78 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %3, i32 12, i32 -1226833920) #11, !srcloc !143
  %asmresult.i.i387 = extractvalue { i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i387)
  %cmp.i6.i388 = icmp eq i32 %asmresult.i.i387, 0
  br i1 %cmp.i6.i388, label %if.end.i.i399, label %land.lhs.true.i.i389.if.then11.i.i402_crit_edge, !prof !144

land.lhs.true.i.i389.if.then11.i.i402_crit_edge:  ; preds = %land.lhs.true.i.i389
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i402

if.end.i.i399:                                    ; preds = %land.lhs.true.i.i389
  %call.i.i.i390 = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %bind_args, i32 noundef 12) #7
  %79 = call i32 @llvm.read_register.i32(metadata !129) #7
  %and.i.i.i.i.i.i391 = and i32 %79, -16384
  %80 = inttoptr i32 %and.i.i.i.i.i.i391 to ptr
  %cpu_domain.i.i.i.i.i392 = getelementptr inbounds %struct.thread_info, ptr %80, i32 0, i32 4
  %81 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i392) #5, !srcloc !145
  %and.i.i.i.i393 = and i32 %81, -13
  %or.i.i.i.i394 = or i32 %and.i.i.i.i393, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i394) #7, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  %call1.i.i.i395 = call i32 @arm_copy_from_user(ptr noundef nonnull %bind_args, ptr noundef %3, i32 noundef 12) #7
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %81) #7, !srcloc !146
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #7, !srcloc !147
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i395)
  %tobool4.not.i.i398 = icmp eq i32 %call1.i.i.i395, 0
  br i1 %tobool4.not.i.i398, label %if.end229, label %if.end.i.i399.if.then11.i.i402_crit_edge, !prof !144

if.end.i.i399.if.then11.i.i402_crit_edge:         ; preds = %if.end.i.i399
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then11.i.i402

if.then11.i.i402:                                 ; preds = %if.end.i.i399.if.then11.i.i402_crit_edge, %land.lhs.true.i.i389.if.then11.i.i402_crit_edge, %if.end59.i.i385.if.then11.i.i402_crit_edge
  %res.0.i.i397433 = phi i32 [ %call1.i.i.i395, %if.end.i.i399.if.then11.i.i402_crit_edge ], [ 12, %if.end59.i.i385.if.then11.i.i402_crit_edge ], [ 12, %land.lhs.true.i.i389.if.then11.i.i402_crit_edge ]
  %sub.i.i400 = sub i32 12, %res.0.i.i397433
  %add.ptr.i.i401 = getelementptr i8, ptr %bind_args, i32 %sub.i.i400
  %82 = call ptr @memset(ptr %add.ptr.i.i401, i32 0, i32 %res.0.i.i397433)
  br label %cleanup259

if.end229:                                        ; preds = %if.end.i.i399
  %83 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %72, align 4
  %mode231 = getelementptr inbounds %struct.pps_source_info, ptr %1, i32 0, i32 2
  %85 = ptrtoint ptr %mode231 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %mode231, align 8
  %neg232 = xor i32 %86, -1
  %and233 = and i32 %84, %neg232
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %cmp234.not = icmp eq i32 %and233, 0
  br i1 %cmp234.not, label %if.end241, label %do.end238

do.end238:                                        ; preds = %if.end229
  call void @__sanitizer_cov_trace_pc() #9
  %dev239 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 12
  %87 = ptrtoint ptr %dev239 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev239, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.20, i32 noundef %84) #10
  br label %cleanup259

if.end241:                                        ; preds = %if.end229
  %89 = ptrtoint ptr %bind_args to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %bind_args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %90)
  %cmp242.not = icmp eq i32 %90, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %84)
  %cmp245.not = icmp ult i32 %84, 4
  %or.cond = select i1 %cmp242.not, i1 %cmp245.not, i1 false
  br i1 %or.cond, label %lor.lhs.false246, label %if.end241.do.end251_crit_edge

if.end241.do.end251_crit_edge:                    ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end251

lor.lhs.false246:                                 ; preds = %if.end241
  %91 = ptrtoint ptr %74 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %cmp247.not = icmp eq i32 %92, 0
  br i1 %cmp247.not, label %lor.lhs.false246.cleanup259_crit_edge, label %lor.lhs.false246.do.end251_crit_edge

lor.lhs.false246.do.end251_crit_edge:             ; preds = %lor.lhs.false246
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end251

lor.lhs.false246.cleanup259_crit_edge:            ; preds = %lor.lhs.false246
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup259

do.end251:                                        ; preds = %lor.lhs.false246.do.end251_crit_edge, %if.end241.do.end251_crit_edge
  %dev252 = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 12
  %93 = ptrtoint ptr %dev252 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev252, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %94, ptr noundef nonnull @.str.28, i32 noundef %84) #10
  br label %cleanup259

cleanup259:                                       ; preds = %do.end251, %lor.lhs.false246.cleanup259_crit_edge, %do.end238, %if.then11.i.i402, %do.end222.cleanup259_crit_edge
  %retval.1 = phi i32 [ -22, %do.end238 ], [ -22, %do.end251 ], [ -1, %do.end222.cleanup259_crit_edge ], [ -95, %lor.lhs.false246.cleanup259_crit_edge ], [ -14, %if.then11.i.i402 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %bind_args) #7
  br label %cleanup261

sw.epilog:                                        ; preds = %cleanup.sw.epilog_crit_edge, %do.end147.sw.epilog_crit_edge, %if.end122, %copy_to_user.exit.sw.epilog_crit_edge
  br label %cleanup261

cleanup261:                                       ; preds = %sw.epilog, %cleanup259, %cleanup.cleanup261_crit_edge, %cleanup.thread427, %cleanup.thread, %do.end147.cleanup261_crit_edge, %if.then78, %do.body64, %if.then53, %do.body39, %if.then11.i.i, %do.end29.cleanup261_crit_edge, %copy_to_user.exit.cleanup261_crit_edge, %if.end.i.i.cleanup261_crit_edge, %do.end.cleanup261_crit_edge, %entry.cleanup261_crit_edge
  %retval.2 = phi i32 [ 0, %sw.epilog ], [ %retval.1, %cleanup259 ], [ -14, %cleanup.cleanup261_crit_edge ], [ -14, %copy_to_user.exit.cleanup261_crit_edge ], [ -1, %do.end29.cleanup261_crit_edge ], [ -22, %if.then53 ], [ -22, %if.then78 ], [ -14, %do.end147.cleanup261_crit_edge ], [ -25, %entry.cleanup261_crit_edge ], [ %retval.0.ph, %cleanup.thread ], [ -14, %cleanup.thread427 ], [ -14, %do.end.cleanup261_crit_edge ], [ -14, %if.end.i.i.cleanup261_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %do.body39 ], [ -22, %do.body64 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %params) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pps_cdev_open(ptr nocapture noundef readonly %inode, ptr nocapture noundef writeonly %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -228
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %3 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %private_data, align 4
  %dev = getelementptr i8, ptr %2, i32 160
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call = tail call ptr @kobject_get(ptr noundef %5) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pps_cdev_release(ptr nocapture noundef readonly %inode, ptr nocapture noundef readnone %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %dev = getelementptr i8, ptr %2, i32 160
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void @kobject_put(ptr noundef %4) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pps_cdev_fasync(i32 noundef %fd, ptr noundef %file, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %async_queue = getelementptr inbounds %struct.pps_device, ptr %1, i32 0, i32 13
  %call = tail call i32 @fasync_helper(i32 noundef %fd, ptr noundef %file, i32 noundef %on, ptr noundef %async_queue) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pps_cdev_pps_fetch(ptr noundef %pps, ptr nocapture noundef readonly %fdata) unnamed_addr #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  %__wq_entry60 = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %last_ev = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 7
  %0 = ptrtoint ptr %last_ev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %last_ev, align 4
  %timeout = getelementptr inbounds %struct.pps_fdata, ptr %fdata, i32 0, i32 1
  %flags = getelementptr inbounds %struct.pps_fdata, ptr %fdata, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 61) #7
  %4 = ptrtoint ptr %last_ev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %last_ev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %5)
  %cmp.not = icmp eq i32 %1, %5
  br i1 %cmp.not, label %if.then5, label %if.then.cleanup134_crit_edge

if.then.cleanup134_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup134

if.then5:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #7
  %6 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #7
  %queue = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 8
  %call205 = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %7 = ptrtoint ptr %last_ev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %last_ev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %8)
  %cmp8.not206 = icmp eq i32 %1, %8
  br i1 %cmp8.not206, label %if.then5.if.end_crit_edge, label %if.then5.for.end_crit_edge

if.then5.for.end_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.then5.if.end_crit_edge:                        ; preds = %if.then5
  br label %if.end

if.end:                                           ; preds = %cleanup.if.end_crit_edge, %if.then5.if.end_crit_edge
  %call207 = phi i32 [ %call, %cleanup.if.end_crit_edge ], [ %call205, %if.then5.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool10.not = icmp eq i32 %call207, 0
  br i1 %tobool10.not, label %cleanup, label %if.end.__out_crit_edge

if.end.__out_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__out

cleanup:                                          ; preds = %if.end
  call void @schedule() #7
  %call = call i32 @prepare_to_wait_event(ptr noundef %queue, ptr noundef nonnull %__wq_entry, i32 noundef 1) #7
  %9 = ptrtoint ptr %last_ev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %last_ev, align 4
  %cmp8.not = icmp eq i32 %1, %10
  br i1 %cmp8.not, label %cleanup.if.end_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.if.end_crit_edge:                         ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then5.for.end_crit_edge
  call void @finish_wait(ptr noundef %queue, ptr noundef nonnull %__wq_entry) #7
  br label %__out

__out:                                            ; preds = %for.end, %if.end.__out_crit_edge
  %__ret6.1174 = phi i32 [ 0, %for.end ], [ %call207, %if.end.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #7
  br label %if.end110

if.else:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_cdev_pps_fetch.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_cdev_pps_fetch, %do.end28)) #7
          to label %if.then23 [label %do.end28], !srcloc !139

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 12
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %13 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %timeout, align 8
  %nsec = getelementptr inbounds %struct.pps_fdata, ptr %fdata, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %nsec to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nsec, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pps_cdev_pps_fetch.__UNIQUE_ID_ddebug223, ptr noundef %12, ptr noundef nonnull @.str.34, i64 noundef %14, i32 noundef %16) #7
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %if.else
  %17 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %timeout, align 8
  %19 = trunc i64 %18 to i32
  %conv = mul i32 %19, 100
  %nsec32 = getelementptr inbounds %struct.pps_fdata, ptr %fdata, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %nsec32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nsec32, align 8
  %div = sdiv i32 %21, 10000000
  %add = add i32 %conv, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %cmp33.not = icmp eq i32 %add, 0
  br i1 %cmp33.not, label %do.end28.cleanup134_crit_edge, label %if.then35

do.end28.cleanup134_crit_edge:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup134

if.then35:                                        ; preds = %do.end28
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 75) #7
  %22 = ptrtoint ptr %last_ev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %last_ev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %23)
  %cmp44.not = icmp eq i32 %1, %23
  br i1 %cmp44.not, label %if.then59, label %if.then35.if.end110_crit_edge

if.then35.if.end110_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then59:                                        ; preds = %if.then35
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry60) #7
  %24 = call ptr @memset(ptr %__wq_entry60, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry60, i32 noundef 0) #7
  %queue64 = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 8
  %call65208 = call i32 @prepare_to_wait_event(ptr noundef %queue64, ptr noundef nonnull %__wq_entry60, i32 noundef 1) #7
  %25 = ptrtoint ptr %last_ev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %last_ev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %26)
  %cmp68.not209.not = icmp eq i32 %1, %26
  br i1 %cmp68.not209.not, label %if.then59.if.end88_crit_edge, label %if.end100.thread

if.then59.if.end88_crit_edge:                     ; preds = %if.then59
  br label %if.end88

if.end100.thread:                                 ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  call void @finish_wait(ptr noundef %queue64, ptr noundef nonnull %__wq_entry60) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry60) #7
  br label %if.end110

if.end88:                                         ; preds = %cleanup93.if.end88_crit_edge, %if.then59.if.end88_crit_edge
  %__ret61.1215 = phi i32 [ %__ret61.1, %cleanup93.if.end88_crit_edge ], [ %add, %if.then59.if.end88_crit_edge ]
  %call65214 = phi i32 [ %call65, %cleanup93.if.end88_crit_edge ], [ %call65208, %if.then59.if.end88_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65214)
  %tobool89.not = icmp eq i32 %call65214, 0
  br i1 %tobool89.not, label %cleanup93, label %if.end100.thread189

if.end100.thread189:                              ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry60) #7
  br label %if.end110

cleanup93:                                        ; preds = %if.end88
  %call92 = call i32 @schedule_timeout(i32 noundef %__ret61.1215) #7
  %call65 = call i32 @prepare_to_wait_event(ptr noundef %queue64, ptr noundef nonnull %__wq_entry60, i32 noundef 1) #7
  %27 = ptrtoint ptr %last_ev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %last_ev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %28)
  %cmp68.not = icmp eq i32 %1, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool74.not = icmp eq i32 %call92, 0
  %spec.store.select136 = select i1 %tobool74.not, i32 1, i32 %call92
  %__ret61.1 = select i1 %cmp68.not, i32 %call92, i32 %spec.store.select136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret61.1)
  %tobool81.not = icmp eq i32 %__ret61.1, 0
  %not.cmp68.not = xor i1 %cmp68.not, true
  %29 = select i1 %not.cmp68.not, i1 true, i1 %tobool81.not
  br i1 %29, label %if.end100, label %cleanup93.if.end88_crit_edge

cleanup93.if.end88_crit_edge:                     ; preds = %cleanup93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.end100:                                        ; preds = %cleanup93
  call void @finish_wait(ptr noundef %queue64, ptr noundef nonnull %__wq_entry60) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry60) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret61.1)
  %cmp102 = icmp eq i32 %__ret61.1, 0
  br i1 %cmp102, label %if.end100.cleanup134_crit_edge, label %if.end100.if.end110_crit_edge

if.end100.if.end110_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.end100.cleanup134_crit_edge:                   ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup134

if.end110:                                        ; preds = %if.end100.if.end110_crit_edge, %if.end100.thread189, %if.end100.thread, %if.then35.if.end110_crit_edge, %__out
  %err.2 = phi i32 [ %__ret6.1174, %__out ], [ %__ret61.1, %if.end100.if.end110_crit_edge ], [ %call65214, %if.end100.thread189 ], [ %add, %if.then35.if.end110_crit_edge ], [ %add, %if.end100.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -512, i32 %err.2)
  %cmp111 = icmp eq i32 %err.2, -512
  br i1 %cmp111, label %do.body114, label %if.end110.cleanup134_crit_edge

if.end110.cleanup134_crit_edge:                   ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup134

do.body114:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pps_cdev_pps_fetch.__UNIQUE_ID_ddebug224, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pps_cdev_pps_fetch, %cleanup134)) #7
          to label %if.then128 [label %cleanup134], !srcloc !139

if.then128:                                       ; preds = %do.body114
  call void @__sanitizer_cov_trace_pc() #9
  %dev129 = getelementptr inbounds %struct.pps_device, ptr %pps, i32 0, i32 12
  %30 = ptrtoint ptr %dev129 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev129, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pps_cdev_pps_fetch.__UNIQUE_ID_ddebug224, ptr noundef %31, ptr noundef nonnull @.str.35) #7
  br label %cleanup134

cleanup134:                                       ; preds = %if.then128, %do.body114, %if.end110.cleanup134_crit_edge, %if.end100.cleanup134_crit_edge, %do.end28.cleanup134_crit_edge, %if.then.cleanup134_crit_edge
  %retval.1 = phi i32 [ -4, %if.then128 ], [ 0, %if.end110.cleanup134_crit_edge ], [ -110, %if.end100.cleanup134_crit_edge ], [ 0, %if.then.cleanup134_crit_edge ], [ -4, %do.body114 ], [ 0, %do.end28.cleanup134_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kobject_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fasync_helper(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !17, !19, !20, !21, !22, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !42, !43, !45, !46, !48, !50, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !87, !89, !91, !92, !93, !95, !96, !98, !99, !100, !101, !103, !104, !105, !107, !108, !110, !111, !113, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128}
!llvm.named.register.sp = !{!129}
!llvm.module.flags = !{!130, !131, !132, !133, !134, !135, !136, !137}
!llvm.ident = !{!138}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pps/pps.c", i32 360, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @pps_register_cdev._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @pps_register_cdev._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/pps/pps.c", i32 376, i32 3}
!8 = !{ptr @pps_register_cdev._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @pps_register_cdev._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/pps/pps.c", i32 381, i32 8}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/pps/pps.c", i32 390, i32 2}
!14 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @pps_register_cdev.__UNIQUE_ID_ddebug234, !13, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!16 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/pps/pps.c", i32 408, i32 2}
!19 = !{ptr @.str.11, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @pps_unregister_cdev.__UNIQUE_ID_ddebug235, !18, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!21 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__ksymtab_pps_lookup_dev, !23, !"__ksymtab_pps_lookup_dev", i1 false, i1 false}
!23 = !{!"../drivers/pps/pps.c", i32 443, i32 1}
!24 = !{ptr @__initcall__kmod_pps_core__236_484_pps_init4, !25, !"__initcall__kmod_pps_core__236_484_pps_init4", i1 false, i1 false}
!25 = !{!"../drivers/pps/pps.c", i32 484, i32 1}
!26 = !{ptr @__exitcall_pps_exit, !27, !"__exitcall_pps_exit", i1 false, i1 false}
!27 = !{!"../drivers/pps/pps.c", i32 485, i32 1}
!28 = !{ptr @__UNIQUE_ID_author237, !29, !"__UNIQUE_ID_author237", i1 false, i1 false}
!29 = !{!"../drivers/pps/pps.c", i32 487, i32 1}
!30 = !{ptr @__UNIQUE_ID_description238, !31, !"__UNIQUE_ID_description238", i1 false, i1 false}
!31 = !{!"../drivers/pps/pps.c", i32 488, i32 1}
!32 = !{ptr @__UNIQUE_ID_file239, !33, !"__UNIQUE_ID_file239", i1 false, i1 false}
!33 = !{!"../drivers/pps/pps.c", i32 489, i32 1}
!34 = !{ptr @__UNIQUE_ID_license240, !33, !"__UNIQUE_ID_license240", i1 false, i1 false}
!35 = !{ptr @pps_devt, !36, !"pps_devt", i1 false, i1 false}
!36 = !{!"../drivers/pps/pps.c", i32 28, i32 14}
!37 = !{ptr @pps_class, !38, !"pps_class", i1 false, i1 false}
!38 = !{!"../drivers/pps/pps.c", i32 29, i32 22}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/pps/pps.c", i32 31, i32 8}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pps_idr_lock, !40, !"pps_idr_lock", i1 false, i1 false}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/pps/pps.c", i32 32, i32 8}
!45 = !{ptr @pps_idr, !44, !"pps_idr", i1 false, i1 false}
!46 = !{ptr @pps_cdev_fops, !47, !"pps_cdev_fops", i1 false, i1 false}
!47 = !{!"../drivers/pps/pps.c", i32 320, i32 37}
!48 = !{ptr @.str.16, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pps/pps.c", i32 101, i32 3}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug225, !49, !"__UNIQUE_ID_ddebug225", i1 false, i1 false}
!52 = !{ptr @.str.18, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/pps/pps.c", i32 117, i32 3}
!54 = !{ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug226, !53, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/pps/pps.c", i32 127, i32 4}
!57 = !{ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug227, !56, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pps/pps.c", i32 134, i32 4}
!60 = !{ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug228, !59, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!61 = !{ptr @.str.21, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/pps/pps.c", i32 147, i32 4}
!63 = !{ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug229, !62, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!64 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/pps/pps.c", i32 168, i32 3}
!66 = !{ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug230, !65, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pps/pps.c", i32 179, i32 3}
!69 = !{ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug231, !68, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/pps/pps.c", i32 209, i32 3}
!72 = !{ptr @pps_cdev_ioctl.__UNIQUE_ID_ddebug232, !71, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!73 = !{ptr @.str.25, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/pps/pps.c", i32 221, i32 4}
!75 = !{ptr @.str.26, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @pps_cdev_ioctl._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @pps_cdev_ioctl._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/pps/pps.c", i32 230, i32 4}
!80 = !{ptr @pps_cdev_ioctl._entry.27, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @pps_cdev_ioctl._entry_ptr.29, !79, !"_entry_ptr", i1 false, i1 false}
!82 = distinct !{null, !83, !"__already_done", i1 false, i1 false}
!83 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!84 = distinct !{null, !83, !"<string literal>", i1 false, i1 false}
!85 = distinct !{null, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!87 = !{ptr @.str.32, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!89 = !{ptr @.str.33, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/pps/pps.c", i32 65, i32 3}
!91 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @pps_cdev_pps_fetch.__UNIQUE_ID_ddebug223, !90, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!93 = !{ptr @.str.35, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/pps/pps.c", i32 83, i32 3}
!95 = !{ptr @pps_cdev_pps_fetch.__UNIQUE_ID_ddebug224, !94, !"__UNIQUE_ID_ddebug224", i1 false, i1 false}
!96 = !{ptr @.str.36, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/pps/pps.c", i32 338, i32 2}
!98 = !{ptr @.str.37, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @pps_device_destruct.__UNIQUE_ID_ddebug233, !97, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!100 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!101 = distinct !{null, !102, !"__warned", i1 false, i1 false}
!102 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!103 = !{ptr @.str.39, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @.str.40, !102, !"<string literal>", i1 false, i1 false}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!107 = !{ptr @.str.41, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @pps_init.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../drivers/pps/pps.c", i32 459, i32 14}
!110 = !{ptr @.str.42, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.43, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/pps/pps.c", i32 461, i32 3}
!113 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @pps_init._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @pps_init._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.46, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/pps/pps.c", i32 468, i32 3}
!118 = !{ptr @pps_init._entry.45, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @pps_init._entry_ptr.47, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/pps/pps.c", i32 472, i32 2}
!122 = !{ptr @pps_init._entry.48, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @pps_init._entry_ptr.50, !121, !"_entry_ptr", i1 false, i1 false}
!124 = !{ptr @.str.52, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/pps/pps.c", i32 473, i32 2}
!126 = !{ptr @pps_init._entry.51, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @pps_init._entry_ptr.53, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!129 = !{!"sp"}
!130 = !{i32 1, !"wchar_size", i32 2}
!131 = !{i32 1, !"min_enum_size", i32 4}
!132 = !{i32 8, !"branch-target-enforcement", i32 0}
!133 = !{i32 8, !"sign-return-address", i32 0}
!134 = !{i32 8, !"sign-return-address-all", i32 0}
!135 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!136 = !{i32 7, !"uwtable", i32 1}
!137 = !{i32 7, !"frame-pointer", i32 2}
!138 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!139 = !{i64 2148700867, i64 2148700872, i64 2148700885, i64 2148700929, i64 2148700963, i64 2148700984}
!140 = !{i64 2149365521}
!141 = !{i64 2149365787}
!142 = !{i64 2152067748, i64 2152067773}
!143 = !{i64 2152067067, i64 2152067092}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{i64 4562622}
!146 = !{i64 4562819}
!147 = !{i64 2152048052}
!148 = !{i64 2153448693, i64 2153448973, i64 2153449307, i64 2153449641}
!149 = !{!"auto-init"}
