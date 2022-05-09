; ModuleID = '/llk/IR_all_yes/drivers/media/mc/mc-devnode.c_pt.bc'
source_filename = "../drivers/media/mc/mc-devnode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.lock_class_key, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.media_devnode = type { ptr, ptr, %struct.device, %struct.cdev, ptr, i32, i32, ptr }
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
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.file = type { %union.anon.15, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.15 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.media_file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.72, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.73, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.74, ptr, %struct.address_space, %struct.list_head, %union.anon.75, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.72 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.73 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.74 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.75 = type { ptr }

@media_devnode_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @media_devnode_lock, i64 52), ptr getelementptr (i8, ptr @media_devnode_lock, i64 52) }, ptr @media_devnode_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@media_devnode_nums = internal global { [8 x i32], [32 x i8] } zeroinitializer, align 32
@media_devnode_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013mc: could not get a free minor\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"media_devnode_register\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/mc/mc-devnode.c\00", [34 x i8] zeroinitializer }, align 32
@media_devnode_register._entry_ptr = internal global ptr @media_devnode_register._entry, section ".printk_index", align 4
@media_bus_type = internal global { %struct.bus_type, [32 x i8] } { %struct.bus_type { ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.lock_class_key zeroinitializer, i8 0 }, [32 x i8] zeroinitializer }, align 32
@media_dev_t = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"media%d\00", [24 x i8] zeroinitializer }, align 32
@media_devnode_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @media_read, ptr @media_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @media_poll, ptr @media_ioctl, ptr null, ptr null, i32 0, ptr @media_open, ptr null, ptr @media_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@media_devnode_register._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013mc: %s: cdev_device_add failed\0A\00", [62 x i8] zeroinitializer }, align 32
@media_devnode_register._entry_ptr.6 = internal global ptr @media_devnode_register._entry.4, section ".printk_index", align 4
@__initcall__kmod_mc__232_323_media_devnode_init4 = internal global ptr @media_devnode_init, section ".initcall4.init", align 4
@__exitcall_media_devnode_exit = internal global ptr @media_devnode_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [63 x i8] c"mc.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [58 x i8] c"mc.description=Device node registration for media drivers\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [28 x i8] c"mc.file=drivers/media/mc/mc\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [15 x i8] c"mc.license=GPL\00", section ".modinfo", align 1
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"media_devnode_lock.wait_lock\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"media_devnode_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"media\00", [26 x i8] zeroinitializer }, align 32
@media_devnode_release.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"media_devnode_release\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: Media Devnode Deallocated\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"mc: %s: Media Devnode Deallocated\0A\00", [61 x i8] zeroinitializer }, align 32
@media_release.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"media_release\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: Media Release\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mc: %s: Media Release\0A\00", [41 x i8] zeroinitializer }, align 32
@media_devnode_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 299, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016mc: Linux media interface: v0.10\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"media_devnode_init\00", [45 x i8] zeroinitializer }, align 32
@media_devnode_init._entry_ptr = internal global ptr @media_devnode_init._entry, section ".printk_index", align 4
@media_devnode_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.18, ptr @.str.2, i32 303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014mc: unable to allocate major\0A\00", [32 x i8] zeroinitializer }, align 32
@media_devnode_init._entry_ptr.21 = internal global ptr @media_devnode_init._entry.19, section ".printk_index", align 4
@media_devnode_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.18, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014mc: bus_register failed\0A\00", [37 x i8] zeroinitializer }, align 32
@media_devnode_init._entry_ptr.24 = internal global ptr @media_devnode_init._entry.22, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"media_devnode_lock\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"media_devnode_nums\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 46, i32 8 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 223, i32 3 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"media_bus_type\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 66, i32 24 }
@___asan_gen_.46 = private unnamed_addr constant [12 x i8] c"media_dev_t\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 40, i32 14 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 240, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"media_devnode_fops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 197, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 251, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 45, i32 8 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 67, i32 10 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 63, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 193, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 299, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 303, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.109 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.110 = private constant [33 x i8] c"../drivers/media/mc/mc-devnode.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 310, i32 3 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_media_devnode_exit, ptr @__initcall__kmod_mc__232_323_media_devnode_init4, ptr @media_devnode_exit, ptr @media_devnode_init._entry, ptr @media_devnode_init._entry.19, ptr @media_devnode_init._entry.22, ptr @media_devnode_init._entry_ptr, ptr @media_devnode_init._entry_ptr.21, ptr @media_devnode_init._entry_ptr.24, ptr @media_devnode_register._entry, ptr @media_devnode_register._entry.4, ptr @media_devnode_register._entry_ptr, ptr @media_devnode_register._entry_ptr.6, ptr @media_devnode_lock, ptr @media_devnode_nums, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @media_bus_type, ptr @media_dev_t, ptr @.str.3, ptr @media_devnode_fops, ptr @.str.5, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_devnode_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_devnode_nums to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_devnode_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_bus_type to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_dev_t to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_devnode_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_devnode_register._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_devnode_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_devnode_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @media_devnode_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @media_devnode_register(ptr noundef %mdev, ptr noundef %devnode, ptr noundef %owner) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @media_devnode_lock, i32 noundef 0) #4
  %call = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @media_devnode_nums, i32 noundef 256) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %call)
  %cmp = icmp eq i32 %call, 256
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  tail call void @kfree(ptr noundef %devnode) #4
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @_set_bit(i32 noundef %call, ptr noundef nonnull @media_devnode_nums) #4
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  %minor2 = getelementptr inbounds %struct.media_devnode, ptr %devnode, i32 0, i32 5
  %0 = ptrtoint ptr %minor2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %minor2, align 4
  %1 = ptrtoint ptr %devnode to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %mdev, ptr %devnode, align 8
  %dev = getelementptr inbounds %struct.media_devnode, ptr %devnode, i32 0, i32 2
  %bus = getelementptr inbounds %struct.media_devnode, ptr %devnode, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %bus to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @media_bus_type, ptr %bus, align 8
  %3 = load i32, ptr @media_dev_t, align 4
  %shr = and i32 %3, -1048576
  %or = or i32 %shr, %call
  %devt = getelementptr inbounds %struct.media_devnode, ptr %devnode, i32 0, i32 2, i32 29
  %4 = ptrtoint ptr %devt to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %devt, align 8
  %release = getelementptr inbounds %struct.media_devnode, ptr %devnode, i32 0, i32 2, i32 35
  %5 = ptrtoint ptr %release to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @media_devnode_release, ptr %release, align 4
  %parent = getelementptr inbounds %struct.media_devnode, ptr %devnode, i32 0, i32 4
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.if.end10_crit_edge, label %if.then6

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %parent9 = getelementptr inbounds %struct.media_devnode, ptr %devnode, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %parent9 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %parent9, align 8
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %if.end.if.end10_crit_edge
  %call13 = tail call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %call) #4
  tail call void @device_initialize(ptr noundef %dev) #4
  %cdev = getelementptr inbounds %struct.media_devnode, ptr %devnode, i32 0, i32 3
  tail call void @cdev_init(ptr noundef %cdev, ptr noundef nonnull @media_devnode_fops) #4
  %owner16 = getelementptr inbounds %struct.media_devnode, ptr %devnode, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %owner16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %owner, ptr %owner16, align 8
  %10 = ptrtoint ptr %minor2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %minor2, align 4
  %call19 = tail call i32 (ptr, ptr, ...) @kobject_set_name(ptr noundef %cdev, ptr noundef nonnull @.str.3, i32 noundef %11) #4
  %call22 = tail call i32 @cdev_device_add(ptr noundef %cdev, ptr noundef %dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %do.end27, label %if.end30

do.end27:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.1) #7
  tail call void @mutex_lock_nested(ptr noundef nonnull @media_devnode_lock, i32 noundef 0) #4
  %12 = ptrtoint ptr %minor2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %minor2, align 4
  tail call void @_clear_bit(i32 noundef %13, ptr noundef nonnull @media_devnode_nums) #4
  %14 = ptrtoint ptr %devnode to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %devnode, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  tail call void @put_device(ptr noundef %dev) #4
  br label %cleanup

if.end30:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %flags = getelementptr inbounds %struct.media_devnode, ptr %devnode, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %do.end27, %if.then
  %retval.0 = phi i32 [ -23, %if.then ], [ %call22, %do.end27 ], [ 0, %if.end30 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @media_devnode_release(ptr noundef %cd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %cd, i32 -8
  tail call void @mutex_lock_nested(ptr noundef nonnull @media_devnode_lock, i32 noundef 0) #4
  %minor = getelementptr i8, ptr %cd, i32 1092
  %0 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %minor, align 4
  tail call void @_clear_bit(i32 noundef %1, ptr noundef nonnull @media_devnode_nums) #4
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  %release = getelementptr i8, ptr %cd, i32 1100
  %2 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %release, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %3(ptr noundef %add.ptr) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @media_devnode_release.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@media_devnode_release, %if.then6)) #4
          to label %do.end [label %if.then6], !srcloc !70

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @media_devnode_release.__UNIQUE_ID_ddebug230, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #4
  br label %do.end

do.end:                                           ; preds = %if.then6, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_initialize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_set_name(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cdev_device_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @media_devnode_unregister_prepare(ptr noundef %devnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %devnode, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %media_devnode_is_registered.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

media_devnode_is_registered.exit:                 ; preds = %entry
  %flags.i = getelementptr inbounds %struct.media_devnode, ptr %devnode, i32 0, i32 6
  %0 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %media_devnode_is_registered.exit.return_crit_edge, label %if.end

media_devnode_is_registered.exit.return_crit_edge: ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mutex_lock_nested(ptr noundef nonnull @media_devnode_lock, i32 noundef 0) #4
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %flags.i) #4
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  br label %return

return:                                           ; preds = %if.end, %media_devnode_is_registered.exit.return_crit_edge, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @media_devnode_unregister(ptr noundef %devnode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @media_devnode_lock, i32 noundef 0) #4
  %cdev = getelementptr inbounds %struct.media_devnode, ptr %devnode, i32 0, i32 3
  %dev = getelementptr inbounds %struct.media_devnode, ptr %devnode, i32 0, i32 2
  tail call void @cdev_device_del(ptr noundef %cdev, ptr noundef %dev) #4
  %0 = ptrtoint ptr %devnode to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %devnode, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  tail call void @put_device(ptr noundef %dev) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_device_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @media_devnode_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @bus_unregister(ptr noundef nonnull @media_bus_type) #4
  %0 = load i32, ptr @media_dev_t, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 256) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bus_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @media_devnode_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #7
  %call1 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @media_dev_t, i32 noundef 0, i32 noundef 256, ptr noundef nonnull @.str.9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %call7 = tail call i32 @bus_register(ptr noundef nonnull @media_bus_type) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %if.then9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = load i32, ptr @media_dev_t, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 256) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then9, %entry.cleanup.sink.split_crit_edge
  %.str.23.sink = phi ptr [ @.str.23, %if.then9 ], [ @.str.20, %entry.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ -5, %if.then9 ], [ %call1, %entry.cleanup.sink.split_crit_edge ]
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.23.sink) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @media_read(ptr noundef %filp, ptr noundef %buf, i32 noundef %sz, ptr noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %fops = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fops, align 4
  %read = getelementptr inbounds %struct.media_file_operations, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %media_devnode_is_registered.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

media_devnode_is_registered.exit:                 ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not, label %media_devnode_is_registered.exit.cleanup_crit_edge, label %if.end4

media_devnode_is_registered.exit.cleanup_crit_edge: ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 %5(ptr noundef %filp, ptr noundef %buf, i32 noundef %sz, ptr noundef %off) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %media_devnode_is_registered.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %media_devnode_is_registered.exit.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @media_write(ptr noundef %filp, ptr noundef %buf, i32 noundef %sz, ptr noundef %off) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %fops = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fops, align 4
  %write = getelementptr inbounds %struct.media_file_operations, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %media_devnode_is_registered.exit

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

media_devnode_is_registered.exit:                 ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool2.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool2.not, label %media_devnode_is_registered.exit.cleanup_crit_edge, label %if.end4

media_devnode_is_registered.exit.cleanup_crit_edge: ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call7 = tail call i32 %5(ptr noundef %filp, ptr noundef %buf, i32 noundef %sz, ptr noundef %off) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %media_devnode_is_registered.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end4 ], [ -22, %entry.cleanup_crit_edge ], [ -5, %media_devnode_is_registered.exit.cleanup_crit_edge ], [ -5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @media_poll(ptr noundef %filp, ptr noundef %poll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %media_devnode_is_registered.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

media_devnode_is_registered.exit:                 ; preds = %entry
  %flags.i = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %media_devnode_is_registered.exit.cleanup_crit_edge, label %if.end

media_devnode_is_registered.exit.cleanup_crit_edge: ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %media_devnode_is_registered.exit
  %fops = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fops, align 4
  %poll2 = getelementptr inbounds %struct.media_file_operations, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %poll2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %poll2, align 4
  %tobool3.not = icmp eq ptr %7, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call8 = tail call i32 %7(ptr noundef %filp, ptr noundef %poll) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %media_devnode_is_registered.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end5 ], [ 24, %media_devnode_is_registered.exit.cleanup_crit_edge ], [ 325, %if.end.cleanup_crit_edge ], [ 24, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @media_ioctl(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %fops = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fops, align 4
  %ioctl = getelementptr inbounds %struct.media_file_operations, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %ioctl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ioctl, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %entry.__media_ioctl.exit_crit_edge, label %if.end.i

entry.__media_ioctl.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %__media_ioctl.exit

if.end.i:                                         ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %if.end.i.__media_ioctl.exit_crit_edge, label %media_devnode_is_registered.exit.i

if.end.i.__media_ioctl.exit_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__media_ioctl.exit

media_devnode_is_registered.exit.i:               ; preds = %if.end.i
  %flags.i.i = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i.i, align 4
  %and1.i.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool2.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool2.not.i, label %media_devnode_is_registered.exit.i.__media_ioctl.exit_crit_edge, label %if.end4.i

media_devnode_is_registered.exit.i.__media_ioctl.exit_crit_edge: ; preds = %media_devnode_is_registered.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %__media_ioctl.exit

if.end4.i:                                        ; preds = %media_devnode_is_registered.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  %call5.i = tail call i32 %5(ptr noundef %filp, i32 noundef %cmd, i32 noundef %arg) #4
  br label %__media_ioctl.exit

__media_ioctl.exit:                               ; preds = %if.end4.i, %media_devnode_is_registered.exit.i.__media_ioctl.exit_crit_edge, %if.end.i.__media_ioctl.exit_crit_edge, %entry.__media_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end4.i ], [ -25, %entry.__media_ioctl.exit_crit_edge ], [ -5, %media_devnode_is_registered.exit.i.__media_ioctl.exit_crit_edge ], [ -5, %if.end.i.__media_ioctl.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @media_open(ptr nocapture noundef readonly %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @media_devnode_lock, i32 noundef 0) #4
  %0 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 48
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 -936
  %tobool.not.i = icmp eq ptr %add.ptr, null
  br i1 %tobool.not.i, label %entry.if.then_crit_edge, label %media_devnode_is_registered.exit

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

media_devnode_is_registered.exit:                 ; preds = %entry
  %flags.i = getelementptr i8, ptr %2, i32 168
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %media_devnode_is_registered.exit.if.then_crit_edge, label %if.end

media_devnode_is_registered.exit.if.then_crit_edge: ; preds = %media_devnode_is_registered.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.then

if.then:                                          ; preds = %media_devnode_is_registered.exit.if.then_crit_edge, %entry.if.then_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  br label %cleanup

if.end:                                           ; preds = %media_devnode_is_registered.exit
  %dev = getelementptr i8, ptr %2, i32 -928
  %call1 = tail call ptr @get_device(ptr noundef %dev) #4
  tail call void @mutex_unlock(ptr noundef nonnull @media_devnode_lock) #4
  %private_data = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %5 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %private_data, align 4
  %fops = getelementptr i8, ptr %2, i32 -932
  %6 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fops, align 4
  %open = getelementptr inbounds %struct.media_file_operations, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %open to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %open, align 4
  %tobool2.not = icmp eq ptr %9, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  %call6 = tail call i32 %9(ptr noundef %filp) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.then3.cleanup_crit_edge, label %if.then8

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then8:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @put_device(ptr noundef %dev) #4
  %10 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %private_data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.then3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call6, %if.then8 ], [ -6, %if.then ], [ 0, %if.then3.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @media_release(ptr nocapture noundef readnone %inode, ptr noundef %filp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data.i = getelementptr inbounds %struct.file, ptr %filp, i32 0, i32 16
  %0 = ptrtoint ptr %private_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data.i, align 4
  %fops = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %fops to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fops, align 4
  %release = getelementptr inbounds %struct.media_file_operations, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %release to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %release, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 %5(ptr noundef %filp) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %private_data.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %private_data.i, align 4
  %dev = getelementptr inbounds %struct.media_devnode, ptr %1, i32 0, i32 2
  tail call void @put_device(ptr noundef %dev) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @media_release.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@media_release, %if.then8)) #4
          to label %do.end [label %if.then8], !srcloc !70

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @media_release.__UNIQUE_ID_ddebug231, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.14) #4
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bus_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !16, !18, !20, !22, !23, !25, !27, !29, !30, !31, !33, !35, !37, !38, !39, !40, !41, !43, !45, !46, !47, !48, !50, !51, !52, !53, !55, !56, !57, !59, !60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/mc/mc-devnode.c", i32 223, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @media_devnode_register._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @media_devnode_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/mc/mc-devnode.c", i32 240, i32 30}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/mc/mc-devnode.c", i32 251, i32 3}
!10 = !{ptr @media_devnode_register._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @media_devnode_register._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @__initcall__kmod_mc__232_323_media_devnode_init4, !13, !"__initcall__kmod_mc__232_323_media_devnode_init4", i1 false, i1 false}
!13 = !{!"../drivers/media/mc/mc-devnode.c", i32 323, i32 1}
!14 = !{ptr @__exitcall_media_devnode_exit, !15, !"__exitcall_media_devnode_exit", i1 false, i1 false}
!15 = !{!"../drivers/media/mc/mc-devnode.c", i32 324, i32 1}
!16 = !{ptr @__UNIQUE_ID_author233, !17, !"__UNIQUE_ID_author233", i1 false, i1 false}
!17 = !{!"../drivers/media/mc/mc-devnode.c", i32 326, i32 1}
!18 = !{ptr @__UNIQUE_ID_description234, !19, !"__UNIQUE_ID_description234", i1 false, i1 false}
!19 = !{!"../drivers/media/mc/mc-devnode.c", i32 327, i32 1}
!20 = !{ptr @__UNIQUE_ID_file235, !21, !"__UNIQUE_ID_file235", i1 false, i1 false}
!21 = !{!"../drivers/media/mc/mc-devnode.c", i32 328, i32 1}
!22 = !{ptr @__UNIQUE_ID_license236, !21, !"__UNIQUE_ID_license236", i1 false, i1 false}
!23 = !{ptr @media_dev_t, !24, !"media_dev_t", i1 false, i1 false}
!24 = !{!"../drivers/media/mc/mc-devnode.c", i32 40, i32 14}
!25 = !{ptr @media_devnode_nums, !26, !"media_devnode_nums", i1 false, i1 false}
!26 = !{!"../drivers/media/mc/mc-devnode.c", i32 46, i32 8}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/mc/mc-devnode.c", i32 45, i32 8}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @media_devnode_lock, !28, !"media_devnode_lock", i1 false, i1 false}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/mc/mc-devnode.c", i32 67, i32 10}
!33 = !{ptr @media_bus_type, !34, !"media_bus_type", i1 false, i1 false}
!34 = !{!"../drivers/media/mc/mc-devnode.c", i32 66, i32 24}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/mc/mc-devnode.c", i32 63, i32 2}
!37 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @media_devnode_release.__UNIQUE_ID_ddebug230, !36, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!40 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @media_devnode_fops, !42, !"media_devnode_fops", i1 false, i1 false}
!42 = !{!"../drivers/media/mc/mc-devnode.c", i32 197, i32 37}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/mc/mc-devnode.c", i32 193, i32 2}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @media_release.__UNIQUE_ID_ddebug231, !44, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!47 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/mc/mc-devnode.c", i32 299, i32 2}
!50 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @media_devnode_init._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @media_devnode_init._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/mc/mc-devnode.c", i32 303, i32 3}
!55 = !{ptr @media_devnode_init._entry.19, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @media_devnode_init._entry_ptr.21, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/media/mc/mc-devnode.c", i32 310, i32 3}
!59 = !{ptr @media_devnode_init._entry.22, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @media_devnode_init._entry_ptr.24, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{i64 2148961483, i64 2148961488, i64 2148961501, i64 2148961545, i64 2148961579, i64 2148961600}
